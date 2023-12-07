import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/manager/radio_button/radio_button_bloc.dart';
import 'package:flutter_sandbox/manager/radio_button/radio_button_event.dart';
import 'package:flutter_sandbox/manager/radio_button/radio_button_state.dart';
import 'package:flutter_sandbox/presentation/pages/radio_button_page/widgets/custom_radio_button.dart';

@RoutePage()
class RadioButtonPage extends StatelessWidget {
  RadioButtonPage({super.key});
  final bloc = RadioButtonBloc();
  @override
  Widget build(BuildContext context) {
    void onRadioButtonTap(int index) {
      bloc.add(RadioButtonUpdateEvent(selectedIndex: index));
    }

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
                  onPressed: () => onRadioButtonTap(index),
                  isSelected: index == state.selectedIndex,
                ),
              );
            }),
      ),
    );
  }
}
