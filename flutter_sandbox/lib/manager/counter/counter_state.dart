abstract class CounterState {
  CounterState({
    required this.counterValue,
  });
  final int counterValue;
}

class CounterInitialState extends CounterState {
  CounterInitialState() : super(counterValue: 0);
}

class CounterNeedsUpdateState extends CounterState {
  CounterNeedsUpdateState({
    required super.counterValue,
  });
}

class CounterUpdatedState extends CounterState {
  CounterUpdatedState({
    required super.counterValue,
  });
}
