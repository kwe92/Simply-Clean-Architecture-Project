import 'package:flutter/material.dart';

class BaseScaffoldView extends StatelessWidget {
  final String title;
  final Widget child;
  const BaseScaffoldView({required this.title, required this.child, super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(86, 35, 84, 1),
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
