import 'package:flutter/material.dart';
import 'package:working_with_auto_route_guards/app/themes/colors.dart';
import 'package:working_with_auto_route_guards/app/themes/text_styles.dart';

const String fontFamily = 'CircularXX';

// TODO:light mode colors: Navigatino back button color | snackbar color | on pressed button color | hilighted text color of TextFormField | ensure its not an off white background

ThemeData? appTheme = getThemeData(isDarkMode: false);

ThemeData getThemeData({required bool isDarkMode}) {
  const double borderWidth = 2.5;

  return ThemeData(
    useMaterial3: true,
    colorScheme: isDarkMode ? darkColorScheme : lightColorScheme,
    appBarTheme: AppBarTheme(
      titleTextStyle: textStyleHeader0,
      backgroundColor: isDarkMode ? AppColors.purple0 : AppColors.abyssalBlue,
    ),
    textTheme: TextTheme(
      bodyLarge: isDarkMode
          ? bodyTextStyle
          : bodyTextStyle.copyWith(foreground: Paint()..color = AppColors.skyBlue), //? controls TextFormField widget style
      // bodySmall: TextStyle(color: Colors.orange),
      bodyMedium: isDarkMode
          ? bodyTextStyle
          : bodyTextStyle.copyWith(foreground: Paint()..color = AppColors.skyBlue), //? controls Text widget style
      // titleMedium: TextStyle(color: Colors.orange),
      // titleLarge: TextStyle(color: Colors.orange),
      // titleSmall: TextStyle(color: Colors.orange),
    ),
    inputDecorationTheme: InputDecorationTheme(
      // border: OutlineInputBorder(), //TODO: changed border type
      hintStyle: isDarkMode ? bodyTextStyle : bodyTextStyle.copyWith(foreground: Paint()..color = AppColors.skyBlue),
      contentPadding: const EdgeInsets.fromLTRB(12.0, 0.0, 0.0, 0.0),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: isDarkMode ? AppColors.purple0 : AppColors.skyBlue,
          width: borderWidth,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: isDarkMode ? AppColors.charcol : AppColors.lightBlue,
          width: borderWidth,
        ),
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: isDarkMode ? AppColors.charcol : AppColors.lightBlue,
    ),
    outlinedButtonTheme: isDarkMode ? purpleOutlinedButton : blueOutlinedButton,
  );
}

const darkColorScheme = ColorScheme.dark(
  background: AppColors.grey0,
  onBackground: AppColors.purple0, //? affects borders, what else?
  // surface: Colors.green,
  onSurface: AppColors.grey0, //? affects Flutter navigation back button what else?
  // onPrimary: Colors.orange,
);

const lightColorScheme = ColorScheme.light(
  onBackground: AppColors.skyBlue,
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

// TODO: blueButtonStyle could be more DRY

ButtonStyle blueButtonStyle = ButtonStyle(
  shape: _resolver(
    () => const StadiumBorder(),
  ),
  // foregroundColor: _resolver(() => null),
  // backgroundColor: _resolver(() => null),
  textStyle: _resolver(
    () => buttonTextStyle.copyWith(
      foreground: Paint()..color = AppColors.skyBlue,
    ),
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
