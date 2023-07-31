import 'package:flutter/material.dart';
import 'package:working_with_auto_route_guards/shared/base_screen/base_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => BaseScreen(
        title: 'Home Screen',
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            OutlinedButton(
              onPressed: () {},
              child: const Text('Go to protected route.'),
            ),
            const SizedBox(
              height: 24,
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Go to normal route'),
            ),
          ],
        ),
      );
}
