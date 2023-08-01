import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:working_with_auto_route_guards/screens/models/login_screen_view_model.dart';
import 'package:working_with_auto_route_guards/shared/base_screen/base_screen.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) => BaseScreen(
      title: 'Login Screen',
      child: Consumer(
        builder: (BuildContext context, LoginScreenViewModel model, _) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                model.someText,
              )
            ],
          );
        },
      ));
}
