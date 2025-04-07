import 'dart:developer' as dev;

import 'package:auto_route_show_case/features/authentication/domain/authentication_service.dart';
import 'package:flutter/material.dart';

/// {@template AuthenticationScope.class}
/// AuthenticationScope widget.
/// {@endtemplate}
class AuthenticationScope extends StatefulWidget {
  /// {@macro AuthenticationScope.class}
  const AuthenticationScope(this._authenticationService, {super.key, required this.child});

  final AuthenticationService _authenticationService;
  final Widget child;

  static _AuthenticationScopeInherited? _maybeOf(BuildContext context, {bool listen = true}) => listen
      ? context.dependOnInheritedWidgetOfExactType<_AuthenticationScopeInherited>()
      : context.getInheritedWidgetOfExactType<_AuthenticationScopeInherited>();

  /// Get the [AuthenticationService] instance.
  static AuthenticationService of(BuildContext context, {bool listen = true}) =>
      _maybeOf(context, listen: listen)!.state._authenticationService;

  /// Get [isAuthenticated] bool value.
  static bool authenticatedOf(BuildContext context, {bool listen = true}) =>
      _maybeOf(context, listen: listen)!.state._authenticationService.isAuthenticated;

  @override
  State<AuthenticationScope> createState() => _AuthenticationScopeState();
}

class _AuthenticationScopeState extends State<AuthenticationScope> {
  late final AuthenticationService _authenticationService;

  @override
  void initState() {
    super.initState();
    _authenticationService = widget._authenticationService;
  }

  @override
  void dispose() {
    _authenticationService.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ListenableBuilder(
        listenable: _authenticationService,
        builder: (context, _) => _AuthenticationScopeInherited(
          state: this,
          isAuthenticated: _authenticationService.isAuthenticated,
          child: widget.child,
        ),
      );
}

class _AuthenticationScopeInherited extends InheritedWidget {
  const _AuthenticationScopeInherited({
    required super.child,
    required this.state,
    required this.isAuthenticated,
  });

  final _AuthenticationScopeState state;
  final bool isAuthenticated;

  @override
  bool updateShouldNotify(_AuthenticationScopeInherited old) {
    final shouldNotify = isAuthenticated != old.isAuthenticated;
    dev.log('Inherited notified with authStatus: $isAuthenticated');
    return shouldNotify;
  }
}
