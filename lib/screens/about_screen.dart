import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:working_with_auto_route_guards/shared/base_screen/base_screen.dart';

@RoutePage()
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  Widget build(BuildContext context) => const BaseScreen(
        title: 'About Screen',
        child: Column(),
      );
}
