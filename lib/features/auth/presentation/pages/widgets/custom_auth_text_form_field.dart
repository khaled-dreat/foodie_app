import 'package:flutter/material.dart';
import 'package:foodie_app/utils/theme/app_text_style.dart';

import '../../../../../utils/theme/app_colors.dart';

class CustomAuthTextFormField extends StatelessWidget {
  const CustomAuthTextFormField({
    super.key,
    required this.hintText,
    required this.label,
    required this.isPass,
  });
  final String hintText, label;
  final bool isPass;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            label,
            style: AppTextStyle.styleSemiBold16(context),
          ),
        ),
        TextFormField(
            obscureText: isPass,
            obscuringCharacter: '*',
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: AppTextStyle.styleRegular13(context),
              focusedBorder: outlineInputBorder(),
              enabledBorder: outlineInputBorder(),
            )),
      ],
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: AppColors.silver));
  }
}
