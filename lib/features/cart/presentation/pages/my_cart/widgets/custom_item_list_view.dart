import 'package:flutter/material.dart';
import 'custom_order_cart.dart';

class CustomItemListView extends StatelessWidget {
  const CustomItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const CustomOrderCart();
        },
      ),
    );
  }
}
