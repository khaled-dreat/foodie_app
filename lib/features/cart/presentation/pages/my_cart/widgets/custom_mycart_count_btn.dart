import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../../utils/constant/app_image.dart';
import '../../../../../../utils/theme/app_colors.dart';
import '../../../../../../utils/theme/app_text_style.dart';

class CustomMyCartCountBtn extends StatelessWidget {
  const CustomMyCartCountBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          r"$32",
          style: AppTextStyle.styleRegular13(context)
              .copyWith(fontSize: 28, color: AppColors.darkBlue),
        ),
        Container(
          height: 50,
          width: 130,
          decoration: BoxDecoration(
              color: AppColors.darkBlue,
              borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: FloatingActionButton(
                  onPressed: () {},
                  mini: true,
                  backgroundColor: AppColors.silver,
                  shape: const CircleBorder(),
                  child: Icon(
                    Icons.add,
                    color: AppColors.white,
                  ),
                ),
              ),
              Text(
                "2",
                style: AppTextStyle.styleBold14(context),
              ),
              SizedBox(
                height: 30,
                width: 30,
                child: FloatingActionButton(
                  onPressed: () {
                    // إجراء عند الضغط على الزر
                  },
                  mini: true,
                  backgroundColor: AppColors.silver,
                  shape: const CircleBorder(),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 11),
                    child: SvgPicture.asset(height: 50, Assets.svgMinimizeIcon),
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
