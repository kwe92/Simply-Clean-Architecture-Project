import 'package:flutter/material.dart';

// TODO: add get_it and @injectable

/// Service for displaying toasts, snackbars, banners or other
/// temporary info boxes
/// SimpleDialog can get you most of the way there

class ToastService {
  const ToastService();

  void showSnackBar({
    required BuildContext context,
    required String message,
    Duration duration = const Duration(seconds: 3),
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: duration,
        content: Text(
          message,
        ),
      ),
    );
  }
}


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
