import 'package:bloc/bloc.dart';
import 'package:flutter_sandbox/manager/counter/counter_event.dart';
import 'package:flutter_sandbox/manager/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitialState()) {
    on<CounterUpdateEvent>((event, emit) async {
      emit(CounterNeedsUpdateState(counterValue: state.counterValue));
      await Future.delayed(const Duration(seconds: 2));
      emit(CounterUpdatedState(counterValue: event.counterValue));
    });
  }
}
