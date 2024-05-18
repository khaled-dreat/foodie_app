import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../utils/constant/app_image.dart';
import '../../../../../utils/theme/app_colors.dart';
import '../../../../../utils/theme/app_text_style.dart';

class AccountSettingSection extends StatelessWidget {
  const AccountSettingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsets.all(10),
      child: Card(
        elevation: 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.svgAccountIcon,
              height: 25,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "Account setting",
              style: AppTextStyle.styleRegular13(context)
                  .copyWith(fontSize: 18, color: AppColors.darkGray),
            ),
            const SizedBox(
              width: 140,
            ),
            SvgPicture.asset(
              Assets.svgEditIcon,
              height: 23,
            ),
          ],
        ),
      ),
    );
  }
}
