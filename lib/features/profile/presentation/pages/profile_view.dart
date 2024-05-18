import 'package:flutter/material.dart';
import 'package:foodie_app/utils/theme/app_colors.dart';
import 'widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  static const String nameRoute = "ProfileView";
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGray2,
      body: const ProfileViewBody(),
    );
  }
}
