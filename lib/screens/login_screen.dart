import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:working_with_auto_route_guards/shared/base_screen/base_screen.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) => const BaseScreen(
        title: 'Login Screen',
        child: Column(),
      );
}
