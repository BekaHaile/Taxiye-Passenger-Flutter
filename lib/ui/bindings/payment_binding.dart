import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/repository/payment_repository.dart';
import 'package:taxiye_passenger/core/services/api/api_client.dart';
import 'package:taxiye_passenger/ui/controllers/payment_controller.dart';

/*
  Binding and DI for payment flow.
*/
class PaymentBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Dio(), fenix: true);
    Get.lazyPut(() => ApiClient(dio: Get.find()), fenix: true);
    Get.lazyPut<IPaymentRepository>(
        () => PaymentRepository(apiClient: Get.find()),
        fenix: true);
    Get.lazyPut(() => PaymentController(repository: Get.find()));
  }
}
