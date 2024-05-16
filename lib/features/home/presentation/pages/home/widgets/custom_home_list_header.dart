import 'package:flutter/material.dart';

import '../../../../../../utils/theme/app_text_style.dart';

class CustomHomeListHeader extends StatelessWidget {
  const CustomHomeListHeader({
    super.key,
    required this.title,
    required this.description,
  });
  final String title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style: AppTextStyle.styleSemiBold16(context),
            ),
            const Spacer(),
            Text(
              "See All",
              style: AppTextStyle.styleMedium10(context).copyWith(fontSize: 12),
            ),
            const Icon(Icons.chevron_right_outlined)
          ],
        ),
        Text(
          description,
          style: AppTextStyle.styleMedium10(context).copyWith(fontSize: 12),
        ),
      ],
    );
  }
}
