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
        id: 1,
        name: "Burger",
        img: Assets.svgChickenBiryani,
        active: true,
        price: 5.99,
        isFreeDelivery: true,
        details: "Delicious beef burger with cheese and lettuce",
        rating: 4.5,
        size: "Medium",
        restaurantID: 101,
        offers: ["Buy 1 Get 1 Free", "20% off on weekends"],
      ),
      FoodModel(
        id: 2,
        name: "Pizza",
        img: Assets.svgChickenBiryani,
        active: true,
        price: 8.99,
        isFreeDelivery: false,
        details: "Pepperoni pizza with extra cheese",
        rating: 4.7,
        size: "Large",
        restaurantID: 102,
        offers: ["Free drink with purchase", "10% off on Mondays"],
      ),
      FoodModel(
        id: 3,
        name: "Pasta",
        img: Assets.svgChickenBiryani,
        active: false,
        price: 7.99,
        isFreeDelivery: true,
        details: "Creamy Alfredo pasta with chicken",
        rating: 4.3,
        size: "Small",
        restaurantID: 103,
        offers: ["Free garlic bread", "15% off for students"],
      ),
      FoodModel(
        id: 4,
        name: "Salad",
        img: Assets.svgChickenBiryani,
        active: true,
        price: 4.99,
        isFreeDelivery: true,
        details: "Fresh garden salad with vinaigrette",
        rating: 4.2,
        size: "Large",
        restaurantID: 104,
        offers: ["Free dressing on the side", "Buy 2 Get 1 Free"],
      ),
      FoodModel(
        id: 5,
        name: "Sushi",
        img: Assets.svgChickenBiryani,
        active: true,
        price: 12.99,
        isFreeDelivery: false,
        details: "Assorted sushi platter with wasabi and soy sauce",
        rating: 4.8,
        size: "Medium",
        restaurantID: 105,
        offers: ["Free miso soup", "20% off for new customers"],
      ),
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
                  image: foodModel.elementAt(index).img,
                  title: foodModel.elementAt(index).name,
                  restaurant: "restaurant"),
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
