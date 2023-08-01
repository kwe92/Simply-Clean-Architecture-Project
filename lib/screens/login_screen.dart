import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:working_with_auto_route_guards/screens/models/login_screen_view_model.dart';
import 'package:working_with_auto_route_guards/shared/base_screen/base_screen.dart';

typedef BoolVoidCallback = void Function(bool?);

@RoutePage()
class LoginScreen extends StatelessWidget {
  final BoolVoidCallback onResult;

  const LoginScreen({required this.onResult, super.key});

  @override
  Widget build(BuildContext context) => BaseScreen(
        title: 'Login Screen',
        child: Consumer(
          builder: (BuildContext context, LoginScreenViewModel model, _) {
            return ListView(
              padding: const EdgeInsets.all(20),
              children: <Widget>[
                TextFormField(
                  controller: model.usernameController,
                  decoration: const InputDecoration(
                    hintText: 'Username',
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: model.passwordController,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                  ),
                ),
              ],
            );
          },
        ),
      );
}
