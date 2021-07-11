/*
  configure api client for restFull requests
*/
import 'package:dio/dio.dart';
import 'package:taxiye_passenger/core/services/api/dio_client.dart';

class ApiClient {
  late DioClient dioClient;
  final Dio dio;

  ApiClient({required this.dio}) {
    // dio.options = baseOptions;
    dioClient = DioClient(dio);
  }
  // Todo: setup and configure restful api client here. e.g dio.
}
