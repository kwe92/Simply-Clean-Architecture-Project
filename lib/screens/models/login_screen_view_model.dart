// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class LoginScreenViewModel extends ChangeNotifier {
  String _someText = 'from LoginScreenViewModel';

  String get someText => _someText;
}
