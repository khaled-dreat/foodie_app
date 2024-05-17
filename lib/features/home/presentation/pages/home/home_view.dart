import 'package:flutter/material.dart';
import 'package:foodie_app/utils/theme/app_colors.dart';
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
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(25), topLeft: Radius.circular(25)),
        child: BottomNavigationBar(
            selectedItemColor: AppColors.green,
            elevation: 15,
            backgroundColor: AppColors.white,
            currentIndex: 1,
            items: [
              BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.sticky_note_2_outlined,
                  size: 25,
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.person_outline_outlined,
                  size: 25,
                ),
              )
            ]),
      ),
    );
  }
}
