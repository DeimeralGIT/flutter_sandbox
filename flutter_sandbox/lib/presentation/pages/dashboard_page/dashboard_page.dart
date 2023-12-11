import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide BottomNavigationBar;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/di/di.dart';
import 'package:flutter_sandbox/manager/dashboard_manager/dashboard_manager_bloc.dart';
import 'package:flutter_sandbox/manager/dashboard_manager/dashboard_manager_state.dart';
import 'package:flutter_sandbox/presentation/pages/book_page/radio_button_page.dart';
import 'package:flutter_sandbox/presentation/pages/dashboard_page/widgets/bottom_navigation_bar.dart';
import 'package:flutter_sandbox/presentation/pages/my_trips_page/counter_page.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  final dashboardBloc = sl<DashboardManagerBloc>();

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();

    return PopScope(
        child: Scaffold(
      body: BlocListener<DashboardManagerBloc, DashboardManagerState>(
        bloc: dashboardBloc,
        listener: (_, state) {
          pageController.animateToPage(
            state.selectedIndex,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        },
        child: PageView(
          controller: pageController,
          physics: const ClampingScrollPhysics(),
          pageSnapping: true,
          children: [
            MyTripsPage(),
            BookPage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(),
    ));
  }
}
