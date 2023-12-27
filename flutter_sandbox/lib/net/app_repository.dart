import 'package:dio/dio.dart';
import 'package:flutter_sandbox/flavor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class AppRepository {
  AppRepository()
      : dio = Dio(
          BaseOptions(baseUrl: baseUrl.getFlavorValue),
        )..interceptors.add(
            PrettyDioLogger(requestBody: true, requestHeader: true),
          );
  //add your own interceptors
  //..interceptors.add();

  final Dio dio;
}
