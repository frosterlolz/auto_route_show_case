import 'package:auto_route/auto_route.dart';
import 'package:auto_route_show_case/features/navigation/app_router.gr.dart';
import 'package:auto_route_show_case/features/navigation/authentication_guard.dart';
import 'package:auto_route_show_case/features/navigation/entity/authentication_routes.dart';

final profileTabRoute = AutoRoute(page: ProfileTabRoute.page, path: 'profile', children: [
  profileRoute,
  profileSettingsRoute,
  signInRoute(),
  signUpRoute(),
]);

final profileRoute = AutoRoute(page: ProfileRoute.page, path: '', guards: [AuthenticationGuard('ProfileRoute')]);
final profileSettingsRoute =
    AutoRoute(page: ProfileSettingsRoute.page, path: 'settings', guards: [AuthenticationGuard('ProfileSettingsRoute')]);
