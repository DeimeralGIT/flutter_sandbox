import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/di/di.dart';
import 'package:flutter_sandbox/manager/dashboard_manager/dashboard_manager_bloc.dart';
import 'package:flutter_sandbox/manager/dashboard_manager/dashboard_manager_event.dart';
import 'package:flutter_sandbox/manager/dashboard_manager/dashboard_manager_state.dart';
import 'package:flutter_svg/svg.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final dashboardBloc = sl<DashboardManagerBloc>();

    void onNavigatorTabItemTap(int index) {
      dashboardBloc.add(DashboardManagerUpdateEvent(selectedIndex: index));
    }

    return BlocBuilder<DashboardManagerBloc, DashboardManagerState>(
      bloc: dashboardBloc,
      builder: (context, state) {
        Color getItemColor(int index) => index == state.selectedIndex
            ? const Color.fromRGBO(136, 139, 141, 1)
            : const Color.fromRGBO(255, 255, 255, 1);

        return Theme(
          data: ThemeData(
            canvasColor: const Color.fromRGBO(22, 22, 22, 0.7),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed, // prevents tabs from shifting
            elevation: 0, // removes top shadow
            useLegacyColorScheme: false, // prevents manual color overriding
            currentIndex: state.selectedIndex,
            showUnselectedLabels: true,
            selectedLabelStyle: const TextStyle(
              fontSize: 10,
              color: Color.fromRGBO(136, 139, 141, 1),
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 10,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            onTap: onNavigatorTabItemTap,
            items: dashboardBloc.pages
                .map(
                  (pageModel) => BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      pageModel.iconData,
                      height: 23,
                      width: 23,
                      colorFilter: ColorFilter.mode(
                        getItemColor(pageModel.index),
                        BlendMode.srcIn,
                      ),
                    ),
                    label: pageModel.label.tr(),
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}
