import 'package:auto_route/auto_route.dart';
import 'package:auto_route_show_case/features/authentication/ui/authentication_scope.dart';
import 'package:auto_route_show_case/features/navigation/app_router.gr.dart';
import 'package:flutter/material.dart';

/// {@template SignInScreen.class}
/// SignInScreen widget.
/// {@endtemplate}
@RoutePage()
class SignInScreen extends StatelessWidget {
  /// {@macro SignInScreen.class}
  const SignInScreen({super.key});

  void _onSignInTap(BuildContext context) {
    AuthenticationScope.of(context).signIn();
  }

  void _onHaveNoAccountTap(BuildContext context) {
    context.pushRoute(SignUpRoute());
  }

  @override
  Widget build(BuildContext context) => AutoLeadingButton.builder(
      builder: (context, leading) => Scaffold(
            appBar: AppBar(
              title: Text('Sign In Screen'),
              leading: leading,
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  spacing: 10.0,
                  children: [
                    ElevatedButton(onPressed: () => _onSignInTap(context), child: Text('Sign in')),
                    TextButton(onPressed: () => _onHaveNoAccountTap(context), child: Text('Have no account?')),
                  ],
                ),
              ),
            ),
          ));
}
