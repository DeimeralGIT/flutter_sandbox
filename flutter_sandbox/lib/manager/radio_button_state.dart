abstract class RadioButtonState {
  RadioButtonState({
    required this.selectedIndex,
  });
  final int selectedIndex;
}

class RadioButtonInitialState extends RadioButtonState {
  RadioButtonInitialState() : super(selectedIndex: 0);
}

class RadioButtonNeedsUpdateState extends RadioButtonState {
  RadioButtonNeedsUpdateState({
    required super.selectedIndex,
  });
}

class RadioButtonUpdatedState extends RadioButtonState {
  RadioButtonUpdatedState({
    required super.selectedIndex,
  });
}
