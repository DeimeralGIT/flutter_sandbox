import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/manager/text_input_cubit.dart/text_input_cubit.dart';
import 'package:flutter_sandbox/manager/text_input_cubit.dart/text_input_state.dart';
import 'package:gap/gap.dart';

@RoutePage()
class BookPage extends StatelessWidget {
  BookPage({super.key}) {}

  final textInputCubit = TextInputCubit();

  final textController = TextEditingController(text: 'dagda');

  @override
  Widget build(BuildContext context) {
    void onTextChange() {
      textInputCubit.onTextChange(textController.text);
    }

    textController.addListener(() {
      onTextChange();
      if (textController.text.length == 2) {
        textController.text = textController.text + '/';
        textController.selection =
            TextSelection(baseOffset: 1, extentOffset: 3);
      }
    });

    void onShowText() {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          content: Text(
            textInputCubit.state.text,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey,
      body: BlocBuilder<TextInputCubit, TextInputState>(
          bloc: textInputCubit,
          builder: (context, state) {
            return ListView(
              padding: const EdgeInsets.all(80),
              children: [
                const Gap(40),
                TextField(
                  controller: textController,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () => textInputCubit.onObscure(!state.isObscured),
                      child: Icon(
                        state.isObscured
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                  ),
                  obscureText: state.isObscured,
                ),
                const Gap(16),
                ElevatedButton(
                  onPressed: onShowText,
                  child: Text('show_text'.tr()),
                ),
              ],
            );
          }),
    );
  }
}
