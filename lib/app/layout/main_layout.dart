import 'package:flutter/material.dart';
import 'sidebar.dart';

class MainLayout extends StatelessWidget {
  final Widget child;

  const MainLayout({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Sidebar(),
        Expanded(
          child: Scaffold(
            body: child,
          ),
        ),
      ],
    );
  }
}