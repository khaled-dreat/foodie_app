import 'package:google_sign_in/google_sign_in.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../data/models/m_user_auth.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  UserAuthModel userAuth = UserAuthModel();
  String currentPass = '';

  void setCurrentPass(String value) {
    currentPass = value;
  }

  // ******************** Eye ********************

  bool isNotShowPass = true;

  Future<void> saveUserData({
    required String email,
    required String fullName,
  }) async {
    emit(AuthGoogleLoading());
    String? userID = firebaseAuth.currentUser?.uid;

    var usersCollection = FirebaseFirestore.instance.collection('users');
    try {
      await usersCollection.doc(userID).set({
        'userID': userID,
        'email': email,
        'fullName': fullName,
      });
      emit(AuthGoogleSuccess());
    } catch (e) {
      emit(AuthGoogleFailure(errMessage: e.toString()));
    }
  }

  // * Register
  Future<User?> authMethod({bool isSignIn = true}) async {
    try {
      emit(AuthLoading());
      UserCredential resultUser = isSignIn
          ? await firebaseAuth.signInWithEmailAndPassword(
              email: userAuth.email!, password: userAuth.password!)
          : await firebaseAuth.createUserWithEmailAndPassword(
              email: userAuth.email!, password: userAuth.password!);
      if (resultUser.user != null) {
        emit(AuthSuccess());
        saveUserData(email: userAuth.email!, fullName: userAuth.fullName!);
        return resultUser.user!;
      } else {
        emit(AuthFailure(errMessage: "AppLangKey.notAccount"));
        return null;
      }
    } on SocketException {
      emit(AuthFailure(errMessage: "AppLangKey.noInternet"));
    } on FirebaseAuthException catch (error) {
      emit(AuthFailure(errMessage: error.message ?? ""));
    } catch (error) {
      emit(AuthFailure(errMessage: error.toString()));
    }
    return null;
  }

  // * Forgot pass
  Future<void> resetPass() async {
    try {
      await firebaseAuth.sendPasswordResetEmail(email: userAuth.email!);
    } on SocketException {
      emit(AuthFailure(errMessage: "AppLangKey.noInternet"));
    } on FirebaseAuthException catch (error) {
      emit(AuthFailure(errMessage: error.message ?? ""));
    } catch (error) {
      emit(AuthFailure(errMessage: error.toString()));
    }
  }

  Future<void> signInWithGoogle() async {
    // Trigger the authentication flow
    try {
      emit(AuthLoading());

      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        return null;
      }

      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Once signed in, return the UserCredential
      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      final User? user = userCredential.user;
      saveUserData(
        fullName: user!.displayName!,
        email: user.email!,
      );
      emit(AuthSuccess());
    } on Exception catch (e) {
      emit(AuthFailure(errMessage: e.toString()));
    }
  }

  // * signOut
  Future<void> signOut() async {
    firebaseAuth.signOut();
  }
}
