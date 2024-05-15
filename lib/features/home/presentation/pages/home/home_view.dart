import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:foodie_app/utils/constant/app_image.dart';
import 'package:foodie_app/utils/theme/app_colors.dart';
import 'package:foodie_app/utils/theme/app_text_style.dart';
import 'package:foodie_app/utils/widgets/images/image_profile.dart';
import 'package:svg_flutter/svg_flutter.dart';

class HomeView extends StatelessWidget {
  static const String nameRoute = "HomeView";
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomHomeAppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: CoutomTextFormSrh(),
          )
        ],
      ),
    );
  }
}

class CoutomTextFormSrh extends StatelessWidget {
  const CoutomTextFormSrh({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          filled: true,
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.silver,
            size: 25,
          ),
          hintText: "Search",
          hintStyle: AppTextStyle.styleRegular13(context)
              .copyWith(color: AppColors.silver, fontSize: 14),
          fillColor: AppColors.silverGray,
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
          border: outlineInputBorder()),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: Colors.transparent));
  }
}

class CustomHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(15),
        child: SvgPicture.asset(
          Assets.svgMune,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: ImageProfile(),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
