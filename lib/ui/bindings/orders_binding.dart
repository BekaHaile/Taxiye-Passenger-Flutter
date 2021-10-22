import 'package:get/get.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/repository/orders_repository.dart';
import 'package:taxiye_passenger/ui/controllers/orders_controller.dart';

/*
  Binding and DI for profilr flow.
*/
class OrdersBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IOrdersRepository>(
        () => OrdersRepository(apiClient: Get.find(), mapService: Get.find()),
        fenix: true);
    Get.lazyPut(() => OrdersController(repository: Get.find()), fenix: true);
  }
}
