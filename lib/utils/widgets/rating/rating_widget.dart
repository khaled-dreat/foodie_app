import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../constant/app_image.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_text_style.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    required this.rating,
  });

  final String rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.svgStarIcon),
        SizedBox(
          width: 4,
        ),
        Text(
          rating,
          style: AppTextStyle.styleBold14(context)
              .copyWith(color: AppColors.darkBlue),
        )
      ],
    );
  }
}
