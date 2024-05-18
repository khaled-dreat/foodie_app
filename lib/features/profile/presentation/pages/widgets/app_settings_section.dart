import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../utils/constant/app_image.dart';
import '../../../../../utils/theme/app_colors.dart';
import '../../../../../utils/theme/app_text_style.dart';

class AppSettingsSection extends StatelessWidget {
  const AppSettingsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(15),
        child: Card(
          elevation: 2,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: SvgPicture.asset(Assets.svgLanguageIcon),
                title: Text(
                  "Language",
                  style: AppTextStyle.styleRegular13(context)
                      .copyWith(fontSize: 18, color: AppColors.darkBlue),
                ),
                trailing: const Icon(Icons.chevron_right_rounded),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Divider(),
              ),
              ListTile(
                leading: SvgPicture.asset(Assets.svgFeedBackIcon),
                title: Text(
                  "Feed Back",
                  style: AppTextStyle.styleRegular13(context)
                      .copyWith(fontSize: 18, color: AppColors.darkBlue),
                ),
                trailing: const Icon(Icons.chevron_right_rounded),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Divider(),
              ),
              ListTile(
                leading: SvgPicture.asset(Assets.svgRateUsIcon),
                title: Text(
                  "Rate Us",
                  style: AppTextStyle.styleRegular13(context)
                      .copyWith(fontSize: 18, color: AppColors.darkBlue),
                ),
                trailing: const Icon(Icons.chevron_right_rounded),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Divider(),
              ),
              ListTile(
                leading: SvgPicture.asset(Assets.svgNewVersionIcon),
                title: Text(
                  "New Version",
                  style: AppTextStyle.styleRegular13(context)
                      .copyWith(fontSize: 18, color: AppColors.darkBlue),
                ),
                trailing: const Icon(Icons.chevron_right_rounded),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }
}
