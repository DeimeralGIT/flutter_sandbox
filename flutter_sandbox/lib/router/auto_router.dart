import 'package:auto_route/auto_route.dart';
import 'package:flutter_sandbox/presentation/pages/splash_page/splash_page.dart';
import 'package:flutter_sandbox/presentation/pages/radio_button_page/radio_button_page.dart';

part 'auto_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/splash',
          initial: true,
          page: SplashRoute.page,
        ),
        AutoRoute(
          path: '/radio_button',
          page: RadioButtonRoute.page,
        ),
      ];
}
