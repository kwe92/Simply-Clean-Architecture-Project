import 'package:flutter/material.dart';
import 'package:working_with_auto_route_guards/app/themes/app_theme.dart';
import 'package:working_with_auto_route_guards/app/themes/colors.dart';

class AppTextStyles {
  const AppTextStyles._();

  static const baseTextStyle = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
  );

  static final textStyleHeader0 = baseTextStyle.copyWith(
    fontSize: 24,
  );

  static final buttonTextStyle = baseTextStyle.copyWith(
    fontSize: 18,
  );

  static final TextStyle bodyTextStyle = baseTextStyle.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  static TextStyle getBodyTextStyle({required bool isDarkMode}) => isDarkMode
      ? bodyTextStyle.copyWith(foreground: Paint()..color = AppColors.purple0)
      : bodyTextStyle.copyWith(foreground: Paint()..color = AppColors.skyBlue);
}
// TextStyle Module

//   - keep text application text styles in one location
//   - copy reuseable properties to keep code DRY and save time in the future
