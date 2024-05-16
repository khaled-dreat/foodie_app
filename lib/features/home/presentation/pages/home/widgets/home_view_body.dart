import 'package:flutter/material.dart';
import 'package:foodie_app/features/home/presentation/pages/home/widgets/custom_home_list_header.dart';
import 'package:foodie_app/utils/constant/app_image.dart';
import 'coutom_text_form_srh.dart';
import 'pest_brand.dart';
import 'today_new_available_widget/today_new_available_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const CoutomTextFormSrh(),
          const SizedBox(
            height: 30,
          ),
          const PestBrand(),
          const SizedBox(
            height: 30,
          ),
          const TodayNewAvailableWidget(),
          const SizedBox(
            height: 30,
          ),
          const CustomHomeListHeader(
              title: "Explore Restaurant",
              description: "Check your city Near by Restaurant"),
          SizedBox(
            height: 100,
            child: Card(
              child: Row(
                children: [Image.asset(Assets.svgAmbrosiaHotelRestaurant)],
              ),
            ),
          )
        ],
      ),
    );
  }
}
