import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/repository/home_repository.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';

/*
  Binding and DI for home flow.
*/
class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IHomeRepository>(() => HomeRepository(apiClient: Get.find()),
        fenix: true);
    Get.lazyPut(() => HomeController(repository: Get.find()));
  }
}
