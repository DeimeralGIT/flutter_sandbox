import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sandbox/presentation/pages/radio_button_page/radio_button_page.dart';
import 'package:flutter_sandbox/presentation/pages/counter_page/counter_page.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
        child: Scaffold(
      body: PageView(
        physics: const ClampingScrollPhysics(),
        pageSnapping: true,
        children: [
          CounterPage(),
          RadioButtonPage(),
        ],
      ),
    ));
  }
}
