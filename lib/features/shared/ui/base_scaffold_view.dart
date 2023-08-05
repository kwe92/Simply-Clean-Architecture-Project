import 'package:flutter/material.dart';

class BaseScaffoldView extends StatelessWidget {
  final String title;
  final Widget child;
  const BaseScaffoldView({required this.title, required this.child, super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: child,
        ),
      );
}
