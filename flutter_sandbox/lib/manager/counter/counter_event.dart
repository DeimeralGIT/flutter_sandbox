abstract class CounterEvent {}

class CounterUpdateEvent extends CounterEvent {
  CounterUpdateEvent({
    required this.counterValue,
  });
  final int counterValue;
}
