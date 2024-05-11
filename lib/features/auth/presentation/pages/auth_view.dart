import 'package:flutter/material.dart';
import 'package:foodie_app/features/auth/presentation/pages/widgets/auth_welcome/auth_view_body.dart';

class AuthView extends StatelessWidget {
  static const String nameRoute = "AuthView";
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AuthViewBody(),
    );
  }
}
