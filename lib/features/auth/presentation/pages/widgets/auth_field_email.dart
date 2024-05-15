import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie_app/utils/validators/app_validators.dart';

import '../../maneg/auth/auth_cubit.dart';
import 'custom_auth_text_form_field.dart';

class AuthFieldEmail extends StatelessWidget {
  const AuthFieldEmail({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit cAuth = context.read<AuthCubit>();
    return CustomAuthTextFormField(
      isPass: false,
      hintText: "Eg namaemail@emailkamu.com",
      label: "Email address",
      validator: AppValidators.isEmail,
      keyboardType: TextInputType.emailAddress,
      onSaved: cAuth.userAuth.setEmail,
    );
  }
}
