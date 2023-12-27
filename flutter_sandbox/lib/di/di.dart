import 'package:flutter_sandbox/manager/dashboard_manager/dashboard_manager_bloc.dart';
import 'package:flutter_sandbox/net/app_repository.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

final appRepository = GetIt.I<AppRepository>();

class DependencyInjectionManager {
  static void registerLazySingletons() {
    registerDashboardManager();
  }

  static void registerDashboardManager() {
    sl.registerLazySingleton<DashboardManagerBloc>(
      () => DashboardManagerBloc(),
    );
  }
}
