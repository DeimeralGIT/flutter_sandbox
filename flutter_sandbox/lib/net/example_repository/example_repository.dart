import 'package:dio/dio.dart';
import 'package:flutter_sandbox/models/example_model.dart';
import 'package:flutter_sandbox/models/page_model.dart';
import 'package:retrofit/retrofit.dart';

part 'example_repository.g.dart';

@RestApi()
abstract class ExampleRepository {
  factory ExampleRepository(Dio _dio) => _ExampleRepository(_dio);

  @GET('example')
  Future<ExampleModel> getExample();
}
