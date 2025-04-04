import 'dart:developer' as dev;

import 'package:auto_route/auto_route.dart';
import 'package:auto_route_show_case/features/authentication/ui/authentication_scope.dart';
import 'package:auto_route_show_case/features/navigation/app_router.gr.dart';
import 'package:flutter/cupertino.dart';

@immutable
class AuthenticationGuard extends AutoRouteGuard {
  const AuthenticationGuard(this.guardKey);

  final String guardKey;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final context = router.navigatorKey.currentContext ?? resolver.context;
    final isAuthenticated = AuthenticationScope.authenticatedOf(context);
    dev.log('Guard observer work with key: $guardKey');
    dev.log('Now I\'m authenticated: $isAuthenticated');
    return isAuthenticated ? resolver.next() : resolver.redirectUntil(SignInRoute());
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthenticationGuard && runtimeType == other.runtimeType && guardKey == other.guardKey;

  @override
  int get hashCode => guardKey.hashCode;
}
