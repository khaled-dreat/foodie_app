import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../../utils/constant/app_image.dart';
import '../../../../../utils/theme/app_colors.dart';
import '../../../../../utils/theme/app_text_style.dart';
import '../../../../../utils/widgets/images/image_profile.dart';

class NotificationSection extends StatelessWidget {
  const NotificationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: const EdgeInsets.all(10),
      child: Card(
        elevation: 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ImageProfile(
              height: 45,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Khaled Dreat",
                  style: AppTextStyle.styleSemiBold16(context),
                ),
                Text(
                  "dreatkhaled@gmail.com",
                  style: AppTextStyle.styleMedium10(context),
                )
              ],
            ),
            const SizedBox(
              width: 100,
            ),
            Container(
              height: 100,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.lightGray2,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(Assets.svgNotfiction),
            )
          ],
        ),
      ),
    );
  }
}
