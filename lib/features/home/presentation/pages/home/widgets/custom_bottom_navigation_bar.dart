import 'package:flutter/material.dart';

import '../../../../../../utils/theme/app_colors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(25), topLeft: Radius.circular(25)),
      child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          selectedItemColor: AppColors.green,
          elevation: 15,
          backgroundColor: AppColors.white,
          currentIndex: currentIndex,
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
    );
  }
}
