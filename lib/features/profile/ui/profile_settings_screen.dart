import 'package:auto_route/annotations.dart';
import 'package:auto_route_show_case/features/authentication/ui/authentication_scope.dart';
import 'package:flutter/material.dart';

/// {@template ProfileSettingsScreen.class}
/// ProfileSettingsScreen widget.
/// {@endtemplate}
@RoutePage()
class ProfileSettingsScreen extends StatelessWidget {
  /// {@macro ProfileSettingsScreen.class}
  const ProfileSettingsScreen({super.key});

  void _onSignOutTap(BuildContext context) {
    AuthenticationScope.of(context).signOut();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Profile Settings')),
        body: Center(
          child: TextButton(
            onPressed: () => _onSignOutTap(context),
            child: Text('Sign out'),
          ),
        ),
      );
}
