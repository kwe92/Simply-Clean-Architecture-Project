import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        // routes go here
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        ),
        ..._routes
      ];
}

AutoRoute autoRouteCallback(PageInfo page) => AutoRoute(page: page);

final List<AutoRoute> _routes = [
  AboutRoute.page,
  LoginRoute.page,
  ProfileRoute.page,
]
    .map(
      autoRouteCallback,
    )
    .toList();
