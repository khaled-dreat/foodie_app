import 'package:flutter/material.dart';

import '../../../../../../../utils/constant/app_image.dart';
import '../../../../../data/models/m_food.dart';
import '../custom_home_list_header.dart';
import 'today_new_available_card.dart';

class TodayNewAvailableWidget extends StatelessWidget {
  const TodayNewAvailableWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
            children: foodModel.map(
              (e) {
                return FoodCard(
                  title: e.name,
                  restaurant: "e.restaurant",
                  image: e.img,
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}
