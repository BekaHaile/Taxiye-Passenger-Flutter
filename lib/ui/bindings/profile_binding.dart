import 'package:get/get.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/repository/profile_repository.dart';
import 'package:taxiye_passenger/core/services/api/api_client.dart';
import 'package:taxiye_passenger/ui/controllers/profile_controller.dart';

/*
  Binding and DI for profile flow.
*/
class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiClient(dio: Get.find(), connectivity: Get.find()),
        fenix: true);
    Get.lazyPut<IProfileRepository>(
        () => ProfileRepository(apiClient: Get.find()),
        fenix: true);
    Get.lazyPut(
        () => ProfileController(
            repository: Get.find(), fileRepository: Get.find()),
        fenix: true);
  }
}
