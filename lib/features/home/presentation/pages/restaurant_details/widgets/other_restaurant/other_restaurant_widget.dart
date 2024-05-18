import 'package:flutter/material.dart';
import '../../../../../../../utils/constant/app_image.dart';
import '../../../../../../../utils/theme/app_colors.dart';
import '../../../../../data/models/m_restaurant.dart';
import '../../../home/widgets/custom_home_list_header.dart';
import 'other_restaurant_card.dart';

class OtherRestaurantWidget extends StatelessWidget {
  const OtherRestaurantWidget({
    super.key,
  });

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
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: AppColors.white),
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
    );
  }
}
