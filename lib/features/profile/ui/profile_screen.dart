import 'package:auto_route/auto_route.dart';
import 'package:auto_route_show_case/features/navigation/app_router.gr.dart';
import 'package:flutter/material.dart';

/// {@template ProfileScreen.class}
/// ProfileScreen widget.
/// {@endtemplate}
@RoutePage()
class ProfileScreen extends StatelessWidget {
  /// {@macro ProfileScreen.class}
  const ProfileScreen({super.key});

  void _onProfileSettingsTap(BuildContext context) {
    context.pushRoute(ProfileSettingsRoute());
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Profile Screen'),
          actions: [IconButton(onPressed: () => _onProfileSettingsTap(context), icon: Icon(Icons.settings))],
        ),
        body: Center(child: Text('Profile Screen Body')),
      );
}
