import 'package:auto_route/auto_route.dart';
import 'package:working_with_auto_route_guards/routes/app_router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    router.push(
      const LoginRoute(),
    );
  }
}
