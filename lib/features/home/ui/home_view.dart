import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:working_with_auto_route_guards/app/router/app_router.gr.dart';
import 'package:working_with_auto_route_guards/features/shared/base_scaffold_view.dart';

// TODO: Navigate with a drawer instead of buttons? | cal lthe button navigate?
@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => BaseScaffoldView(
        title: 'Home Screen',
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              OutlinedButton(
                onPressed: () {
                  // TODO: use appRoute singleton
                  AutoRouter.of(context).push(const ProfileRoute());
                },
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
        ),
      );
}
