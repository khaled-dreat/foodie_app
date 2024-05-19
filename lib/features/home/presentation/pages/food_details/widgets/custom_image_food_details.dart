import 'package:flutter/material.dart';

import '../../../../../../utils/constant/app_image.dart';

class CustomImageFoodDetails extends StatelessWidget {
  const CustomImageFoodDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.amber,
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(Assets.svgChickenKatsu)),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
    );
  }
}
