import 'package:flutter/material.dart';
import 'package:foodie_app/features/search/presentation/pages/srh_view.dart';
import 'package:foodie_app/utils/route/app_route.dart';
import '../../../../../../utils/widgets/text_form_field/coutom_text_form_srh.dart';
import 'explore_restaurant_widget/explore_restaurant_widget.dart';
import 'pest_brand.dart';
import 'today_new_available_widget/today_new_available_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CoutomTextFormSrh(
              onTap: () {
                AppRoute.go(context, SrhView.nameRoute);
              },
              readOnly: true,
            ),
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
            const ExploreRestaurantWidget()
          ],
        ),
      ),
    );
  }
}
