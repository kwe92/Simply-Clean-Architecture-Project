import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:working_with_auto_route_guards/features/login/ui/login_view_model.dart';
import 'package:working_with_auto_route_guards/features/shared/base_scaffold_view.dart';
import 'package:working_with_auto_route_guards/app/type_declarations/type_declarations.dart';

@RoutePage()
class LoginView extends StatelessWidget {
  final BoolVoidCallback onResult;

  const LoginView({required this.onResult, super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffoldView(
      title: 'Login Screen',
      child: Consumer(
        builder: (BuildContext context, LoginScreenViewModel model, _) {
          return Padding(
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
                  child: const Text('Login'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
