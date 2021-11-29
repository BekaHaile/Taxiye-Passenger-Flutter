import 'package:get/get.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/repository/promotions_repository.dart';
import 'package:taxiye_passenger/ui/controllers/promotions_controller.dart';

/*
  Binding and DI for payment flow.
*/
class PromotionsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IPromotionsRepository>(
        () => PromotionsRepository(apiClient: Get.find()),
        fenix: true);
    Get.lazyPut(() => PromotionsController(repository: Get.find()));
  }
}
