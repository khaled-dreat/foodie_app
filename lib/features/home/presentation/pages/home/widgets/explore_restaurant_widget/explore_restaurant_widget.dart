import 'package:flutter/material.dart';

import '../../../../../../../utils/constant/app_image.dart';
import '../../../../../data/models/m_restaurant.dart';
import '../custom_home_list_header.dart';
import '../home_view_body.dart';
import 'explore_restaurant_card.dart';

class ExploreRestaurantWidget extends StatelessWidget {
  const ExploreRestaurantWidget({super.key});

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
    return Column(
      children: [
        const CustomListHeader(
            title: "Explore Restaurant",
            description: "Check your city Near by Restaurant"),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: restaurantModel.map(
            (e) {
              return ExploreRestaurantCard(
                image: e.image,
                place: e.place,
                title: e.title,
              );
            },
          ).toList(),
        )
      ],
    );
  }
}
