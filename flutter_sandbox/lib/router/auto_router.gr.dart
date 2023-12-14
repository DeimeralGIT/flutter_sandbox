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
    BookRoute.name: (routeData) {
      final args =
          routeData.argsAs<BookRouteArgs>(orElse: () => const BookRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BookPage(key: args.key),
      );
    },
    CheckInRoute.name: (routeData) {
      final args = routeData.argsAs<CheckInRouteArgs>(
          orElse: () => const CheckInRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CheckInPage(key: args.key),
      );
    },
    DashboardRoute.name: (routeData) {
      final args = routeData.argsAs<DashboardRouteArgs>(
          orElse: () => const DashboardRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DashboardPage(key: args.key),
      );
    },
    MyTripsRoute.name: (routeData) {
      final args = routeData.argsAs<MyTripsRouteArgs>(
          orElse: () => const MyTripsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MyTripsPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [BookPage]
class BookRoute extends PageRouteInfo<BookRouteArgs> {
  BookRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          BookRoute.name,
          args: BookRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'BookRoute';

  static const PageInfo<BookRouteArgs> page = PageInfo<BookRouteArgs>(name);
}

class BookRouteArgs {
  const BookRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'BookRouteArgs{key: $key}';
  }
}

/// generated route for
/// [CheckInPage]
class CheckInRoute extends PageRouteInfo<CheckInRouteArgs> {
  CheckInRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CheckInRoute.name,
          args: CheckInRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CheckInRoute';

  static const PageInfo<CheckInRouteArgs> page =
      PageInfo<CheckInRouteArgs>(name);
}

class CheckInRouteArgs {
  const CheckInRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CheckInRouteArgs{key: $key}';
  }
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<DashboardRouteArgs> {
  DashboardRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          DashboardRoute.name,
          args: DashboardRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const PageInfo<DashboardRouteArgs> page =
      PageInfo<DashboardRouteArgs>(name);
}

class DashboardRouteArgs {
  const DashboardRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'DashboardRouteArgs{key: $key}';
  }
}

/// generated route for
/// [MyTripsPage]
class MyTripsRoute extends PageRouteInfo<MyTripsRouteArgs> {
  MyTripsRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MyTripsRoute.name,
          args: MyTripsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MyTripsRoute';

  static const PageInfo<MyTripsRouteArgs> page =
      PageInfo<MyTripsRouteArgs>(name);
}

class MyTripsRouteArgs {
  const MyTripsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'MyTripsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [MorePage]
class MoreRoute extends PageRouteInfo<MoreRouteArgs> {
  MoreRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MoreRoute.name,
          args: MoreRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MoreRoute';

  static const PageInfo<MoreRouteArgs> page = PageInfo<MoreRouteArgs>(name);
}

class MoreRouteArgs {
  const MoreRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'MoreRouteArgs{key: $key}';
  }
}
