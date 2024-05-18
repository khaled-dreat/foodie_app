import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodie_app/utils/theme/app_colors.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../../../utils/constant/app_image.dart';
import '../../../../../../../utils/theme/app_text_style.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    super.key,
    required this.image,
    required this.title,
    required this.restaurant,
  });
  final String image, title, restaurant;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 250,
      child: Card(
        elevation: 3,
        //  color: AppColors.platinumGray,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  clipBehavior: Clip.antiAlias,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(25)),
                  child: Image.asset(image)),
              Text(
                title,
                style: AppTextStyle.styleSemiBold16(context),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      restaurant,
                      style: AppTextStyle.styleMedium12(context),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 30,
                      alignment: AlignmentDirectional.center,
                      decoration: ShapeDecoration(
                        color: AppColors.green,
                        shape: const OvalBorder(),
                      ),
                      child: Icon(
                        Icons.add,
                        size: 20,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
