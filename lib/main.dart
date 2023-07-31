import 'package:flutter/material.dart';
import 'package:working_with_auto_route_guards/screens/home_screen.dart';

void main() {
  runApp(const _RouteGuardsApp());
}

class _RouteGuardsApp extends StatelessWidget {
  const _RouteGuardsApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(useMaterial3: true, colorScheme: const ColorScheme.light(brightness: Brightness.light)),
        home: const HomeScreen(),
      );
}
