import 'package:flutter/material.dart';
import 'package:foodie_app/features/auth/presentation/pages/login/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  static const String nameRoute = "LoginView";
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginViewBody(),
    );
  }
}
