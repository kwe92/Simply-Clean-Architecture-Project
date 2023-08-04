import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:working_with_auto_route_guards/app/resources/reusables.dart';
import 'package:working_with_auto_route_guards/app/router/app_router.gr.dart';
import 'package:working_with_auto_route_guards/features/shared/base_scaffold_view.dart';

// TODO: Navigate with a drawer instead of buttons? | cal lthe button navigate?
@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => BaseScaffoldView(
        title: 'Home Screen',
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              OutlinedButton(
                onPressed: () {
                  // TODO: use appRoute singleton
                  AutoRouter.of(context).push(const ProfileRoute());
                },
                child: const Text('Go to protected route'),
              ),
              gaph24,
              OutlinedButton(
                onPressed: () {},
                child: const Text('Go to normal route'),
              ),
              gaph32,
              OutlinedButton(
                child: const Text('Logout'),
                onPressed: () async {
                  SharedPreferences pref = await SharedPreferences.getInstance();
                  pref.clear();
                },
              ),
            ],
          ),
        ),
      );
}
