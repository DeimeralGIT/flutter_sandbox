import 'package:bloc/bloc.dart';
import 'package:flutter_sandbox/manager/radio_button/radio_button_event.dart';
import 'package:flutter_sandbox/manager/radio_button/radio_button_state.dart';

class RadioButtonBloc extends Bloc<RadioButtonEvent, RadioButtonState> {
  RadioButtonBloc() : super(RadioButtonInitialState()) {
    on<RadioButtonUpdateEvent>((event, emit) {
      emit(RadioButtonNeedsUpdateState(selectedIndex: state.selectedIndex));
      emit(RadioButtonUpdatedState(selectedIndex: event.selectedIndex));
    });
  }
}
