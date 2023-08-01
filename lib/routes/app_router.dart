import 'package:auto_route/auto_route.dart';
import 'package:working_with_auto_route_guards/routes/guard/auth_guard.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        _routes.initialRoute,
        ..._routes.protectedRuotes,
        ..._routes.otherRoutes,
      ];
}

AutoRoute autoRouteCallback(PageInfo page) => AutoRoute(page: page);

typedef Routes = ({AutoRoute initialRoute, List<AutoRoute> protectedRuotes, List<AutoRoute> otherRoutes});

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
  ].map(autoRouteCallback).toList()
);
