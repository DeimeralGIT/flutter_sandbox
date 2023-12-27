import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/di/di.dart';
import 'package:flutter_sandbox/models/example_model.dart';
import 'package:flutter_sandbox/net/example_repository/example_repository.dart';

class ExampleCubit extends Cubit {
  ExampleCubit(super.initialState);

  final exampleRepository = ExampleRepository(appRepository.dio);

  void onGetExample() async {
    final ExampleModel example = await exampleRepository.getExample();
  }
}
