import 'package:flutter/material.dart';
// TODO: Continue building out the toast service API
/// Service for displaying toasts, snackbars, banners or other
/// temporary info boxes
/// SimpleDialog can get you most of the way there

class ToastService {
  const ToastService();

  void showSnackBar({required BuildContext context, required String Message}) {
    // ScaffoldMessenger.of(context).showSnackBar();
  }
}

final scaffoldMessengerState = ScaffoldMessengerState();


// ScaffoldMessenger

//   - a StatefulWidget that provides APIs to easily display
//     temporary information boxes

// ScaffoldMessengerState

//   - a separate StatefulWidget object that
//     maintains the state of the ScaffoldMessanger
//   - It is required to call associated temporary information API
//     methods by recieving the current BuildContext:

//       - showSnackBar | SnackBar API
//       - showMaterialBanner | MaterialBanner API 
//   - 

// ScaffoldMessenger.of

//   - returns the ScaffoldMessengerState of the associated ScaffoldMessenger
//   - takes the current BuildContext as an argument
