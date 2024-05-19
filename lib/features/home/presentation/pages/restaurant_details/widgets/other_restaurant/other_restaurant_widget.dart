import 'package:flutter/material.dart';
import 'package:foodie_app/features/home/presentation/pages/home/widgets/today_new_available_widget/today_new_available_card.dart';
import '../../../../../../../utils/constant/app_image.dart';
import '../../../../../../../utils/theme/app_colors.dart';
import '../../../../../../../utils/widgets/recent_keywords_widget/recent_keywords_widget.dart';
import '../../../../../data/models/m_food.dart';

class OtherRestaurantWidget extends StatelessWidget {
  const OtherRestaurantWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> recentKeywords = [
      "Burger",
      "Sandwich",
      "Pizza",
      "Sandwich",
    ];
    List<FoodModel> foodModel = [
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
      FoodModel(
          image: Assets.svgChickenBiryani,
          title: "Chicken Biryani",
          restaurant: "Ambrosia Hotel & Restaurant"),
      FoodModel(
          image: Assets.svgSauceTonkatsu,
          title: "Sauce Tonkatsu",
          restaurant: "Handi Restaurant, Chittagong"),
    ];

    return Container(
      height: 600,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: AppColors.white),
      child: Column(
        children: [
          RecentKeywordsWidget(recentKeywords: recentKeywords),
          Expanded(
            child: GridView.builder(
              shrinkWrap: false,
              itemCount: foodModel.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 250),
              itemBuilder: (context, index) => FoodCard(
                  image: foodModel.elementAt(index).image,
                  title: foodModel.elementAt(index).title,
                  restaurant: foodModel.elementAt(index).restaurant),
            ),
          ),
          //  Padding(
          //    padding: const EdgeInsets.only(left: 15),
          //    child: CustomListHeader(
          //        color: AppColors.green,
          //        title: "List other restaurant",
          //        description: "check the menu at this restaurant"),
          //  ),
          //  Column(
          //    children: restaurantModel.map(
          //      (e) {
          //        return OtherRestaurantCard(
          //          image: e.image,
          //          place: e.place,
          //          title: e.title,
          //        );
          //      },
          //    ).toList(),
          //  )
        ],
      ),
    );
  }
}
