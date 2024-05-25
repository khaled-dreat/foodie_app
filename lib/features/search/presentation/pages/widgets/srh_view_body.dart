import 'package:flutter/material.dart';
import '../../../../../utils/theme/app_colors.dart';
import '../../../../../utils/theme/app_text_style.dart';
import '../../../../../utils/widgets/recent_keywords_widget/recent_keywords_widget.dart';
import '../../../../../utils/widgets/text_form_field/coutom_text_form_srh.dart';
import 'cousom_srh_appbar.dart';

class SrhViewBody extends StatefulWidget {
  const SrhViewBody({super.key});

  @override
  State<SrhViewBody> createState() => _SrhViewBodyState();
}

class _SrhViewBodyState extends State<SrhViewBody> {
  late TextEditingController? controller;
  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<String> recentKeywords = [
      "Burger",
      "Sandwich",
      "Pizza",
      "Sandwich",
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const CousomSrhAppBar(),
          CoutomTextFormSrh(
            fn: () {
              setState(() {});
            },
            controller: controller,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Recent Keywords",
            style: AppTextStyle.styleRegular13(context)
                .copyWith(fontSize: 20, color: AppColors.darkBlue),
          ),
          SizedBox(
            height: 10,
          ),
          RecentKeywordsWidget(controller: controller),
          const SizedBox(
            height: 25,
          ),
          //   const SuggestedRestaurantsSection(),
        ],
      ),
    );
  }
}
