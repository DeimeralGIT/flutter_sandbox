// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'auto_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CounterRoute.name: (routeData) {
      final args = routeData.argsAs<CounterRouteArgs>(orElse: () => const CounterRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MyTripsPage(key: args.key),
      );
    },
    DashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DashboardPage(),
      );
    },
    RadioButtonRoute.name: (routeData) {
      final args = routeData.argsAs<RadioButtonRouteArgs>(orElse: () => const RadioButtonRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BookPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [MyTripsPage]
class CounterRoute extends PageRouteInfo<CounterRouteArgs> {
  CounterRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CounterRoute.name,
          args: CounterRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CounterRoute';

  static const PageInfo<CounterRouteArgs> page = PageInfo<CounterRouteArgs>(name);
}

class CounterRouteArgs {
  const CounterRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CounterRouteArgs{key: $key}';
  }
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BookPage]
class RadioButtonRoute extends PageRouteInfo<RadioButtonRouteArgs> {
  RadioButtonRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          RadioButtonRoute.name,
          args: RadioButtonRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RadioButtonRoute';

  static const PageInfo<RadioButtonRouteArgs> page = PageInfo<RadioButtonRouteArgs>(name);
}

class RadioButtonRouteArgs {
  const RadioButtonRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'RadioButtonRouteArgs{key: $key}';
  }
}
