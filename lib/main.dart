import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:working_with_auto_route_guards/app/router/app_router.dart';
import 'package:working_with_auto_route_guards/app/themes/app_theme.dart';
import 'package:working_with_auto_route_guards/features/login/ui/login_view_model.dart';

// TODO: Add custom theme
void main() {
  runApp(_RouteGuardsApp());
}

class _RouteGuardsApp extends StatelessWidget {
  _RouteGuardsApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (BuildContext context) => LoginScreenViewModel(),
        child: MaterialApp.router(
          theme: appTheme,
          routerConfig: _appRouter.config(),
        ),
      );
}
