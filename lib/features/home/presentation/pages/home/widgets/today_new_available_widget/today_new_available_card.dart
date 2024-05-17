import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../../../utils/constant/app_image.dart';
import '../../../../../../../utils/theme/app_text_style.dart';

class TodayNewAvailableCard extends StatelessWidget {
  const TodayNewAvailableCard({
    super.key,
    required this.image,
    required this.title,
    required this.place,
  });
  final String image, title, place;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 230,
      child: Card(
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
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: SvgPicture.asset(
                      Assets.svgMarker,
                      height: 14,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Text(
                      place,
                      style: AppTextStyle.styleMedium12(context),
                    ),
                  )
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
