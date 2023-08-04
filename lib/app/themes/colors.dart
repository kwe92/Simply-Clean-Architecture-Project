import 'package:flutter/material.dart';

class AppColors {
  // private named constructor; local to the class.
  const AppColors._();

  static const purple0 = Color(0xFF562354);

  static const grey0 = Color(0xFFE3E8EC);

  static const charcol = Color(0xFF36454F);

  static const abyssalBlue = Color(0xFF1B2834);

  static const skyBlue = Color.fromRGBO(2, 117, 194, 1);

  static const lightBlue = Color.fromRGBO(121, 172, 219, 1);
}

// Colors Class

//   - define all application colors in one class
//   - using const ClassName._() as the named (identity) constructor
//     prevents the class from being instantiated (created as an object)
//     without the need to modify the class to be abstract
