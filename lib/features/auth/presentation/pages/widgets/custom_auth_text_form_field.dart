import 'package:flutter/material.dart';
import 'package:foodie_app/utils/theme/app_text_style.dart';

import '../../../../../utils/theme/app_colors.dart';

class CustomAuthTextFormField extends StatefulWidget {
  const CustomAuthTextFormField({
    super.key,
    required this.hintText,
    required this.label,
    required this.isPass,
    this.onSaved,
    this.validator,
    this.keyboardType,
  });
  final String hintText, label;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;

  final bool isPass;

  @override
  State<CustomAuthTextFormField> createState() =>
      _CustomAuthTextFormFieldState();
}

class _CustomAuthTextFormFieldState extends State<CustomAuthTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            widget.label,
            style: AppTextStyle.styleSemiBold16(context),
          ),
        ),
        TextFormField(
            validator: widget.validator,
            keyboardType: widget.keyboardType,
            obscureText: widget.isPass,
            obscuringCharacter: '*',
            onSaved: widget.onSaved,
            decoration: InputDecoration(
              hintText: widget.hintText,
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
