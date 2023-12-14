import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/di/di.dart';
import 'package:flutter_sandbox/manager/dashboard_manager/dashboard_manager_bloc.dart';
import 'package:flutter_sandbox/manager/dashboard_manager/dashboard_manager_state.dart';
import 'package:flutter_sandbox/presentation/pages/dashboard_page/widgets/custom_navigation_bar.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  final dashboardBloc = sl<DashboardManagerBloc>();

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();

    return Scaffold(
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
          children: dashboardBloc.pages
              .map(
                (pageModel) => pageModel.page,
              )
              .toList(),
        ),
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
