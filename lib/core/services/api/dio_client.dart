import 'package:dio/dio.dart';
import 'package:taxiye_passenger/utils/constants.dart';

BaseOptions baseOptions = BaseOptions(
  baseUrl: kBaseUrl,
  connectTimeout: kDioConnectTimeout,
  receiveTimeout: kDioReceiveTimeout,
);

class DioClient {
  late Dio _dio;
  final List<Interceptor>? interceptors;

  DioClient(
    Dio? dio, {
    this.interceptors,
  }) {
    _dio = dio ?? Dio();
    _dio
      ..options = baseOptions
      ..httpClientAdapter
      ..options.headers = {'Content-Type': 'application/json; charset=UTF-8'};
    if (interceptors?.isNotEmpty ?? false) {
      _dio.interceptors.addAll(interceptors!);
    }
  }

  // Todo: add autorization interceptors here
}
