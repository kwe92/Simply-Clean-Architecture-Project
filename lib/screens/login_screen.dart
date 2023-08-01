import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:working_with_auto_route_guards/screens/models/login_screen_view_model.dart';
import 'package:working_with_auto_route_guards/shared/base_screen/base_screen.dart';
import 'package:working_with_auto_route_guards/shared/type_declarations/type_declarations.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  final BoolVoidCallback onResult;

  const LoginScreen({required this.onResult, super.key});

  @override
  Widget build(BuildContext context) {
    const double horizontalPadding = 36, verticalPadding = 12;

    return BaseScreen(
      title: 'Login Screen',
      child: Consumer(
        builder: (BuildContext context, LoginScreenViewModel model, _) {
          return ColoredBox(
            color: const Color.fromRGBO(141, 142, 154, 0.25),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    controller: model.usernameController,
                    decoration: const InputDecoration(
                      hintText: 'Username',
                    ),
                  ),
                  const SizedBox(height: 42),
                  TextFormField(
                    controller: model.passwordController,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                    ),
                  ),
                  const SizedBox(height: 32),
                  OutlinedButton(
                    onPressed: () {
                      model.login(
                        context,
                        onResult,
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(
                        horizontalPadding,
                        verticalPadding,
                        horizontalPadding,
                        verticalPadding,
                      ),
                      child: Text('Login'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
