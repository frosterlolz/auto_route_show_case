import 'package:auto_route/auto_route.dart';
import 'package:auto_route_show_case/features/navigation/app_router.gr.dart';

AutoRoute signInRoute({bool isRoot = false}) => AutoRoute(page: SignInRoute.page, path: isRoot ? '/signIn' : 'signIn');
AutoRoute signUpRoute({bool isRoot = false}) => AutoRoute(page: SignUpRoute.page, path: isRoot ? '/signUp' : 'signUp');
