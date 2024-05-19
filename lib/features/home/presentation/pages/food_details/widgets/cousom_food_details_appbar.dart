import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../../utils/constant/app_image.dart';
import '../../../../../../utils/theme/app_colors.dart';

class CousomFoodDetailsAppBar extends StatelessWidget {
  const CousomFoodDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Row(
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
          const SizedBox(
            width: 15,
          ),
          const Spacer(),
          SvgPicture.asset(Assets.svgUnSaveIcon),
        ],
      ),
    );
  }
}
