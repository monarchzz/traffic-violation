import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      primaryColor: Palette.brand,
      colorScheme: _materialDesign3ColorScheme,
      textTheme: _textTheme,
      shadowColor: Palette.purple,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Palette.background,
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white.withOpacity(0),
      ),
    );
  }

  static ThemeData get dark {
    return ThemeData(
      primaryColor: Palette.brand,
      colorScheme: _materialDesign3ColorScheme,
      textTheme: _textTheme,
      shadowColor: Palette.purple,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Palette.background,
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white.withOpacity(0),
      ),
    );
  }

  static const ColorScheme _materialDesign3ColorScheme = ColorScheme(
    primary: Palette.brand,
    secondary: Palette.cerulean,
    surface: Palette.white,
    background: Palette.background,
    error: Palette.red,
    onPrimary: Palette.brandComplementary,
    onSecondary: Palette.babyBlue,
    onSurface: Palette.jetBlack,
    onBackground: Palette.black,
    onError: Palette.white,
    brightness: Brightness.light,
  );

  static const TextTheme _textTheme = TextTheme(
    //body
    bodyText1: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Palette.jetBlack,
    ),
    bodyText2: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Palette.jetBlack,
    ),
    subtitle1: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: Palette.dimGray,
    ),
    subtitle2: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: Palette.dimGray,
    ),
    caption: TextStyle(
      fontSize: 11,
      letterSpacing: 0.25,
      fontWeight: FontWeight.w600,
      color: Palette.black,
    ),
    // headline
    headline1: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.w500,
      color: Palette.black,
    ),
    headline2: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: Palette.black,
    ),
    headline3: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Palette.black,
    ),
    headline4: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.25,
      color: Palette.black,
    ),
    headline5: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.75,
      color: Palette.black,
    ),
    headline6: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.75,
      color: Palette.black,
    ),
  );
}
