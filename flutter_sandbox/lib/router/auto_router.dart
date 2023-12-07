import 'package:auto_route/auto_route.dart';
import 'package:flutter_sandbox/presentation/pages/counter_page/counter_page.dart';
import 'package:flutter_sandbox/presentation/pages/radio_button_page/radio_button_page.dart';
import 'package:flutter_sandbox/presentation/pages/dashboard_page/dashboard_page.dart';

part 'auto_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          maintainState: false,
          page: DashboardRoute.page,
          path: '/dashboard',
          initial: true,
          children: [
            AutoRoute(
              maintainState: false,
              path: 'splash',
              page: CounterRoute.page,
            ),
            AutoRoute(
              maintainState: false,
              path: 'radio_button',
              page: RadioButtonRoute.page,
            ),
          ],
        )
      ];
}
