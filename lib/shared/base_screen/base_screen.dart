import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  final String title;
  final Widget child;
  const BaseScreen({required this.title, required this.child, super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.purple,
              title: Text(title),
            ),
            body: child),
      );
}
