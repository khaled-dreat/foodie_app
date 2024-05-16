import 'package:flutter/material.dart';

import '../../../../../../../utils/constant/app_image.dart';
import '../../../../../data/models/m_today_new_available.dart';
import '../custom_home_list_header.dart';
import 'today_new_available_card.dart';

class TodayNewAvailableWidget extends StatelessWidget {
  const TodayNewAvailableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<TodayNewAvailableModel> todayNewAvailableModel = [
      TodayNewAvailableModel(
          image: Assets.svgChickenBiryani,
          title: "Chicken Biryani",
          description: "Ambrosia Hotel & Restaurant"),
      TodayNewAvailableModel(
          image: Assets.svgSauceTonkatsu,
          title: "Sauce Tonkatsu",
          description: "Handi Restaurant, Chittagong"),
      TodayNewAvailableModel(
          image: Assets.svgChickenKatsu,
          title: "Chicken Katsu",
          description: "Ambrosia Hotel & Restaurant"),
      TodayNewAvailableModel(
          image: Assets.svgDumpling,
          title: "Dumpling",
          description: "Ambrosia Hotel & Restaurant"),
    ];
    return Column(
      children: [
        const CustomHomeListHeader(
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
                return TodayNewAvailableCard(
                  title: e.title,
                  description: e.description,
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
