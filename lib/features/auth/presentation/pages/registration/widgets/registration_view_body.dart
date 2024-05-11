import 'package:flutter/material.dart';
import '../../widgets/custom_auth_text_form_field.dart';

class RegistrationViewBody extends StatelessWidget {
  const RegistrationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: const Column(
        children: [CustomAuthTextFormField()],
      ),
    );
  }
}
