import 'package:auto_route/auto_route.dart';
import 'package:working_with_auto_route_guards/app/navigation/auth_guard.dart';
import 'package:working_with_auto_route_guards/app/type_declarations/type_declarations.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen|View,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        _routes.initialRoute,
        ..._routes.protectedRuotes,
        ..._routes.otherRoutes,
      ];
}

AutoRoute autoRouteCallback(PageInfo page) => AutoRoute(page: page);

final Routes _routes = (
  initialRoute: AutoRoute(
    page: HomeRoute.page,
    initial: true,
  ),
  protectedRuotes: [
    AutoRoute(
      page: ProfileRoute.page,
      guards: [
        AuthGuard(),
      ],
    )
  ],
  otherRoutes: [
    AboutRoute.page,
    LoginRoute.page,
  ].map(autoRouteCallback)
);

// Implementing AppRouter Class

  // - requires three parameters:
  
  //   - 1: annotating your AppRouter class with:
  
  //          - @AppRouterConfig()
  
  //              - an annotation that gives the compiler some meta data
  //                to work with auto_route_generator and designates the
  //                class to be an app router

  //   - 2: extending (inheriting) $NameOfYourRouterClass
  
  //   - 3: annotating all view "pages or screens" with @RoutePage()

  