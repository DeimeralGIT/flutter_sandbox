import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sandbox/presentation/pages/my_trips_page/counter_page.dart';
import 'package:flutter_sandbox/presentation/pages/book_page/radio_button_page.dart';
import 'package:flutter_sandbox/presentation/pages/dashboard_page/dashboard_page.dart';

part 'auto_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: DashboardRoute.page,
          path: '/dashboard',
          initial: true,
          children: [
            AutoRoute(
              path: 'splash',
              page: CounterRoute.page,
            ),
            AutoRoute(
              path: 'radio_button',
              page: RadioButtonRoute.page,
            ),
          ],
        )
      ];
}
