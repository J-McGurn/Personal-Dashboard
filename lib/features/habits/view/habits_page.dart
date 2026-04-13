import 'package:flutter/material.dart';
import '../../../app/layout/main_layout.dart';

class HabitsPage extends StatelessWidget {
  const HabitsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      child: Center(child: Text('Habits')),
    );
  }
}