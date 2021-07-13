import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0xFFA02167);
  static const Color accentColor = Color(0xFFF8B219);

  static const Color purpleColor = Color(0xFFA02167);
  static const Color yellowColor = Color(0xFFF8B219);
  static const Color darkColor = Color(0xFF1D1D1D);

  static const Color darkTextColor = Color(0xFF444444);
  static const Color lightSilverColor = Color(0xFFEFF2F5);
  static const String fontName = 'SegoeUi';

  static const TextStyle title = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w600,
    fontSize: 24.0,
    color: darkColor,
  );
}
