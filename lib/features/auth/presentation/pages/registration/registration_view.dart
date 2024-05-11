import 'package:flutter/material.dart';
import 'package:foodie_app/features/auth/presentation/pages/registration/widgets/registration_view_body.dart';

class RegistrationView extends StatelessWidget {
  static const String nameRoute = "RegistrationView";
  const RegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RegistrationViewBody(),
    );
  }
}
