import 'package:auto_route/auto_route.dart';
import 'package:auto_route_show_case/features/navigation/app_router.gr.dart';
import 'package:flutter/material.dart';

/// {@template DashboardScreen.class}
/// DashboardScreen widget.
/// {@endtemplate}
@RoutePage()
class DashboardScreen extends StatelessWidget {
  /// {@macro DashboardScreen.class}
  const DashboardScreen({super.key});

  static const _icons = [
    MapEntry('Home', Icons.home),
    MapEntry('Search', Icons.search),
    MapEntry('Notifications', Icons.notifications),
    MapEntry('Profile', Icons.person),
  ];

  @override
  Widget build(BuildContext context) => AutoTabsScaffold(
        routes: [
          HomeRoute(),
          SearchRoute(),
          NotificationsTabRoute(),
          ProfileTabRoute(),
        ],
        bottomNavigationBuilder: (context, tabsRouter) => BottomNavigationBar(
          onTap: tabsRouter.setActiveIndex,
          currentIndex: tabsRouter.activeIndex,
          items: _icons
              .map((bottomNavBarEntry) =>
                  BottomNavigationBarItem(label: bottomNavBarEntry.key, icon: Icon(bottomNavBarEntry.value)))
              .toList(),
        ),
      );
}
