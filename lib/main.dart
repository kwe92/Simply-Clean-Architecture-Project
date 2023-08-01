import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:working_with_auto_route_guards/routes/app_router.dart';
import 'package:working_with_auto_route_guards/screens/models/login_screen_view_model.dart';

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
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: const ColorScheme.light(
              brightness: Brightness.light,
            ),
          ),
          routerConfig: _appRouter.config(),
        ),
      );
}
