import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sandbox/manager/radio_button_bloc.dart';
import 'package:flutter_sandbox/manager/radio_button_event.dart';
import 'package:gap/gap.dart';

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
            const Gap(16),
            Text(
              AutoRouter.of(context).currentPath,
              style: const TextStyle(
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
