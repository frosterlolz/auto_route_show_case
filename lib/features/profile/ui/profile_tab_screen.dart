import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// {@template ProfileTabScreen.class}
/// ProfileTabScreen widget.
/// {@endtemplate}
@RoutePage()
class ProfileTabScreen extends StatelessWidget {
  /// {@macro ProfileTabScreen.class}
  const ProfileTabScreen({super.key});

  @override
  Widget build(BuildContext context) => AutoRouter();
}
