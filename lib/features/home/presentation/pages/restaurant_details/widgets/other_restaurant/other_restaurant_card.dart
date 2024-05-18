import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../../../utils/constant/app_image.dart';
import '../../../../../../../utils/theme/app_colors.dart';
import '../../../../../../../utils/theme/app_text_style.dart';
import '../../../home/widgets/explore_restaurant_widget/custom_btn_book.dart';

class OtherRestaurantCard extends StatelessWidget {
  const OtherRestaurantCard({
    super.key,
    required this.image,
    required this.title,
    required this.place,
  });
  final String image, title, place;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.platinumGray)),
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
                width: MediaQuery.sizeOf(context).width - 150,
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
                    CustomBtnBook(
                        title: "Check",
                        onPressed: () {},
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
    );
  }
}
