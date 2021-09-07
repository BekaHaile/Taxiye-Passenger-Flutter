import 'package:get/get.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/repository/profile_repository.dart';
import 'package:taxiye_passenger/ui/controllers/profile_controller.dart';

/*
  Binding and DI for profilr flow.
*/
class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IProfileRepository>(
        () => ProfileRepository(apiClient: Get.find()),
        fenix: true);
    Get.lazyPut(() => ProfileController(repository: Get.find()));
  }
}
