import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../utils/validators/app_validators.dart';
import '../../maneg/auth/auth_cubit.dart';
import 'custom_auth_text_form_field.dart';

class AuthFieldPass extends StatelessWidget {
  const AuthFieldPass({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit cAuth = context.read<AuthCubit>();
    return CustomAuthTextFormField(
      isPass: true,
      hintText: "**** **** ****",
      label: "Password",
      validator: AppValidators.checkPass,
      keyboardType: TextInputType.visiblePassword,
      onSaved: cAuth.userAuth.setPass,
    );
  }
}
