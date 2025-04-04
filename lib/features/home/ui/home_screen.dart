import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

/// {@template HomeScreen.class}
/// HomeScreen widget.
/// {@endtemplate}
@RoutePage()
class HomeScreen extends StatelessWidget {
  /// {@macro HomeScreen.class}
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Home Screen')),
        body: Center(child: Text('Home Screen Body')),
      );
}
