import 'package:flutter/material.dart';

import 'widgets/food_details_view_body.dart';

class FoodDetailsView extends StatelessWidget {
  static const String nameRoute = "FoodDetailsView";
  const FoodDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FoodDetailsViewBody(),
    );
  }
}
