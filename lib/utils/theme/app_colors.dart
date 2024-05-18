import 'package:flutter/material.dart';

class AppColors {
  // * Convert Color From Hex #FFFFFF to Flutter 0xFFFFFFFF
  static Color colorFromHex(String hexColor, [String opacity = 'FF']) {
    /// [hexColor] #ffffff
    // * Delete #
    String color = hexColor.replaceAll('#', '');
    // color = FFFFFF;
    String opacityColor = '$opacity$color'; // FFFFFFFF

    return Color(int.parse(opacityColor, radix: 16));
    // 0xFFFFFFFF
  }

  static final Color white = colorFromHex("#FFFFFF");
  static final Color green = colorFromHex("#32B768");
  static final Color skyBlue = colorFromHex("#2C8DFF");
  static final Color darkGray = colorFromHex("#374151");
  static final Color yellow = colorFromHex("#EDB82C");
  static final Color gray = colorFromHex("#4B5563");
  static final Color platinumGray = colorFromHex("#E9E9E9");
  static final Color lightGray = colorFromHex("#6B7280");
  static final Color charcoalGray = colorFromHex("#E5E5E5");
  static final Color ghostGray = colorFromHex("#F9F9F9");
  static final Color silver = colorFromHex("#9CA3AF");
  static final Color silverGray = colorFromHex("#E6E7E9");
  static final Color lightGray2 = colorFromHex("#F4F4F4");
  static final Color darkGreen = colorFromHex("#0E7F3D");
  static final Color darkBlue = colorFromHex("#1F2937");
  static final Color orange = colorFromHex("#E06738");
  static final Color crimson = colorFromHex("#EB4646");
  static final Color lightYellow = colorFromHex("#FDF0B9");
  static final Color black = colorFromHex("#000000");
  static final Color lightSilver = colorFromHex("#C4C4C4");
  static final Color lightBlue = colorFromHex("#BEC5D1");
  static final Color lightGreen = colorFromHex("#E6E6E6");
  static final Color everGreen = colorFromHex("#10B981");
  static final Color lightTeal = colorFromHex("#D1FAE5");
  static final Color lightPink = colorFromHex("#F6F6F6");
  static final Color lightBrown = colorFromHex("#F0C7A9");
  static final Color offWhite = colorFromHex("#ECECEC");
  static final Color darkGray2 = colorFromHex("#828282");
}
