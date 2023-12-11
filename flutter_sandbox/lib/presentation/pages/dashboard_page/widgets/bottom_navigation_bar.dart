import 'package:flutter/material.dart';
import 'package:flutter_sandbox/di/di.dart';
import 'package:flutter_sandbox/manager/dashboard_manager/dashboard_manager_bloc.dart';
import 'package:flutter_sandbox/manager/dashboard_manager/dashboard_manager_event.dart';
import 'package:flutter_sandbox/presentation/pages/dashboard_page/widgets/bottom_navigation_tab.dart';

class BottomNavigationBar extends StatelessWidget {
  BottomNavigationBar({super.key});

  final dashboardBloc = sl<DashboardManagerBloc>();

  void onPress(int index) {
    dashboardBloc.add(DashboardManagerUpdateEvent(selectedIndex: index));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83,
      color: const Color.fromRGBO(22, 22, 22, 70),
      child: Row(
        children: [
          BottomNavigationTab(title: 'Book', onPress: () => onPress(0)),
          BottomNavigationTab(title: 'My Trips', onPress: () => onPress(1)),
        ],
      ),
    );
  }
}
