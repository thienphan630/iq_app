import 'package:flutter/material.dart';

const kBackgroundColor = Color(0xFF000000);
const kSecondaryColor = Color(0xFF8B94BC);
const kGreenColor = Color(0xFF6AC259);
const kRedColor = Color(0xFFE92E30);
const kGrayColor = Color(0xFFC1C1C1);
const kBlackColor = Color(0xFF101010);
const kPrimaryGradient = LinearGradient(
  colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
const kBackgroundGradient =
    LinearGradient(colors: [Color(0xFF1DA1F2), Color(0xFF4A658E)]);

const double kDefaultPadding = 20.0;

class AppColor {
  // #region colors appbar
  static Color kPrimary = const Color(0xff0A81AC); //appbar
  // #endregion

  // #region Color appbar light
  static Color kPrimaryDart = const Color(0xff075673); //appbar
  // #endregion

  // #region Color background
  // static Color color3 = const Color(0xFFEDEDF1); //background color
  static Color kBackground = const Color(0xFFF5F5F5); //background color

  // #region Color text main
  static Color kText = const Color(0xFF444BA5); //text main
  // #endregion

  // #region Color text main
  static Color color9 = const Color(0xFFEDEDED); //text main.

  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
