import 'package:auto_route/auto_route.dart';
import 'package:working_with_auto_route_guards/app/router/app_router.gr.dart';

// AutoRouteGuard

//   - Middleware that resumes or aborts navigation
//     based on a predicate function

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    router.push(
      LoginRoute(onResult: (bool? result) {}),
    );
  }
}
