import 'package:flutter/material.dart';

class AppColors {
  // private named constructor; local to the class.
  const AppColors._();

  static const purple0 = Color(0xFF562354);

  static const purple1 = Color(0x3E562354);

  static const grey0 = Color(0xFFE3E8EC);

  static const charcol = Color(0xFF36454F);

  static const abyssalBlue = Color(0xFF1B2834);

  static const skyBlue = Color(0xFF0275C2);

  static const lightBlue0 = Color(0xFF79ACDB);

  static const lightBlue1 = Color(0x3D79ACDB);
}

// Colors Class

//   - define all application colors in one class
//   - using const ClassName._() as the named (identity) constructor
//     prevents the class from being instantiated (created as an object)
//     without the need to modify the class to be abstract

// TODO: explain base-16 vs base-10

// Hexadecimal Color Representation

//   - app colors above are represented as hexadecimal colors
//   - the hexadecimal representation of RGB will always have 2 characters
//     per channel providing consistancy in code readability  
//   - remove the first 4 characters and replace then with # to find the color online

//   - Conversion Examples:

//       - 0xFF79ACDB -> #79ACDB
//       - 0xFF1B2834 -> #1B2834

