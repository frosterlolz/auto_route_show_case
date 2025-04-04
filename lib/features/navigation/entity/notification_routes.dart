import 'package:auto_route/auto_route.dart';
import 'package:auto_route_show_case/features/navigation/app_router.gr.dart';
import 'package:auto_route_show_case/features/navigation/authentication_guard.dart';
import 'package:auto_route_show_case/features/navigation/entity/authentication_routes.dart';

final notificationsTabRoute = AutoRoute(page: NotificationsTabRoute.page, path: 'notifications', children: [
  notificationsRoute,
  signInRoute(),
  signUpRoute(),
]);

final notificationsRoute =
    AutoRoute(page: NotificationsRoute.page, path: '', guards: [AuthenticationGuard('NotificationsRoute')]);
