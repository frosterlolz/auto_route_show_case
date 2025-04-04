import 'dart:developer' as dev;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class RootRouterObserver extends AutoRouterObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    dev.log(('[Router] New route pushed: ${route.settings.name}'));
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    dev.log('[Router] Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    dev.log('[Router] Tab route re-visited: ${route.name}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    dev.log('[Router] Route popped: ${route.settings.name}');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    dev.log('[Router] Route replaced: ${newRoute?.settings.name}');
  }
}
