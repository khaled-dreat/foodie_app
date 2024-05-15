import 'package:flutter/material.dart';
import 'package:foodie_app/utils/constant/app_image.dart';
import 'package:foodie_app/utils/widgets/loading/app_loading.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomBtnAuth extends StatelessWidget {
  const CustomBtnAuth({
    super.key,
    required this.title,
    required this.onPressed,
    required this.backgroundColor,
    required this.style,
    this.isLoading = false,
  });
  final Color backgroundColor;
  final String title;
  final TextStyle style;
  final bool isLoading;

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 310,
      height: 65,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          onPressed: onPressed,
          child: isLoading
              ? const AppLoading(
                  loading: TypeLoading.send,
                )
              : Text(
                  title,
                  style: style,
                )),
    );
  }
}

class CustomBtnAuthIcon extends StatelessWidget {
  const CustomBtnAuthIcon({
    super.key,
    required this.title,
    required this.onPressed,
    required this.backgroundColor,
    required this.style,
    required this.icon,
  });
  final Color backgroundColor;
  final String title;
  final String icon;
  final TextStyle style;

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 310,
      height: 65,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                height: 25,
              ),
              const SizedBox(
                width: 25,
              ),
              Text(
                title,
                style: style,
              ),
            ],
          )),
    );
  }
}
