import 'package:flutter/material.dart';

import '../../../../../utils/theme/app_colors.dart';
import '../../../../../utils/theme/app_text_style.dart';
import '../../../../home/presentation/pages/home/widgets/explore_restaurant_widget/custom_btn_book.dart';
import 'account_setting_section.dart';
import 'app_settings_section.dart';
import 'notification_section.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        const NotificationSection(),
        const AccountSettingSection(),
        const AppSettingsSection(),
        const SizedBox(
          height: 80,
        ),
        SizedBox(
          width: 150,
          child: CustomBtn(
              title: "Logout",
              onPressed: () {},
              backgroundColor: AppColors.crimson,
              style: AppTextStyle.styleSemiBold16(context)
                  .copyWith(color: AppColors.white)),
        )
      ],
    );
  }
}
