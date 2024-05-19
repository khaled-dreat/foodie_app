import 'package:flutter/material.dart';

import '../../../../../../utils/theme/app_colors.dart';
import '../../../../../../utils/theme/app_text_style.dart';

class CustomBtnSelectSize extends StatelessWidget {
  const CustomBtnSelectSize({
    super.key,
    required this.isSelected,
    required this.title,
  });
  final bool isSelected;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 50,
      decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: isSelected ? AppColors.green : AppColors.charcoalGray),
      child: Text(
        title,
        style: AppTextStyle.styleRegular13(context).copyWith(
            fontSize: 16,
            color: isSelected ? AppColors.white : AppColors.darkBlue),
      ),
    );
  }
}
