import 'package:flutter/material.dart';
import 'package:foodie_app/features/search/presentation/pages/srh_view.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../../utils/constant/app_image.dart';
import '../../../../../../utils/theme/app_colors.dart';
import '../../../../../../utils/theme/app_text_style.dart';
import '../../home/widgets/explore_restaurant_widget/custom_btn_book.dart';

class RestaurantDetailsWidget extends StatelessWidget {
  const RestaurantDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: AppColors.white),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tava Restaurant",
              style:
                  AppTextStyle.styleSemiBold12(context).copyWith(fontSize: 20),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  Assets.svgMarker,
                  height: 20,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "kazi Deiry, Taiger Pass,Chittagong",
                  style: AppTextStyle.styleMedium12(context).copyWith(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Image.asset(Assets.svgTavaRestaurant2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RatingWidget(rating: "3.5"),
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.svgDeliveryIcon,
                    ),
                    SizedBox(
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
            ),
            //   SizedBox(
            //     width: MediaQuery.sizeOf(context).width,
            //     child: CustomBtnBook(
            //         title: "Booking",
            //         onPressed: () {},
            //         backgroundColor: AppColors.green,
            //         style: AppTextStyle.styleSemiBold12(context)
            //             .copyWith(color: AppColors.white)),
            //   )
          ],
        ),
      ),
    );
  }
}
