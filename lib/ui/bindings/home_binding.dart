import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/repository/common_repository.dart';
import 'package:taxiye_passenger/core/repository/home_repository.dart';
import 'package:taxiye_passenger/core/repository/wallet_repository.dart';
import 'package:taxiye_passenger/core/services/api/api_client.dart';
import 'package:taxiye_passenger/core/services/map_service.dart';
import 'package:taxiye_passenger/ui/controllers/drivers_controller.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'package:taxiye_passenger/ui/controllers/orders_controller.dart';
import 'package:taxiye_passenger/ui/controllers/promotions_controller.dart';
import 'package:taxiye_passenger/ui/controllers/wallet_controller.dart';

/*
  Binding and DI for home flow.
*/
class HomeBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => ApiClient(dio: Dio()), fenix: true);
    Get.lazyPut(() => MapService());
    Get.lazyPut<IHomeRepository>(
        () => HomeRepository(apiClient: Get.find(), mapService: Get.find()),
        fenix: true);
    Get.lazyPut<ICommonRepository>(
        () => CommonRepository(apiClient: Get.find()),
        fenix: true);
    Get.lazyPut<IWalletRepository>(
        () => WalletRepository(apiClient: Get.find()),
        fenix: true);
    Get.lazyPut(() => HomeController(repository: Get.find()), fenix: true);
    Get.lazyPut(() => WalletController(repository: Get.find()), fenix: true);
    Get.lazyPut(() => OrdersController(repository: Get.find()), fenix: true);
    Get.lazyPut(() => DriversController(repository: Get.find()), fenix: true);
    Get.lazyPut(() => PromotionsController(repository: Get.find()),
        fenix: true);
  }
}
