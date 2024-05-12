import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  static const String nameRoute = "HomeView";
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("data"),
      ),
    );
  }
}
