import 'package:foodie_app/utils/theme/app_colors.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter/material.dart';

enum TypeLoading { profile, image, page, webview, send }

class AppLoading extends StatefulWidget {
  const AppLoading({super.key, this.loading, this.size});
  final TypeLoading? loading;
  final double? size;

  @override
  State<AppLoading> createState() => _AppLoadingState();
}

class _AppLoadingState extends State<AppLoading> {
  @override
  Widget build(BuildContext context) {
    switch (widget.loading ?? TypeLoading.image) {
      // * image
      case TypeLoading.image:
        return LoadingAnimationWidget.fourRotatingDots(
            color: AppColors.everGreen, size: 25);
      // * profile
      case TypeLoading.profile:
        return LoadingAnimationWidget.discreteCircle(
          color: AppColors.everGreen,
          size: 25,
        );
      // * page
      case TypeLoading.page:
        return LoadingAnimationWidget.inkDrop(
          color: AppColors.everGreen,
          size: 25,
        );

      // * webview
      case TypeLoading.webview:
        return LoadingAnimationWidget.twistingDots(
          leftDotColor: AppColors.everGreen,
          rightDotColor: AppColors.lightBlue,
          size: 25,
        );

      // * send
      case TypeLoading.send:
        return LoadingAnimationWidget.hexagonDots(
            color: AppColors.white, size: 25);
    }
  }
/*
  // * Color
  Color get colorLoading =>
      AppTheme.isDark(context) ? AppColors.darkLoading : AppColors.lightLoading;
  Color get colorLoadingRight =>
      AppTheme.isDark(context) ? AppColors.lightLoading : AppColors.darkLoading;

  // * Size
  double get sizeLoading => (widget.size ?? AppDime.xxl / AppDime.one_41).r;*/
}
