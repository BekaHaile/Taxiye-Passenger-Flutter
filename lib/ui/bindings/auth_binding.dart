import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/repository/auth_repository.dart';
import 'package:taxiye_passenger/core/repository/file_repository.dart';
import 'package:taxiye_passenger/core/services/api/api_client.dart';
import 'package:taxiye_passenger/core/services/file_service.dart';
import 'package:taxiye_passenger/core/services/firebase_service.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:taxiye_passenger/ui/controllers/legals_controller.dart';
import 'package:twitter_login/twitter_login.dart';

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
    Get.lazyPut(() => FirebaseMessaging.instance, fenix: true);
    Get.lazyPut(() => GoogleSignIn(), fenix: true);
    Get.lazyPut(() => FirebaseAuth.instance, fenix: true);

    Get.lazyPut(() => FacebookAuth.instance, fenix: true);
    Get.lazyPut(
        () => TwitterLogin(
              // Consumer API keys
              apiKey: 'xxxx',
              // Consumer API Secret keys
              apiSecretKey: 'xxxx',
              // Registered Callback URLs in TwitterApp
              // Android is a deeplink
              // iOS is a URLScheme
              redirectURI: 'example://',
            ),
        fenix: true);
    Get.lazyPut(() => FirebaseService(
          firebaseMessaging: Get.find(),
          googleSignIn: Get.find(),
          facebookAuth: Get.find(),
          twitterLogin: Get.find(),
          firebaseAuth: Get.find(),
        ));
    Get.lazyPut<IFileRepository>(() => FileRepository(fileService: Get.find()),
        fenix: true);
    Get.lazyPut<IAuthRepository>(
        () =>
            AuthRepository(apiClient: Get.find(), firebaseService: Get.find()),
        fenix: true);
    Get.lazyPut(() =>
        AuthController(repository: Get.find(), fileRepository: Get.find()));
    Get.lazyPut(() => LegalsController(repository: Get.find()), fenix: true);
  }
}
