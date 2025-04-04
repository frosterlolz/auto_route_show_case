import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// {@template NotificationsTabScreen.class}
/// NotificationsTabScreen widget.
/// {@endtemplate}
@RoutePage()
class NotificationsTabScreen extends StatelessWidget {
  /// {@macro NotificationsTabScreen.class}
  const NotificationsTabScreen({super.key});

  @override
  Widget build(BuildContext context) => AutoRouter();
}
