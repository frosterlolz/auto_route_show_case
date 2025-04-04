import 'dart:developer' as dev;

import 'package:flutter/cupertino.dart';

final class AuthenticationService extends ChangeNotifier {
  late bool _isAuthenticated;

  AuthenticationService(this._isAuthenticated);

  bool get isAuthenticated => _isAuthenticated;

  Future<void> signIn() async {
    final nextValue = await Future<bool>.value(true);
    _changeAuthStatus(nextValue);
  }

  Future<void> signOut() async {
    final nextValue = await Future<bool>.value(false);
    _changeAuthStatus(nextValue);
  }

  void _changeAuthStatus(bool v) {
    if (_isAuthenticated == v) return;
    _isAuthenticated = v;
    dev.log('Authenticated status changed: Now I\'m authenticated: $_isAuthenticated');
    notifyListeners();
  }
}
