import 'package:flutter/material.dart';
import '../../../../../utils/widgets/recent_keywords_widget/recent_keywords_widget.dart';
import '../../../../../utils/widgets/text_form_field/coutom_text_form_srh.dart';
import 'cousom_srh_appbar.dart';

class SrhViewBody extends StatelessWidget {
  const SrhViewBody({super.key});

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
          const CoutomTextFormSrh(),
          const SizedBox(
            height: 20,
          ),
          RecentKeywordsWidget(recentKeywords: recentKeywords),
          const SizedBox(
            height: 25,
          ),
          //   const SuggestedRestaurantsSection(),
        ],
      ),
    );
  }
}
