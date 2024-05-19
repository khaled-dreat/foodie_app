import 'package:flutter/material.dart';
import '../../../../../utils/theme/app_colors.dart';
import '../../../../../utils/theme/app_text_style.dart';
import '../../../../../utils/widgets/rating/rating_widget.dart';

class SuggestedRestaurantsWidget extends StatelessWidget {
  const SuggestedRestaurantsWidget({
    super.key,
    required this.image,
    required this.title,
    required this.rating,
  });
  final String image, title, rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 70,
          width: 90,
          child: Image.asset(
            image,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTextStyle.styleRegular13(context)
                  .copyWith(fontSize: 16, color: AppColors.darkBlue),
            ),
            SizedBox(
              height: 5,
            ),
            RatingWidget(rating: rating),
          ],
        )
      ],
    );
  }
}
