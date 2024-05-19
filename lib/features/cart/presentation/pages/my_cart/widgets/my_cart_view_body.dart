import 'package:flutter/material.dart';
import 'btn_place_order.dart';
import 'cousom_mycart_appbar.dart';
import 'custom_item_list_view.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CousomMyCartAppBar(),
        CustomItemListView(),
        BtnPlaceOrder(),
      ],
    );
  }
}
