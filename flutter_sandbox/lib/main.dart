import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/di/di.dart';
import 'package:flutter_sandbox/router/auto_router.dart';
import 'package:flutter_sandbox/utils/custom_theme.dart';
import 'package:talker_bloc_logger/talker_bloc_logger_observer.dart';

void main() {
  DependencyInjectionManager.registerDashboardManager();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Bloc.observer = TalkerBlocObserver();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MediaQuery.of(context).platformBrightness == Brightness.light
          ? lightTheme
          : darkTheme,

      // ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      //   useMaterial3: true,
      // ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final AppRouter appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.config(),
    );
  }
}
