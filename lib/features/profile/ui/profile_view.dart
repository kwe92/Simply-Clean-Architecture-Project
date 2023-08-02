import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:working_with_auto_route_guards/features/shared/base_scaffold_view.dart';

@RoutePage()
class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) => const BaseScaffoldView(
        title: 'ProfileScreen',
        child: Column(),
      );
}
