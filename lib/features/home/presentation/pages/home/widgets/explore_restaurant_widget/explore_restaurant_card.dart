import 'package:flutter/material.dart';
import 'package:foodie_app/features/home/presentation/pages/restaurant_details/restaurant_details_view.dart';
import 'package:foodie_app/features/home/presentation/pages/restaurant_details/widgets/restaurant_details_app_bar.dart';
import 'package:foodie_app/utils/route/app_route.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../../../utils/constant/app_image.dart';
import '../../../../../../../utils/theme/app_colors.dart';
import '../../../../../../../utils/theme/app_text_style.dart';
import '../home_view_body.dart';
import 'custom_btn_book.dart';

class ExploreRestaurantCard extends StatelessWidget {
  const ExploreRestaurantCard({
    super.key,
    required this.image,
    required this.title,
    required this.place,
  });
  final String image, title, place;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(image),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyle.styleSemiBold16(context),
                ),
                SizedBox(
                  width: 240,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: SvgPicture.asset(
                          Assets.svgMarker,
                          height: 14,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          place,
                          style: AppTextStyle.styleRegular13(context)
                              .copyWith(fontSize: 10),
                        ),
                      ),
                      CustomBtn(
                          title: "Book",
                          onPressed: () {
                            AppRoute.go(
                                context, RestaurantDetailsView.nameRoute);
                          },
                          backgroundColor: AppColors.green,
                          style: AppTextStyle.styleSemiBold12(context)
                              .copyWith(color: AppColors.white))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
