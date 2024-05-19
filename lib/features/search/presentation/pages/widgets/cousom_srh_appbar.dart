import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../utils/constant/app_image.dart';
import '../../../../../utils/theme/app_colors.dart';
import '../../../../../utils/theme/app_text_style.dart';

class CousomSrhAppBar extends StatelessWidget {
  const CousomSrhAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.lightGray2,
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.chevron_left_rounded),
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          "Search",
          style: AppTextStyle.styleRegular13(context)
              .copyWith(fontSize: 17, color: AppColors.darkBlue),
        ),
        Spacer(),
        Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            Container(
              height: 100,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.darkBlue,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(Assets.svgCartIcon),
            ),
            Positioned(
              bottom: 55,
              child: Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.orange,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  "2",
                  style: TextStyle(color: AppColors.white, fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
