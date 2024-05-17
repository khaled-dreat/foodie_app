import 'package:flutter/material.dart';
import 'package:foodie_app/features/home/presentation/pages/home/widgets/custom_home_list_header.dart';
import 'package:foodie_app/utils/theme/app_colors.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../../../utils/constant/app_image.dart';
import '../../../../../../utils/theme/app_text_style.dart';
import '../../../../data/models/m_restaurant.dart';
import '../../../../data/models/m_today_new_available.dart';
import '../../home/widgets/explore_restaurant_widget/custom_btn_book.dart';
import '../../home/widgets/explore_restaurant_widget/explore_restaurant_card.dart';
import 'restaurant_details_widget.dart';

class RestaurantDetailsViewBody extends StatelessWidget {
  const RestaurantDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<RestaurantModel> restaurantModel = [
      RestaurantModel(
          image: Assets.svgAmbrosiaHotelRestaurant,
          title: "Ambrosia Hotel & Restaurant",
          place: "Zakir Hossain Rd, Chittagong"),
      RestaurantModel(
          image: Assets.svgTavaRestaurant,
          title: "Tava Restaurant",
          place: "kazi Deiry, Taiger Pass Chittagong"),
      RestaurantModel(
          image: Assets.svgHaatkhola,
          title: "Haatkhola",
          place: "6 Surson Road, Chittagong")
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          const RestaurantDetailsWidget(),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.white),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: CustomListHeader(
                      color: AppColors.green,
                      title: "List other restaurant",
                      description: "check the menu at this restaurant"),
                ),
                Column(
                  children: restaurantModel.map(
                    (e) {
                      return OtherRestaurantCard(
                        image: e.image,
                        place: e.place,
                        title: e.title,
                      );
                    },
                  ).toList(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

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
      margin: EdgeInsets.all(10),
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
