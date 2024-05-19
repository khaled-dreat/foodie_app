import 'package:flutter/material.dart';

import '../../../../../../utils/theme/app_colors.dart';
import '../../../../../../utils/theme/app_text_style.dart';
import '../../../../../home/presentation/pages/home/widgets/explore_restaurant_widget/custom_btn_book.dart';

class BtnPlaceOrder extends StatelessWidget {
  const BtnPlaceOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 60,
              child: CustomBtn(
                  title: "PLACE ORDER",
                  onPressed: () {
                    placeOrderBottomSheet(context);
                  },
                  backgroundColor: AppColors.green,
                  style: AppTextStyle.styleBold14(context)),
            ),
          ),
        ],
      ),
    );
  }

  Future<dynamic> placeOrderBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      showDragHandle: true,
      backgroundColor: AppColors.white,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
          child: SizedBox(
            height: 280,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Delivery Address",
                          style: AppTextStyle.styleRegular13(context)
                              .copyWith(fontSize: 14),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "EDIT",
                            style:
                                AppTextStyle.styleRegular13(context).copyWith(
                              color: AppColors.orange,
                              fontSize: 14,
                              decorationColor: AppColors.orange,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "2118 Thornridge Cir. Syracuse",
                          hintStyle: AppTextStyle.styleRegular13(context)
                              .copyWith(fontSize: 16),
                          fillColor: AppColors.aliceBlue,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: Colors.transparent))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text(
                          "TOTAl:",
                          style: AppTextStyle.styleRegular13(context)
                              .copyWith(fontSize: 16),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          r"$96",
                          style: AppTextStyle.styleRegular13(context).copyWith(
                              fontSize: 25, color: AppColors.darkBlue),
                        ),
                        const Spacer(),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Breakdown",
                          style: AppTextStyle.styleRegular14(context)
                              .copyWith(color: AppColors.orange),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.chevron_right_outlined,
                          color: AppColors.orange,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 60,
                        child: CustomBtn(
                            title: "PLACE ORDER",
                            onPressed: () {},
                            backgroundColor: AppColors.green,
                            style: AppTextStyle.styleBold14(context)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
