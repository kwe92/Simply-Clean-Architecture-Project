import 'package:flutter/material.dart';

class AppColors {
  // private named constructor; local to the class.
  const AppColors._();

  static const purple0 = Color(0xFF562354);

  static const grey0 = Color(0xFFE3E8EC);

  static const focusedBorderColor = Color.fromRGBO(54, 69, 79, 1);
}

// Colors Class

//   - define all application colors in one class
//   - using const ClassName._() as the named (identity) constructor
//     prevents the class from being instantiated (created as an object)
//     without the need to modify the class to be abstract
