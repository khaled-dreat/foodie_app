import 'package:flutter/material.dart';

import '../../../../../../utils/theme/app_text_style.dart';

class AuthTextWidget extends StatelessWidget {
  const AuthTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        "Welcome",
        style: AppTextStyle.styleSemiBold16(context).copyWith(fontSize: 24),
      ),
      SizedBox(
        height: 25,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Text(
          "Before enjoying Foodmedia services Please register first",
          textAlign: TextAlign.center,
          style: AppTextStyle.styleRegular13(context).copyWith(fontSize: 14),
        ),
      ),
    ]);
  }
}
