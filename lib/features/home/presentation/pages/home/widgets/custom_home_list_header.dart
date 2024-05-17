import 'package:flutter/material.dart';

import '../../../../../../utils/theme/app_text_style.dart';

class CustomListHeader extends StatelessWidget {
  const CustomListHeader({
    super.key,
    required this.title,
    required this.description,
    this.color,
  });
  final String title, description;
  final Color? color;

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
              style: AppTextStyle.styleMedium10(context)
                  .copyWith(fontSize: 12, color: color),
            ),
            const SizedBox(
              width: 5,
            ),
            Icon(
              Icons.chevron_right_outlined,
              color: color,
            )
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
