import 'package:flutter/material.dart';
import 'package:foodie_app/features/auth/presentation/pages/auth_welcome/widgets/auth_welcome_view_body.dart';

class AuthWelcomeView extends StatelessWidget {
  static const String nameRoute = "AuthWelcomeView";
  const AuthWelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthWelcomeViewBody(),
    );
  }
}
