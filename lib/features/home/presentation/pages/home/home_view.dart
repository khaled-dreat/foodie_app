import 'package:flutter/material.dart';
import 'package:foodie_app/utils/theme/app_colors.dart';
import 'widgets/custom_bottom_navigation_bar.dart';
import 'widgets/custom_home_appbar.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  static const String nameRoute = "HomeView";
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGray2,
      appBar: const CustomHomeAppBar(),
      body: const HomeViewBody(),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
