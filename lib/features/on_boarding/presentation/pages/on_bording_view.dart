import 'package:flutter/material.dart';
import 'package:foodie_app/features/on_boarding/presentation/pages/widgets/on_bording_view_body.dart';

class OnBordingview extends StatelessWidget {
  static const String nameRoute = "OnBordingview";
  const OnBordingview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBordingViewBody(),
    );
  }
}
