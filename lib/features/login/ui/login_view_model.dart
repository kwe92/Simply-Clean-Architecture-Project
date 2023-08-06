// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:working_with_auto_route_guards/app/type_declarations/type_declarations.dart';
import 'package:working_with_auto_route_guards/features/shared/services/toast_service.dart';

// TODO: remove with get_it dependency addition

const _toastService = ToastService();

class LoginScreenViewModel extends ChangeNotifier {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  TextEditingController get usernameController => _usernameController;
  TextEditingController get passwordController => _passwordController;

  void clearControllers() {
    usernameController.clear();
    passwordController.clear();
    notifyListeners();
  }

  Future<void> login(BuildContext context, BoolVoidCallback onResult) async {
    String? username = usernameController.text.trim().toLowerCase();
    String? password = passwordController.text.trim();

    // if the username and password are correct set guard predicate to true
    if (username == 'gaara' && password == 'sandKing') {
      // used to presist data to disk temporarily
      // mimicing user login functionality
      SharedPreferences pref = await SharedPreferences.getInstance();

      pref.setBool('logged_in', true);

      onResult.call(true);

      return;
    }
    _toastService.showSnackBar(
      context: context,
      message: 'Wrong username or password. Please Try again.',
    );
  }
}
