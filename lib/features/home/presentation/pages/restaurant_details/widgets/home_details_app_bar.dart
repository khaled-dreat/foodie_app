import 'package:flutter/material.dart';

import '../../../../../../utils/theme/app_colors.dart';
import '../../../../../../utils/theme/app_text_style.dart';

class HomeDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Restaurant Details",
        style: AppTextStyle.styleSemiBold16(context)
            .copyWith(color: AppColors.white),
      ),
      //  elevation: 5,
      backgroundColor: AppColors.green,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(AppBar().preferredSize.height / 1.2);
}
