import 'package:flutter/material.dart';
import '../../../../../../utils/constant/app_image.dart';
import '../../../../../../utils/theme/app_colors.dart';
import '../../../../../../utils/theme/app_text_style.dart';
import '../../../../../../utils/widgets/information_widget/information_widget.dart';
import '../../home/widgets/explore_restaurant_widget/custom_btn_book.dart';
import 'custom_btn_select_size.dart';
import 'custom_food_count_btn.dart';

class FoodDetailsWdget extends StatelessWidget {
  const FoodDetailsWdget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Text(
            "Burger Bistro",
            style: AppTextStyle.styleBold20(context),
          ),
          Row(
            children: [
              Image.asset(
                Assets.svgEllipseLogo,
                height: 25,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "Rose Garden",
                style: AppTextStyle.styleRegular13(context)
                    .copyWith(color: AppColors.darkBlue),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const InformationWidget(),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.",
            style: AppTextStyle.styleRegular13(context),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "SIZE:",
                style:
                    AppTextStyle.styleRegular13(context).copyWith(fontSize: 16),
              ),
              const CustomBtnSelectSize(
                isSelected: false,
                title: r"10'",
              ),
              const CustomBtnSelectSize(
                title: "14'",
                isSelected: true,
              ),
              const CustomBtnSelectSize(
                title: "16'",
                isSelected: false,
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomFoodCountBtn(),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 60,
                  child: CustomBtn(
                      title: "ADD TO CATR",
                      onPressed: () {},
                      backgroundColor: AppColors.green,
                      style: AppTextStyle.styleBold14(context)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
