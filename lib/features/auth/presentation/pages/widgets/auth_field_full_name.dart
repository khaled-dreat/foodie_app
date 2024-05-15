import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../utils/validators/app_validators.dart';
import '../../maneg/auth/auth_cubit.dart';
import 'custom_auth_text_form_field.dart';

class AuthFieldFullName extends StatelessWidget {
  const AuthFieldFullName({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit cAuth = context.read<AuthCubit>();
    return CustomAuthTextFormField(
      isPass: false,
      hintText: "Enter your full name",
      label: "Full Name",
      validator: AppValidators.checkFullName,
      onSaved: cAuth.userAuth.setFullName,
    );
  }
}
