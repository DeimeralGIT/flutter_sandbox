import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sandbox/presentation/pages/check_in_page/check_in_page.dart';
import 'package:flutter_sandbox/presentation/pages/more_page/more_page.dart';
import 'package:flutter_sandbox/presentation/pages/my_trips_page/my_trips_page.dart';
import 'package:flutter_sandbox/presentation/pages/book_page/book_page.dart';
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
              path: 'book',
              page: BookRoute.page,
            ),
            AutoRoute(
              path: 'my_trips',
              page: MyTripsRoute.page,
            ),
            AutoRoute(
              path: 'check_in',
              page: CheckInRoute.page,
            ),
            AutoRoute(
              path: 'more',
              page: MoreRoute.page,
            ),
          ],
        )
      ];
}
