import 'package:flutter/material.dart';
import 'package:foodie_app/features/auth/presentation/pages/wrapper/widgets/wrapper_view_body.dart';

class WrapperView extends StatelessWidget {
  static const String nameRoute = 'WrapperView';
  const WrapperView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WrapperViewBody(),
    );
  }
}
