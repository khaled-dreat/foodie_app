import 'package:flutter/material.dart';
import 'package:foodie_app/features/search/presentation/pages/srh_view.dart';
import 'package:foodie_app/utils/route/app_route.dart';

import '../../../../../../utils/theme/app_colors.dart';
import '../../../../../../utils/theme/app_text_style.dart';

class CoutomTextFormSrh extends StatelessWidget {
  const CoutomTextFormSrh({super.key, this.onTap, this.readOnly = false});
  final Function()? onTap;
  final bool readOnly;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      readOnly: readOnly,
      decoration: InputDecoration(
          filled: true,
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.silver,
            size: 25,
          ),
          hintText: "Search",
          hintStyle: AppTextStyle.styleRegular13(context)
              .copyWith(color: AppColors.silver, fontSize: 14),
          fillColor: AppColors.silverGray,
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
          border: outlineInputBorder()),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: Colors.transparent));
  }
}
