import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:working_with_auto_route_guards/features/shared/base_scaffold_view.dart';

@RoutePage()
class AboutView extends StatelessWidget {
  const AboutView({super.key});

  Widget build(BuildContext context) => const BaseScaffoldView(
        title: 'About Screen',
        child: Column(),
      );
}
