import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/repository/auth_repository.dart';
import 'package:taxiye_passenger/core/repository/file_repository.dart';
import 'package:taxiye_passenger/core/services/api/api_client.dart';
import 'package:taxiye_passenger/core/services/file_service.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';

/*
  Binding and Dependency injection with lazy initialization for Auth flow,
  using get package
*/
class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Dio(), fenix: true);
    Get.lazyPut(() => ApiClient(dio: Get.find()), fenix: true);
    Get.lazyPut(() => FileService(), fenix: true);
    Get.lazyPut<IFileRepository>(() => FileRepository(fileService: Get.find()));
    Get.lazyPut<IAuthRepository>(() => AuthRepository(apiClient: Get.find()));
    Get.lazyPut(() =>
        AuthController(repository: Get.find(), fileRepository: Get.find()));
  }
}
