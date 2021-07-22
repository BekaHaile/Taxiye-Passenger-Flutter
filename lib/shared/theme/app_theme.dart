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
  static const Color greyColor = Color(0xFF979797);

  static const Color greyColor2 = Color(0xFFC1C9D2);
  static Color shadowColor = const Color(0xFF123E77).withOpacity(0.12);

  static const String fontName = 'SegoeUi';
  static ThemeData themeData = ThemeData(
    primaryColor: primaryColor,
    colorScheme: ThemeData().colorScheme.copyWith(
          primary: primaryColor,
          secondary: yellowColor,
        ),
    fontFamily: fontName,
  );

  static const TextStyle title = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24.0,
    letterSpacing: 0.27,
    color: darkColor,
  );

  static const TextStyle subtitle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.0,
    letterSpacing: 0.27,
    color: greyColor,
  );

  static const TextStyle body = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.0,
    letterSpacing: 0.27,
    color: darkTextColor,
  );

  static final textFieldDecoration = InputDecoration(
    alignLabelWithHint: true,
    hintStyle: subtitle.copyWith(fontSize: 16.0),
    labelStyle: subtitle.copyWith(fontSize: 16.0),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: greyColor),
      borderRadius: BorderRadius.circular(8.0),
    ),
    // contentPadding:
    //     const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
  );
}
