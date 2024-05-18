import 'package:flutter/material.dart';

import '../../../../../../../utils/constant/app_image.dart';
import '../../../../../data/models/m_food.dart';
import '../custom_home_list_header.dart';
import 'today_new_available_card.dart';

class TodayNewAvailableWidget extends StatelessWidget {
  const TodayNewAvailableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<FoodModel> todayNewAvailableModel = [
      FoodModel(
          image: Assets.svgChickenBiryani,
          title: "Chicken Biryani",
          restaurant: "Ambrosia Hotel & Restaurant"),
      FoodModel(
          image: Assets.svgSauceTonkatsu,
          title: "Sauce Tonkatsu",
          restaurant: "Handi Restaurant, Chittagong"),
      FoodModel(
          image: Assets.svgChickenKatsu,
          title: "Chicken Katsu",
          restaurant: "Ambrosia Hotel & Restaurant"),
      FoodModel(
          image: Assets.svgDumpling,
          title: "Dumpling",
          restaurant: "Ambrosia Hotel & Restaurant"),
    ];
    return Column(
      children: [
        const CustomListHeader(
          title: "Today New Arivable",
          description: "Best of the today  food list update",
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: todayNewAvailableModel.map(
              (e) {
                return FoodCard(
                  title: e.title,
                  restaurant: e.restaurant,
                  image: e.image,
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}
