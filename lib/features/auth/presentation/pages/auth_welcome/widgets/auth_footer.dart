import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodie_app/utils/theme/app_text_style.dart';

import '../../../../../../utils/theme/app_colors.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter({
    super.key,
    required this.first,
    required this.second,
  });

  final String first, second;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: "By logging in or registering, you have agreed to",
          style: AppTextStyle.styleRegular13(context),
          children: <TextSpan>[
            TextSpan(
              text: " The Terms and Conditions ",
              style: AppTextStyle.styleRegular13(context)
                  .copyWith(color: AppColors.green),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print("object");
                },
            ),
            TextSpan(
                text: ' and ', style: AppTextStyle.styleRegular13(context)),
            TextSpan(
              text: "Privacy Policy",
              style: AppTextStyle.styleRegular13(context)
                  .copyWith(color: AppColors.green),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print("object");
                },
            ),
          ],
        ),
      ),
    );
  }
}
