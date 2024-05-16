import 'package:flutter/material.dart';
import 'package:foodie_app/utils/theme/app_colors.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../../utils/constant/app_image.dart';
import '../../../../../../utils/widgets/images/image_profile.dart';

class CustomHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.lightGray2,
      leading: Padding(
        padding: const EdgeInsets.all(18),
        child: SvgPicture.asset(
          Assets.svgMune,
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 15),
          child: ImageProfile(),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
