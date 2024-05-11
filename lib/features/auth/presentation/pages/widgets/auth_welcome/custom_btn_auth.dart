import 'package:flutter/material.dart';

import '../../../../../../utils/theme/app_colors.dart';
import '../../../../../../utils/theme/app_text_style.dart';

class CustomBtnAuth extends StatelessWidget {
  const CustomBtnAuth({
    super.key,
    required this.isLogin,
    required this.title,
    required this.onPressed,
  });
  final bool isLogin;
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 310,
      height: 65,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: isLogin ? AppColors.lightTeal : AppColors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          onPressed: onPressed,
          child: Text(
            title,
            style: isLogin
                ? AppTextStyle.styleBold14(context)
                    .copyWith(color: AppColors.everGreen)
                : AppTextStyle.styleBold14(context),
          )),
    );
  }
}
