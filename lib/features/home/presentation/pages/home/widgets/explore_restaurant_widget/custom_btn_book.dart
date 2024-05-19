import 'package:flutter/material.dart';

import '../../../../../../../utils/widgets/loading/app_loading.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.title,
    required this.onPressed,
    required this.backgroundColor,
    required this.style,
    this.isLoading = false,
    this.height,
  });
  final Color backgroundColor;
  final String title;
  final TextStyle style;
  final bool isLoading;
  final double? height;

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: height ?? 100,
      height: 40,
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
