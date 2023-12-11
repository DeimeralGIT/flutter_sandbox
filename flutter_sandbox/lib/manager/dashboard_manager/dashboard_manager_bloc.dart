import 'package:bloc/bloc.dart';
import 'package:flutter_sandbox/manager/dashboard_manager/dashboard_manager_event.dart';
import 'package:flutter_sandbox/manager/dashboard_manager/dashboard_manager_state.dart';

class DashboardManagerBloc extends Bloc<DashboardManagerEvent, DashboardManagerState> {
  DashboardManagerBloc() : super(DashboardManagerInitialState()) {
    on<DashboardManagerUpdateEvent>((event, emit) {
      emit(DashboardManagerUpdatedState(selectedIndex: event.selectedIndex));
      emit(DashboardManagerInitialState(selectedIndex: event.selectedIndex));
    });
  }
}
