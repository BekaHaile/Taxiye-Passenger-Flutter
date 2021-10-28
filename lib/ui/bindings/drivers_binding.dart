import 'package:get/get.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/repository/drivers_repository.dart';
import 'package:taxiye_passenger/ui/controllers/drivers_controller.dart';

/*
  Binding and DI for Drivers flow.
*/
class DriversBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IDriversRepository>(
        () => DriversRepository(apiClient: Get.find()),
        fenix: true);
    Get.lazyPut(() => DriversController(repository: Get.find()), fenix: true);
  }
}
