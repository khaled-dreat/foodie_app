import 'package:flutter/material.dart';

import '../../../../../../utils/constant/app_image.dart';
import '../../../../../../utils/theme/app_colors.dart';
import '../../../../../../utils/theme/app_text_style.dart';

class CustomMyCardFoodCountBtn extends StatelessWidget {
  const CustomMyCardFoodCountBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 30,
          width: 100,
          decoration: BoxDecoration(
              color: AppColors.darkBlue,
              borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 20,
                width: 20,
                child: FloatingActionButton(
                  onPressed: () {},
                  mini: true,
                  backgroundColor: AppColors.silver,
                  shape: const CircleBorder(),
                  child: Icon(
                    Icons.add,
                    color: AppColors.white,
                    size: 18,
                  ),
                ),
              ),
              Text(
                "2",
                style: AppTextStyle.styleBold14(context),
              ),
              SizedBox(
                height: 20,
                width: 20,
                child: FloatingActionButton(
                  onPressed: () {
                    // إجراء عند الضغط على الزر
                  },
                  mini: true,
                  backgroundColor: AppColors.silver,
                  shape: const CircleBorder(),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 7),
                    child: Image.asset(
                      Assets.svgMinimize24dp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
