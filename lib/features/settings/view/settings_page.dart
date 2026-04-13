import 'package:flutter/material.dart';
import '../../../app/layout/main_layout.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      child: Center(child: Text('Settings')),
    );
  }
}