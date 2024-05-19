import 'package:flutter/material.dart';

import '../../../../../../utils/theme/app_colors.dart';
import '../../../../../../utils/theme/app_text_style.dart';

class CousomMyCartAppBar extends StatelessWidget {
  const CousomMyCartAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.lightGray2,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.chevron_left_rounded),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            "Cart",
            style: AppTextStyle.styleRegular13(context)
                .copyWith(fontSize: 17, color: AppColors.darkBlue),
          ),
          Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              "EDIT ITEMS",
              style: AppTextStyle.styleRegular13(context).copyWith(
                color: AppColors.orange,
                fontSize: 14,
                decorationColor: AppColors.orange,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
