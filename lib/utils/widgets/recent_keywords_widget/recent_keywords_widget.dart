import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_text_style.dart';

class RecentKeywordsWidget extends StatelessWidget {
  const RecentKeywordsWidget({
    super.key,
    required this.recentKeywords,
  });

  final List<String> recentKeywords;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recent Keywords",
          style: AppTextStyle.styleRegular13(context)
              .copyWith(fontSize: 20, color: AppColors.darkBlue),
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: recentKeywords.map(
              (e) {
                return Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.silver,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(e),
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}
