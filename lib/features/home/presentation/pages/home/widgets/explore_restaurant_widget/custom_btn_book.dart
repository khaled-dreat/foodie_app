import 'package:flutter/material.dart';

import '../../../../../../../utils/widgets/loading/app_loading.dart';

class CustomBtnBook extends StatelessWidget {
  const CustomBtnBook({
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
      width: 100,
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
