// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:working_with_auto_route_guards/shared/type_declarations/type_declarations.dart';

// TODO: research shared prefs

class LoginScreenViewModel extends ChangeNotifier {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  TextEditingController get usernameController => _usernameController;
  TextEditingController get passwordController => _passwordController;

  Future<void> login(BuildContext context, BoolVoidCallback onResult) async {
    String? username = usernameController.text.trim().toLowerCase();
    String? password = passwordController.text.trim();

    if (username == 'gaara' && password == 'sandKing') {
      SharedPreferences pref = await SharedPreferences.getInstance();
      pref.setBool('logged_in', true);
      onResult.call(true);
      return;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      _snackBar,
    );
  }
}

const SnackBar _snackBar = SnackBar(
  duration: Duration(
    seconds: 3,
  ),
  content: Text(
    'Wrong username or password. Please Try again.',
  ),
);
