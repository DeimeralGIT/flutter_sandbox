import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/manager/text_input_cubit.dart/text_input_state.dart';

class TextInputCubit extends Cubit<TextInputState> {
  TextInputCubit() : super(TextInputInitialState());

  void onTextChange(String newText) {
    emit(TextInputUpdateState(isObscured: state.isObscured, text: newText));
  }

  void onObscure(bool obscured) {
    emit(TextInputUpdateState(isObscured: obscured, text: state.text));
  }
}
