import 'package:flutter/material.dart';
import 'package:foodie_app/features/search/presentation/pages/srh_view.dart';
import 'other_restaurant/other_restaurant_widget.dart';
import 'restaurant_details_widget.dart';

class RestaurantDetailsViewBody extends StatelessWidget {
  const RestaurantDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          const RestaurantDetailsWidget(),
          const SizedBox(
            height: 20,
          ),
          OtherRestaurantWidget()
        ],
      ),
    );
  }
}
