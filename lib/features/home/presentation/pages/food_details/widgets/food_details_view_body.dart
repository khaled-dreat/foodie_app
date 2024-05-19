import 'package:flutter/material.dart';

import 'cousom_food_details_appbar.dart';
import 'custom_image_food_details.dart';
import 'food_details_wdget.dart';

class FoodDetailsViewBody extends StatelessWidget {
  const FoodDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Column(
          children: [
            Expanded(child: CustomImageFoodDetails()),
            FoodDetailsWdget(),
          ],
        ),
        CousomFoodDetailsAppBar(),
      ],
    );
  }
}
