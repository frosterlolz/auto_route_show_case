import 'package:auto_route/auto_route.dart';
import 'package:auto_route_show_case/features/navigation/app_router.gr.dart';
import 'package:auto_route_show_case/features/navigation/entity/notification_routes.dart';
import 'package:auto_route_show_case/features/navigation/entity/profile_routes.dart';

/// {@template router.class}
/// Main point of the application navigation.
/// {@endtemplate}
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: DashboardRoute.page,
          initial: true,
          children: [
            AutoRoute(page: HomeRoute.page),
            AutoRoute(page: SearchRoute.page),
            notificationsTabRoute,
            profileTabRoute,
          ],
        ),
      ];
}
