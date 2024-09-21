import 'package:auto_route/auto_route.dart';
import 'package:movie_dbca/config/routes/app_router.gr.dart';
import 'package:movie_dbca/modules/log/presentation/view/login_view.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: LoginRoute.page,
          path: LoginScreen.path,
        ),
      ];

  @override
  List<AutoRouteGuard> get guards => [
        // optionally add root guards here
      ];
}
