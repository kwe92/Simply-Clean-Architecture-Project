// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// TODO: research shared prefs

class LoginScreenViewModel extends ChangeNotifier {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  TextEditingController get usernameController => _usernameController;
  TextEditingController get passwordController => _passwordController;

  Future<void> login() async {
    String? username = usernameController.text.trim().toLowerCase();
    String? password = passwordController.text.trim();

    if (username == 'gaara' && password == 'sandKing') {
      SharedPreferences pref = await SharedPreferences.getInstance();
      pref.setBool('logged_in', true);
    }
  }
}
