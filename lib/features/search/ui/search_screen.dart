import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

/// {@template SearchScreen.class}
/// SearchScreen widget.
/// {@endtemplate}
@RoutePage()
class SearchScreen extends StatelessWidget {
  /// {@macro SearchScreen.class}
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Search Screen')),
        body: Center(child: Text('Search Screen Body')),
      );
}
