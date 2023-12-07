import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/manager/counter/counter_bloc.dart';
import 'package:flutter_sandbox/manager/counter/counter_event.dart';
import 'package:flutter_sandbox/manager/counter/counter_state.dart';
import 'package:gap/gap.dart';

@RoutePage()
class CounterPage extends StatelessWidget {
  CounterPage({super.key});

  final counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    void update(int change) {
      counterBloc.add(
        CounterUpdateEvent(
          counterValue: counterBloc.state.counterValue + change,
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
            bloc: counterBloc,
            builder: (context, state) {
              final isLoading = counterBloc.state is CounterNeedsUpdateState;

              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: isLoading ? null : () => update(-1),
                    child: const Text('-'),
                  ),
                  const Gap(12),
                  if (isLoading) const CircularProgressIndicator() else Text(counterBloc.state.counterValue.toString()),
                  const Gap(12),
                  ElevatedButton(
                    onPressed: isLoading ? null : () => update(1),
                    child: const Text('+'),
                  ),
                  const Gap(24),
                  const MyWidget(),
                ],
              );
            }),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late bool isLoading;

  //this method is called only once when the widget is drawn, before the first frame is shown
  @override
  void initState() {
    isLoading = false;
    super.initState();
  }

  void onPressed(bool value) async {
    setState(() {
      isLoading = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      onChanged: onPressed,
      value: isLoading,
    );
  }
}
