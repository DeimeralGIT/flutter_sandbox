import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/manager/radio_button_bloc.dart';
import 'package:flutter_sandbox/manager/radio_button_event.dart';
import 'package:flutter_sandbox/manager/radio_button_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final bloc = RadioButtonBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          top: 64,
          bottom: 24,
        ),
        child: BlocBuilder<RadioButtonBloc, RadioButtonState>(
            bloc: bloc,
            builder: (context, state) {
              return ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => CustomRadioButton(
                  bloc: bloc,
                  index: index,
                ),
              );
            }),
      ),
    );
  }
}

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
    super.key,
    required this.bloc,
    required this.index,
  });

  final RadioButtonBloc bloc;
  final int index;

  void onRadioButtonTap() {
    bloc.add(RadioButtonUpdateEvent(selectedIndex: index));
  }

  bool get isSelected => bloc.state.selectedIndex == index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onRadioButtonTap,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 22,
          bottom: 6,
          left: 24,
          right: 24,
        ),
        child: Row(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color.fromRGBO(255, 66, 66, 1),
                ),
                color: isSelected ? const Color.fromRGBO(255, 66, 66, 1) : null,
              ),
              child: SizedBox(
                height: 52,
                width: 52,
                child: isSelected
                    ? null
                    : const Center(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 66, 66, 0.3),
                            shape: BoxShape.circle,
                          ),
                          child: SizedBox(
                            height: 2,
                            width: 2,
                          ),
                        ),
                      ),
              ),
            ),
            const SizedBox(width: 16),
            const Text(
              'Radio button',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
