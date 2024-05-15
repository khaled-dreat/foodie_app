import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodie_app/features/auth/presentation/pages/auth_welcome/auth_welcome_view.dart';
import 'package:foodie_app/features/on_boarding/presentation/pages/on_bording_view.dart';

import '../../../../../home/presentation/pages/home/home_view.dart';
import '../../../../../../utils/widgets/loading/app_loading.dart';

class WrapperStreamBuilder extends StatelessWidget {
  const WrapperStreamBuilder({
    super.key,
    required this.currentUsers,
  });
  final Stream<User?> currentUsers;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: currentUsers,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const AppLoading(loading: TypeLoading.page);
          }
          return snapshot.hasData ? const HomeView() : const OnBordingview();
        });
  }
}
