import 'package:auto_route_show_case/features/authentication/domain/authentication_service.dart';
import 'package:auto_route_show_case/features/authentication/ui/authentication_scope.dart';
import 'package:auto_route_show_case/features/navigation/app_router.dart';
import 'package:auto_route_show_case/features/navigation/root_router_observer.dart';
import 'package:flutter/material.dart';

/// {@template AppMaterial.class}
/// AppMaterial widget.
/// {@endtemplate}
class AppMaterial extends StatefulWidget {
  /// {@macro AppMaterial.class}
  const AppMaterial({super.key, required this.authenticationService});

  final AuthenticationService authenticationService;

  @override
  State<AppMaterial> createState() => _AppMaterialState();
}

class _AppMaterialState extends State<AppMaterial> {
  late final AppRouter _appRouter;

  @override
  void initState() {
    super.initState();
    _appRouter = AppRouter();
  }

  @override
  Widget build(BuildContext context) => AuthenticationScope(
        widget.authenticationService,
        child: Builder(
          builder: (context) => MaterialApp.router(
            title: 'AutoRoute showcase',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                colorSchemeSeed: Colors.blue,
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
                  selectedItemColor: Colors.black,
                  unselectedItemColor: Colors.grey,
                )),

            /// Navigation
            routerConfig: _appRouter.config(
              reevaluateListenable: AuthenticationScope.of(context),
              navigatorObservers: () => [RootRouterObserver()],
            ),
          ),
        ),
      );
}
