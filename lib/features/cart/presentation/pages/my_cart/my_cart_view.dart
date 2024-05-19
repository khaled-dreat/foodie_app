import 'package:flutter/material.dart';
import 'widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  static const String nameRoute = "MyCartViewBody";
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyCartViewBody(),
    );
  }
}
