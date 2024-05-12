import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:foodie_app/features/auth/presentation/pages/wrapper/widgets/wrapper_view_body.dart';
import 'package:foodie_app/features/auth/presentation/pages/wrapper/wrapper_view.dart';
import 'package:foodie_app/utils/route/app_route.dart';

class SplachViewBody extends StatefulWidget {
  const SplachViewBody({super.key});

  @override
  State<SplachViewBody> createState() => _SplachViewBodyState();
}

class _SplachViewBodyState extends State<SplachViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animatedContainer;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    Timer(const Duration(seconds: 3), () async {
      AppRoute.goReplace(context, WrapperView.nameRoute);
      //   if (await AppLang.showSelectLang) {
      //     AppRoutes.goReplace(context, PageSelectedLangView.nameRoute);
      //   } else {
      //     // wrapper
      //   }
    });
  }

  @override
  void dispose() {
    super.dispose();
    animatedContainer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // * image
        //    const CustomSplachLogo(),
        Text("S[alch View]")
        // * Sliding Text
        //   SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

// * initState SlidingA nimation
  void initSlidingAnimation() {
    animatedContainer =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animatedContainer);
    animatedContainer.forward();
  }
/*
  // * Go To Home
  void navigateToHome() {
    context.read<SelectCategoryCubit>().getSelectedCategory();
    context.read<FavoriteBooksCubit>().getFavoriteBooks();
    Future.delayed(const Duration(seconds: 3), () {
      if (context.read<SelectCategoryCubit>().itemSelected.isNotEmpty) {
        AppRoutes.goReplace(context, HomeView.nameRoute);
      } else {
        AppRoutes.goReplace(context, SelectCategoryView.nameRoute);
      }
    });
  }
*/
}
