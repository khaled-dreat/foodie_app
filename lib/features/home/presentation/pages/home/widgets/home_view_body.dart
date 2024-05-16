import 'package:flutter/material.dart';
import 'coutom_text_form_srh.dart';
import 'pest_brand.dart';
import 'today_new_available_widget/today_new_available_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CoutomTextFormSrh(),
          SizedBox(
            height: 30,
          ),
          PestBrand(),
          SizedBox(
            height: 30,
          ),
          TodayNewAvailableWidget()
        ],
      ),
    );
  }
}
