import 'package:flutter/material.dart';
import 'package:working_with_auto_route_guards/app/themes/app_theme.dart';
import 'package:working_with_auto_route_guards/app/themes/colors.dart';

// TODO: code use some refactoring

const textStyleHeader0 = TextStyle(
  fontFamily: fontFamily,
  fontWeight: FontWeight.w600,
  fontSize: 24,
  // color: Colors.orange,
);

final buttonTextStyle = TextStyle(
  fontFamily: fontFamily,
  fontWeight: FontWeight.w600,
  fontSize: 18,
  foreground: Paint()
    ..color = AppColors
        .purple0, //? foreground: Paint()..color = Color is required to change the color of text when using MaterialStateProperty.resolveWith
);

final TextStyle bodyTextStyle = buttonTextStyle.copyWith(
  fontWeight: FontWeight.w500,
  fontSize: 16,
);

// TextStyle Module

//   - keep text application text styles in one location
//   - copy reuseable properties to keep code DRY and save time in the future
