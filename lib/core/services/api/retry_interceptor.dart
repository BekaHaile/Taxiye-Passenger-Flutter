import 'dart:async';
import 'dart:developer';
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:taxiye_passenger/core/services/api/network_exceptions.dart';

class RetryOnConnectionChangeInterceptor extends Interceptor {
  final DioConnectivityRequestRetrier requestRetrier;

  RetryOnConnectionChangeInterceptor({
    required this.requestRetrier,
  });

  @override
  void onError(DioError dioError, ErrorInterceptorHandler handler) {
    if (_shouldRetry(dioError)) {
      try {
        requestRetrier.scheduleRequestRetry(dioError.requestOptions);
      } catch (e) {
        // Let any new error from the retrier pass through
        print(e);
      }
    }
    super.onError(dioError, handler); //add this line
  }

  bool _shouldRetry(DioError err) {
    //return err.error != null && err.error is SocketException;
    return NetworkExceptions.getDioException(err) ==
        const NetworkExceptions.noInternetConnection();
  }
}

class DioConnectivityRequestRetrier {
  final Dio dio;
  final Connectivity connectivity;

  DioConnectivityRequestRetrier({
    required this.dio,
    required this.connectivity,
  });

  Future<Response> scheduleRequestRetry(RequestOptions requestOptions) async {
    StreamSubscription? streamSubscription;
    final responseCompleter = Completer<Response>();

    streamSubscription = connectivity.onConnectivityChanged.listen(
      (connectivityResult) async {
        if (connectivityResult != ConnectivityResult.none) {
          streamSubscription?.cancel();
          // Complete the completer instead of returning
          responseCompleter.complete(
            dio
                .request(
              requestOptions.path,
              cancelToken: requestOptions.cancelToken,
              data: requestOptions.data,
              onReceiveProgress: requestOptions.onReceiveProgress,
              onSendProgress: requestOptions.onSendProgress,
              queryParameters: requestOptions.queryParameters,
              options: Options(method: requestOptions.method),
              //options: requestOptions,
            )
                .then((value) {
              // log('response success: $value');
              return value;
            }, onError: (err) {
              log('error here ${err}');
            }),
          );
        }
      },
    );

    return responseCompleter.future;
  }
}
