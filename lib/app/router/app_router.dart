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
