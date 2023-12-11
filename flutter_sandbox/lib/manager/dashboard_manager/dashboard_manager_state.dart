abstract class DashboardManagerState {
  DashboardManagerState({
    required this.selectedIndex,
  });
  final int selectedIndex;
}

class DashboardManagerInitialState extends DashboardManagerState {
  DashboardManagerInitialState({super.selectedIndex = 0});
}

class DashboardManagerUpdatedState extends DashboardManagerState {
  DashboardManagerUpdatedState({
    required super.selectedIndex,
  });
}
