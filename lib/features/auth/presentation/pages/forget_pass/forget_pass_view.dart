import 'package:flutter/material.dart';
import 'package:foodie_app/features/auth/presentation/pages/forget_pass/widgets/forget_pass_view_body.dart';

class ForgetPassView extends StatelessWidget {
  static const String nameRoute = "ForgetPassView";
  const ForgetPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ForgetPassViewBody(),
    );
  }
}
