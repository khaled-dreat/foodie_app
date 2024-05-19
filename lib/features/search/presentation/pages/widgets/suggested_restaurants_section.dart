import 'package:flutter/material.dart';
import '../../../../../utils/constant/app_image.dart';
import '../../../../../utils/theme/app_colors.dart';
import '../../../../../utils/theme/app_text_style.dart';
import '../../../../home/data/models/m_restaurant.dart';
import 'suggested_restaurants_widget.dart';

class SuggestedRestaurantsSection extends StatelessWidget {
  const SuggestedRestaurantsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<RestaurantModel> restaurantModel = [
      RestaurantModel(
          image: Assets.svgAmbrosiaHotelRestaurant,
          title: "Ambrosia Hotel & Restaurant",
          rating: "4.5",
          place: "Zakir Hossain Rd, Chittagong"),
      RestaurantModel(
          rating: "4.1",
          image: Assets.svgTavaRestaurant,
          title: "Tava Restaurant",
          place: "kazi Deiry, Taiger Pass Chittagong"),
      RestaurantModel(
          image: Assets.svgHaatkhola,
          rating: "3.5",
          title: "Haatkhola",
          place: "6 Surson Road, Chittagong")
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Suggested Restaurants",
          style: AppTextStyle.styleRegular13(context)
              .copyWith(fontSize: 20, color: AppColors.darkBlue),
        ),
        ListView.separated(
          padding: EdgeInsets.only(top: 15),
          shrinkWrap: true,
          itemCount: restaurantModel.length,
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
          itemBuilder: (BuildContext context, int index) {
            return SuggestedRestaurantsWidget(
                image: restaurantModel.elementAt(index).image,
                title: restaurantModel.elementAt(index).title,
                rating: restaurantModel.elementAt(index).rating);
          },
        ),
      ],
    );
  }
}
