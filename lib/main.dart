import 'dart:async';

import 'package:auto_route_show_case/features/app/ui/app_material.dart';
import 'package:auto_route_show_case/features/authentication/domain/authentication_service.dart';
import 'package:flutter/material.dart';

void main() => runZonedGuarded(_appRunner, (e, s) {
      debugPrint('$e\n$s');
    });

Future<void> _appRunner() async {
  try {
    final isAuthenticated = await _loadAuthData();
    final authenticationService = AuthenticationService(isAuthenticated);

    runApp(AppMaterial(authenticationService: authenticationService));
  } on Object catch (e, s) {
    debugPrint('$e\n$s');
    runApp(Material(color: Colors.white, child: Center(child: Text('$e'))));
  }
}

Future<bool> _loadAuthData() async => Future<bool>.value(false);
