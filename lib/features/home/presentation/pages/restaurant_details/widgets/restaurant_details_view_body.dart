import 'package:flutter/material.dart';
import 'other_restaurant/other_restaurant_widget.dart';
import 'restaurant_details_widget.dart';

class RestaurantDetailsViewBody extends StatelessWidget {
  const RestaurantDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          RestaurantDetailsWidget(),
          SizedBox(
            height: 20,
          ),
          OtherRestaurantWidget()
        ],
      ),
    );
  }
}
