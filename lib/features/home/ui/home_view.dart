// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:working_with_auto_route_guards/app/resources/reusables.dart';
import 'package:working_with_auto_route_guards/app/router/app_router.gr.dart';
import 'package:working_with_auto_route_guards/features/login/ui/login_view_model.dart';
import 'package:working_with_auto_route_guards/features/shared/services/toast_service.dart';
import 'package:working_with_auto_route_guards/features/shared/ui/base_scaffold_view.dart';

// TODO: Navigate with a drawer instead of buttons? | call the button navigate?

// TODO: replace with get_it singleton
const _toastService = ToastService();

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: use appRoute singleton get_it package
    StackRouter router = AutoRouter.of(context);

    return BaseScaffoldView(
      title: 'Home View',
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
              onPressed: () {
                // TODO: use appRoute singleton get_it package
                router.push(const ProfileRoute());
              },
              child: const Text('Go to protected route'),
            ),
            gaph24,
            OutlinedButton(
              // TODO: Route to About Page
              onPressed: () {
                router.push(const AboutRoute());
              },
              child: const Text('Go to normal route'),
            ),
            gaph32,
            // TODO: move logout button to profile screen eventually
            OutlinedButton(
              child: const Text('Logout'),
              onPressed: () async {
                SharedPreferences pref = await SharedPreferences.getInstance();

                // clear data persisting on disk
                pref.clear();

                // call clearControllers without the need to use a Consumer widget
                context.read<LoginScreenViewModel>().clearControllers();

                // show bottom snackBar when user logs out
                _toastService.showSnackBar(context: context, message: 'Logout successful!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
