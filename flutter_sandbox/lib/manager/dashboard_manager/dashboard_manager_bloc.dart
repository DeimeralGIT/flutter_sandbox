import 'package:bloc/bloc.dart';
import 'package:flutter_sandbox/manager/dashboard_manager/dashboard_manager_event.dart';
import 'package:flutter_sandbox/manager/dashboard_manager/dashboard_manager_state.dart';
import 'package:flutter_sandbox/models/page_model.dart';
import 'package:flutter_sandbox/presentation/pages/book_page/book_page.dart';
import 'package:flutter_sandbox/presentation/pages/check_in_page/check_in_page.dart';
import 'package:flutter_sandbox/presentation/pages/more_page/more_page.dart';
import 'package:flutter_sandbox/presentation/pages/my_trips_page/my_trips_page.dart';
import 'package:flutter_sandbox/utils/assets.dart';

class DashboardManagerBloc
    extends Bloc<DashboardManagerEvent, DashboardManagerState> {
  DashboardManagerBloc() : super(DashboardManagerInitialState()) {
    on<DashboardManagerUpdateEvent>((event, emit) {
      emit(DashboardManagerUpdatedState(selectedIndex: event.selectedIndex));
      emit(DashboardManagerInitialState(selectedIndex: event.selectedIndex));
    });
  }

  final pages = [
    PageModel(
      index: 0,
      label: 'book',
      iconData: planeIcon,
      page: BookPage(),
    ),
    PageModel(
      index: 1,
      label: 'my_trips',
      iconData: luggageIcon,
      page: MyTripsPage(),
    ),
    PageModel(
      index: 2,
      label: 'check_in',
      iconData: ticketIcon,
      page: CheckInPage(),
    ),
    PageModel(
      index: 3,
      label: 'more',
      iconData: moreIcon,
      page: MorePage(),
    ),
  ];
}
