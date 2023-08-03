import 'package:auto_route/auto_route.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:working_with_auto_route_guards/app/router/app_router.gr.dart';

// AutoRouteGuard

//   - Middleware that resumes or aborts navigation
//     based on a predicate function

class AuthGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(NavigationResolver resolver, StackRouter router) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool? loggedIn = pref.getBool('logged_in') ?? false;

    loggedIn
        ? resolver.next(true)
        : router.push(
            LoginRoute(onResult: (bool? result) {
              // if true then go to desired route
              if (result == true) {
                // goto specified route
                resolver.next(true);
                // remove login screen from route
                router.removeLast();
              }
            }),
          );
  }
}
