import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        _routes.initialRoute,
        ..._routes.otherRoutes,
      ];
}

AutoRoute autoRouteCallback(PageInfo page) => AutoRoute(page: page);

typedef Routes = ({AutoRoute initialRoute, List<AutoRoute> otherRoutes});

final Routes _routes = (
  initialRoute: AutoRoute(
    page: HomeRoute.page,
    initial: true,
  ),
  otherRoutes: [
    AboutRoute.page,
    LoginRoute.page,
    ProfileRoute.page,
  ].map(autoRouteCallback).toList()
);
