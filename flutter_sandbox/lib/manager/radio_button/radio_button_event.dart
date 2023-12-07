abstract class RadioButtonEvent {}

class RadioButtonUpdateEvent extends RadioButtonEvent {
  RadioButtonUpdateEvent({
    required this.selectedIndex,
  });
  final int selectedIndex;
}
