import 'package:go_router/go_router.dart';
import '../features/dashboard/view/dashboard_page.dart';
import '../features/habits/view/habits_page.dart';
import '../features/settings/view/settings_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/dashboard',
      builder: (context, state) => const DashboardPage(),
    ),
    GoRoute(
      path: '/habits',
      builder: (context, state) => const HabitsPage(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsPage(),
    ),
  ],
  initialLocation: '/dashboard',
);