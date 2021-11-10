import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/repository/common_repository.dart';
import 'package:taxiye_passenger/core/repository/home_repository.dart';
import 'package:taxiye_passenger/core/repository/profile_repository.dart';
import 'package:taxiye_passenger/core/repository/wallet_repository.dart';
import 'package:taxiye_passenger/core/services/google_map_service.dart';
import 'package:taxiye_passenger/core/services/notification_service.dart';
import 'package:taxiye_passenger/ui/controllers/drivers_controller.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'package:taxiye_passenger/ui/controllers/legals_controller.dart';
import 'package:taxiye_passenger/ui/controllers/orders_controller.dart';
import 'package:taxiye_passenger/ui/controllers/profile_controller.dart';
import 'package:taxiye_passenger/ui/controllers/promotions_controller.dart';
import 'package:taxiye_passenger/ui/controllers/settings_controller.dart';
import 'package:taxiye_passenger/ui/controllers/wallet_controller.dart';

/*
  Binding and DI for home flow.
*/
class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GoogleMapService());
    Get.lazyPut(
        () => NotificationService(messaging: FirebaseMessaging.instance));

    Get.lazyPut<IHomeRepository>(
        () => HomeRepository(
              apiClient: Get.find(),
              mapService: Get.find(),
              notificationService: Get.find(),
            ),
        fenix: true);
    Get.lazyPut<ICommonRepository>(
        () => CommonRepository(apiClient: Get.find()),
        fenix: true);
    Get.lazyPut<IWalletRepository>(
        () => WalletRepository(apiClient: Get.find()),
        fenix: true);
    Get.lazyPut<IProfileRepository>(
        () => ProfileRepository(apiClient: Get.find()),
        fenix: true);
    Get.lazyPut(() => HomeController(repository: Get.find()), fenix: true);
    Get.lazyPut(() => WalletController(repository: Get.find()), fenix: true);
    Get.lazyPut(() => OrdersController(repository: Get.find()), fenix: true);
    Get.lazyPut(() => DriversController(repository: Get.find()), fenix: true);
    Get.lazyPut(() => PromotionsController(repository: Get.find()),
        fenix: true);
    Get.lazyPut(
        () => ProfileController(
            repository: Get.find(), fileRepository: Get.find()),
        fenix: true);
    Get.lazyPut(() => SettingsController(repository: Get.find()), fenix: true);
    Get.lazyPut(() => LegalsController(repository: Get.find()), fenix: true);
  }
}
