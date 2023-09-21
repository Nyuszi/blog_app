import 'package:auto_route/auto_route.dart';
import 'router.gr.dart';
import 'login_guard.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    RedirectRoute(path: '/', redirectTo: '/auth'),
    AutoRoute(
      path: '/feed',
      page: FeedRoute.page,
      guards: [AuthGuard()],
    ),
    AutoRoute(
      path: '/auth',
      page: AuthRoute.page,
    ),
    AutoRoute(
      path: '/article',
      page: ArticleRoute.page,
    ),
  ];
}
