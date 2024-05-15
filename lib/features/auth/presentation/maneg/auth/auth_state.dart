part of 'auth_cubit.dart';

@immutable
class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthFailure extends AuthState {
  final String errMessage;

  AuthFailure({required this.errMessage});
}

class AuthGoogleLoading extends AuthState {}

class AuthGoogleSuccess extends AuthState {}

class AuthGoogleFailure extends AuthState {
  final String errMessage;

  AuthGoogleFailure({required this.errMessage});
}

class AuthSuccess extends AuthState {}
