import 'package:flutter/material.dart';
import '../../../../../../utils/constant/app_image.dart';
import '../../../../../../utils/theme/app_text_style.dart';
import 'custom_my_card_food_count_btn.dart';

class CustomOrderCart extends StatelessWidget {
  const CustomOrderCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: Image.asset(
                  Assets.svgChickenBiryani,
                  fit: BoxFit.cover,
                )),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "pizza calzone european",
                  style: AppTextStyle.styleRegular13(context)
                      .copyWith(fontSize: 18),
                ),
                Text(
                  r"$64",
                  style: AppTextStyle.styleBold20(context),
                ),
                Text(
                  "14",
                  style: AppTextStyle.styleRegular13(context)
                      .copyWith(fontSize: 18),
                )
              ],
            ),
          ),
          const CustomMyCardFoodCountBtn()
        ],
      ),
    );
  }
}
