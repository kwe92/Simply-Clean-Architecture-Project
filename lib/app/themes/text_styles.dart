import 'package:flutter/material.dart';
import 'package:working_with_auto_route_guards/app/themes/app_theme.dart';
import 'package:working_with_auto_route_guards/app/themes/colors.dart';

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
  // color: AppColors.purple0,
  // required to use paint with MaterialStateProperty.resolveWith
  foreground: Paint()..color = AppColors.purple0,
);

final TextStyle bodyTextStyle = buttonTextStyle.copyWith(
  fontWeight: FontWeight.w500,
  fontSize: 16,
);
