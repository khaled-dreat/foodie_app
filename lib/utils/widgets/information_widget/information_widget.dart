import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../constant/app_image.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_text_style.dart';
import '../rating/rating_widget.dart';

class InformationWidget extends StatelessWidget {
  const InformationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const RatingWidget(rating: "3.5"),
        Row(
          children: [
            SvgPicture.asset(
              Assets.svgDeliveryIcon,
            ),
            const SizedBox(
              width: 3,
            ),
            Text("Free", style: AppTextStyle.styleRegular13(context))
          ],
        ),
        Row(
          children: [
            SvgPicture.asset(
              Assets.svgClockIcon,
              height: 18,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "20 min",
              style: AppTextStyle.styleRegular13(context)
                  .copyWith(color: AppColors.darkBlue),
            ),
          ],
        ),
      ],
    );
  }
}
