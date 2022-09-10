import 'package:flutter/material.dart';

mixin Palette {
  // Primary
  static const brand = Color(0xFF5F3B86);
  static const brandComplementary = Color(0xFFFFFCFC);
  static const red = Color(0xFFD43860);
  static const gold = Color(0xFFFFCA51);
  static const background = Color(0xFFF5F7FC);
  // Complementary
  static const ochre = Color(0xFFE39F48);
  static const cream = Color(0xFFFCF4B2);
  static const purple = Color(0xFF9251AC);
  static const pink = Color(0xFFFFE0F5);
  static const darkGreen = Color(0xFF159570);
  static const lightGreen = Color(0xFFD6FACF);
  static const neonBlue = Color(0xFF635BFF);
  static const periwinkle = Color(0xFFE8E6FF);
  static const cerulean = Color(0xFF217AB7);
  static const babyBlue = Color(0xFFC4F0FF);
  // Monochrome
  static const black = Color(0xFF000000);
  static const jetBlack = Color(0xFF343434);
  static const dimGray = Color(0xFF696969);
  static const silver = Color(0xFFC4C4C4);
  static const gainsboro = Color(0xFFEEEEEE);
  static const white = Color(0xFFFFFFFF);
  // Miscellaneous
  static const warning = Palette.ochre;
  static const error = Palette.red;
  static const success = Palette.darkGreen;
  static const disabled = Palette.silver;
}
