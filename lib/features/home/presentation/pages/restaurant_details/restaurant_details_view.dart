import 'package:flutter/material.dart';
import 'package:foodie_app/utils/theme/app_colors.dart';
import 'widgets/restaurant_details_app_bar.dart';
import 'widgets/restaurant_details_view_body.dart';

class RestaurantDetailsView extends StatelessWidget {
  static const String nameRoute = "RestaurantDetailsView";
  const RestaurantDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.charcoalGray,
      appBar: const RestaurantDetailsAppBar(),
      body: const RestaurantDetailsViewBody(),
    );
  }
}
