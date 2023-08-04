import 'package:flutter/material.dart';
import 'package:working_with_auto_route_guards/app/themes/app_theme.dart';

const baseTextStyle = TextStyle(
  fontFamily: fontFamily,
  fontWeight: FontWeight.w600,
);

final textStyleHeader0 = baseTextStyle.copyWith(
  fontSize: 24,
);

final buttonTextStyle = baseTextStyle.copyWith(
  fontSize: 18,
);

final TextStyle bodyTextStyle = baseTextStyle.copyWith(
  fontWeight: FontWeight.w500,
  fontSize: 16,
);

// TextStyle Module

//   - keep text application text styles in one location
//   - copy reuseable properties to keep code DRY and save time in the future
