import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.shade900,
      child: SizedBox(
        width: 150,
        child: Column(
          children: [
            const SizedBox(height: 24),
            
            _SidebarItem(
              icon: Icons.dashboard,
              label: 'Dashboard',
              route: '/dashboard',
            ),
            _SidebarItem(
              icon: Icons.repeat,
              label: 'Habits',
              route: '/habits',
            ),
            _SidebarItem(
              icon: Icons.settings,
              label: 'Settings',
              route: '/settings',
            ),
          ],
        ),
      ),
    );
  }
}

class _SidebarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String route;

  const _SidebarItem({
    required this.icon,
    required this.label,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    final String current = GoRouterState.of(context).matchedLocation;
    final bool selected = current == route;

    return InkWell(
      onTap: () => context.go(route),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        color: selected ? Colors.grey.shade800 : Colors.transparent,
        child: Column(
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }
}