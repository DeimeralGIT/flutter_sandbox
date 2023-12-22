abstract class TextInputState {
  String text;
  bool isObscured;
  TextInputState({
    required this.text,
    required this.isObscured,
  });
}

class TextInputInitialState extends TextInputState {
  TextInputInitialState()
      : super(
          text: '',
          isObscured: false,
        );
}

class TextInputUpdateState extends TextInputState {
  TextInputUpdateState({
    required super.isObscured,
    required super.text,
  });
}
