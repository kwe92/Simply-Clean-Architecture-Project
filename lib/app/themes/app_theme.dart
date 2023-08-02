import 'package:flutter/material.dart';
import 'package:working_with_auto_route_guards/app/themes/colors.dart';
import 'package:working_with_auto_route_guards/app/themes/text_styles.dart';

const String fontFamily = 'CircularXX';

ThemeData? appTheme = _darkTheme;

const double borderWidth = 2.5;

final _darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: darkColorScheme,
  appBarTheme: const AppBarTheme(
    titleTextStyle: textStyleHeader0,
    backgroundColor: AppColors.purple0,
  ),
  textTheme: TextTheme(
    bodyLarge: bodyTextStyle, // controls TextFormField widget style
    // bodySmall: TextStyle(color: Colors.orange),
    // bodyMedium: bodyTextStyle, // controls Text widget style
    // titleMedium: TextStyle(color: Colors.orange),
    // titleLarge: TextStyle(color: Colors.orange),
    // titleSmall: TextStyle(color: Colors.orange),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.purple0,
        width: borderWidth,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.orange,
        width: borderWidth,
      ),
    ),
    activeIndicatorBorder: BorderSide(
      color: Colors.amber,
    ),
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: Colors.orange,
  ),
  outlinedButtonTheme: primaryOutlinedButton,
);

const darkColorScheme = ColorScheme.dark(
  background: AppColors.grey0,
  onBackground: AppColors.purple0,
  // surface: Colors.green,
  onSurface: AppColors.grey0,
  // onPrimary: Colors.orange,
);

OutlinedButtonThemeData primaryOutlinedButton = OutlinedButtonThemeData(
  style: purpleButtonStyle,
);

// parameterized resolver function to keep code dry
MaterialStateProperty<T> _resolver<T>(T Function() func) => MaterialStateProperty.resolveWith((states) => func());

const double _horizontalPadding = 48, _verticalPadding = 16;

ButtonStyle purpleButtonStyle = ButtonStyle(
  shape: _resolver(
    () => const StadiumBorder(),
  ),
  // foregroundColor: _resolver(() => null),
  // backgroundColor: _resolver(() => null),
  textStyle: _resolver(() => buttonTextStyle),
  padding: _resolver(
    () => const EdgeInsets.fromLTRB(
      _horizontalPadding,
      _verticalPadding,
      _horizontalPadding,
      _verticalPadding,
    ),
  ),
);

// ? how resolve is normally called
// ButtonStyle _purpleButtonStyle1 = ButtonStyle(
//   shape: MaterialStateProperty.resolveWith(
//     (states) => const StadiumBorder(),
//   ),
// );
