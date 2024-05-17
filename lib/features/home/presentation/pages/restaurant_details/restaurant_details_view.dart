import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodie_app/utils/constant/app_image.dart';
import 'package:foodie_app/utils/theme/app_colors.dart';
import 'package:foodie_app/utils/theme/app_text_style.dart';
import 'package:svg_flutter/svg_flutter.dart';

class RestaurantDetailsView extends StatelessWidget {
  static const String nameRoute = "RestaurantDetailsView";
  const RestaurantDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.charcoalGray,
      appBar: HomeDetailsAppBar(),
      body: RestaurantDetailsViewBody(),
    );
  }
}

class HomeDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Restaurant Details",
        style: AppTextStyle.styleSemiBold16(context)
            .copyWith(color: AppColors.white),
      ),
      elevation: 5,
      backgroundColor: AppColors.green,
      shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}

class RestaurantDetailsViewBody extends StatelessWidget {
  const RestaurantDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tava Restaurant",
                  style: AppTextStyle.styleSemiBold12(context)
                      .copyWith(fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.svgMarker,
                      height: 18,
                    ),
                    SizedBox(
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
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(Assets.svgOpenHouseIcon),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Open today",
                                style: AppTextStyle.styleMedium12(context),
                              )
                            ],
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {},
                            child: Row(
                              children: [
                                SvgPicture.asset(Assets.svgVisitRestaurantIcon),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Visit the Restaurant",
                                  style: AppTextStyle.styleMedium12(context)
                                      .copyWith(color: AppColors.skyBlue),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "10:00 AM - 12:00 PM",
                        style: AppTextStyle.styleSemiBold12(context),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
