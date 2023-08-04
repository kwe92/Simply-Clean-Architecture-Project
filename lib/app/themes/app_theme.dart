import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:working_with_auto_route_guards/app/themes/colors.dart';
import 'package:working_with_auto_route_guards/app/themes/text_styles.dart';

const String fontFamily = 'CircularXX';

// TODO:light mode colors: Navigation back button color | snackbar color | hilighted text color of TextFormField | ensure its not an off white background

ThemeData? appTheme = getThemeData(isDarkMode: false);

ThemeData getThemeData({required bool isDarkMode}) {
  const double borderWidth = 2.5;
  final appTextStyle = AppTextStyles.getBodyTextStyle(isDarkMode: isDarkMode);
  return ThemeData(
    useMaterial3: true,
    colorScheme: isDarkMode ? darkColorScheme : lightColorScheme,
    appBarTheme: AppBarTheme(
      titleTextStyle: AppTextStyles.textStyleHeader0,
      backgroundColor: isDarkMode ? AppColors.purple0 : AppColors.abyssalBlue,
    ),
    textTheme: TextTheme(
      bodyLarge: appTextStyle, //? controls TextFormField widget style
      bodyMedium: appTextStyle, //? controls Text widget style
    ),
    // change selectionHandleColor on IOS
    cupertinoOverrideTheme: const CupertinoThemeData(
      primaryColor: AppColors.skyBlue,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: appTextStyle,
      contentPadding: const EdgeInsets.fromLTRB(12.0, 0.0, 0.0, 0.0),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: isDarkMode ? AppColors.purple0 : AppColors.skyBlue,
          width: borderWidth,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: isDarkMode ? AppColors.charcol : AppColors.lightBlue0,
          width: borderWidth,
        ),
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: isDarkMode ? AppColors.charcol : AppColors.lightBlue0,
      selectionColor: AppColors.lightBlue1,
    ),
    outlinedButtonTheme: isDarkMode ? purpleOutlinedButton : blueOutlinedButton,
    snackBarTheme: SnackBarThemeData(
      shape: ContinuousRectangleBorder(
        side: BorderSide(
          color: isDarkMode ? AppColors.purple0 : AppColors.skyBlue,
          width: borderWidth,
        ),
      ),
    ),
  );
}

const darkColorScheme = ColorScheme.dark(
  background: AppColors.grey0,
  onBackground: AppColors.purple0, //? affects borders, what else?
  onSurface: AppColors.grey0, //? affects Flutter navigation back button, snackBar background what else?
);

const lightColorScheme = ColorScheme.light(
  onBackground: AppColors.skyBlue,
  onSurface: Colors.white,
);

OutlinedButtonThemeData purpleOutlinedButton = OutlinedButtonThemeData(
  style: purpleButtonStyle,
);

OutlinedButtonThemeData blueOutlinedButton = OutlinedButtonThemeData(
  style: blueButtonStyle,
);

// parameterized resolver function to keep code DRY
MaterialStateProperty<T> _resolver<T>(
  T Function() func,
) =>
    MaterialStateProperty.resolveWith(
      (states) => func(),
    );

const double _horizontalPadding = 48, _verticalPadding = 16;

ButtonStyle basicButtonStyle = ButtonStyle(
  shape: _resolver(
    () => const StadiumBorder(),
  ),
  padding: _resolver(
    () => const EdgeInsets.fromLTRB(
      _horizontalPadding,
      _verticalPadding,
      _horizontalPadding,
      _verticalPadding,
    ),
  ),
);

ButtonStyle purpleButtonStyle = basicButtonStyle.copyWith(
  textStyle: _resolver(
    () => AppTextStyles.buttonTextStyle.copyWith(
      foreground: Paint()..color = AppColors.purple0,
    ),
  ),
);

ButtonStyle blueButtonStyle = basicButtonStyle.copyWith(
  textStyle: _resolver(
    () => AppTextStyles.buttonTextStyle.copyWith(
      foreground: Paint()..color = AppColors.skyBlue,
    ),
  ),
  overlayColor: _resolver(
    () => AppColors.lightBlue1,
  ),
);


// --------------------------------------------------------------- //

// ? how resolve is normally called

// ButtonStyle _purpleButtonStyle1 = ButtonStyle(
//   shape: MaterialStateProperty.resolveWith(
//     (states) => const StadiumBorder(),
//   ),
// );

// ----------------------------Summary---------------------------- //

// ThemeData

//   -  define the overall theme of your application in one place
//      allowing you to easily configure your entire application

// ThemeData docs:

//   - Material components typically depend exclusively on the [colorScheme] and [textTheme]

// Why use foreground: Paint()..color?

// foreground: Paint()..color = Color is required to change the color of text when using MaterialStateProperty.resolveWith
