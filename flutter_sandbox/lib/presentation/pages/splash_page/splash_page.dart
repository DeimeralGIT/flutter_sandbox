import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sandbox/router/auto_router.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AutoRouter.of(context).push(const RadioButtonRoute());
          },
          child: const Text('Login'),
        ),
      ),
    );
  }
}
