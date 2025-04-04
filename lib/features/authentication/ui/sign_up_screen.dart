import 'package:auto_route/auto_route.dart';
import 'package:auto_route_show_case/features/authentication/ui/authentication_scope.dart';
import 'package:flutter/material.dart';

/// {@template SignUpScreen.class}
/// SignUpScreen widget.
/// {@endtemplate}
@RoutePage()
class SignUpScreen extends StatelessWidget {
  /// {@macro SignUpScreen.class}
  const SignUpScreen({super.key});

  void _onSignUpTap(BuildContext context) {
    AuthenticationScope.of(context).signIn();
  }

  void _onAlreadyHaveAccountTap(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Sign Up Screen'),
          leading: AutoLeadingButton(),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(onPressed: () => _onSignUpTap(context), child: Text('Sign up')),
                TextButton(onPressed: () => _onAlreadyHaveAccountTap(context), child: Text('Have no account?')),
              ],
            ),
          ),
        ),
      );
}
