abstract class DashboardManagerEvent {}

class DashboardManagerUpdateEvent extends DashboardManagerEvent {
  DashboardManagerUpdateEvent({
    required this.selectedIndex,
  });
  final int selectedIndex;
}
