import 'package:flutter/material.dart';

import '../../../../utils/theme/app_colors.dart';
import 'widgets/srh_view_body.dart';

class SrhView extends StatelessWidget {
  static const String nameRoute = "SrhView";
  const SrhView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: const SrhViewBody(),
    );
  }
}
