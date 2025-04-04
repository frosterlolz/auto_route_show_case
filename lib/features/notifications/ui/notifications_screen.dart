import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

/// {@template NotificationsScreen.class}
/// NotificationsScreen widget.
/// {@endtemplate}
@RoutePage()
class NotificationsScreen extends StatelessWidget {
  /// {@macro NotificationsScreen.class}
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Notifications Screen')),
        body: Center(child: Text('Notifications Screen Body')),
      );
}
