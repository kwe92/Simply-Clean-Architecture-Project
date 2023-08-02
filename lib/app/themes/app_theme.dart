import 'package:flutter/material.dart';
import 'package:working_with_auto_route_guards/app/themes/colors.dart';
import 'package:working_with_auto_route_guards/app/themes/text_styles.dart';

const String fontFamily = 'CircularXX';

ThemeData appTheme = ThemeData(
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    titleTextStyle: textStyleHeader0,
    backgroundColor: AppColors.purple0,
  ),
  outlinedButtonTheme: primaryOutlinedButton,
);

OutlinedButtonThemeData primaryOutlinedButton = OutlinedButtonThemeData(style: purpleButtonStyle);

// parameterized resolver function to keep code dry
MaterialStateProperty<T> _resolver<T>(T Function() func) => MaterialStateProperty.resolveWith((states) => func());

const double _horizontalPadding = 48, _verticalPadding = 16;

ButtonStyle purpleButtonStyle = ButtonStyle(
  shape: _resolver(() => const StadiumBorder()),
  // foregroundColor: _resolver(() => null),
  // backgroundColor: _resolver(() => null),
  textStyle: _resolver(() => buttonText),
  padding: _resolver(
    () => const EdgeInsets.fromLTRB(
      _horizontalPadding,
      _verticalPadding,
      _horizontalPadding,
      _verticalPadding,
    ),
  ),
);

// how resolve is normally called
ButtonStyle _purpleButtonStyle1 = ButtonStyle(
  shape: MaterialStateProperty.resolveWith(
    (states) => const StadiumBorder(),
  ),
);
