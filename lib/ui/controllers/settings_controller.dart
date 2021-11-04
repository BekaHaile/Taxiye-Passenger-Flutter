import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:taxiye_passenger/utils/functions.dart';

/*
  Handles any business logic and data binding with settings flow
  any settings api requests are made here
*/
class SettingsController extends GetxController {
  final IProfileRepository repository;
  SettingsController({required this.repository});

  AuthController authController = Get.find();
  final status = Status.success.obs;

  // final _favoritedrivers = List<Driver>.empty(growable: true).obs;
  // get favoritedrivers => _favoritedrivers.value;
  // set favoritedrivers(value) => _favoritedrivers.assignAll(value);

  @override
  void onInit() async {
    super.onInit();
  }

  updateLanguage(Map<String, dynamic> languagePayload) async {
    status(Status.loading);
    repository.updateUser(null, languagePayload).then(
      (data) {
        if (data.flag == SuccessFlags.updateProfile.successCode) {
          log('language updated: $data');
          if (languagePayload.containsKey('updated_locale')) {
            String locale = languagePayload['updated_locale'];
            Get.updateLocale(Locale(locale));
          }
          status(Status.success);
        } else {
          print(data.erorr);
          toast('error', data.erorr ?? 'api_error'.tr);
          status(Status.error);
        }
      },
      onError: (err) {
        print("$err");
        status(Status.error);
      },
    );
  }

  // getFavouriteDrivers() {
  //   status(Status.loading);
  //   repository.getFavouriteDrivers().then((driversResponse) {
  //     if (driversResponse.flag == SuccessFlags.basicSuccess.successCode) {
  //       status(Status.success);
  //       if (driversResponse.data != null) {
  //         favoritedrivers = driversResponse.data;
  //       }
  //     } else {
  //       print('get drivers error: ${driversResponse.error ?? ''}');
  //       status(Status.error);
  //       toast(
  //           'error',
  //           driversResponse.error ??
  //               driversResponse.log ??
  //               driversResponse.message ??
  //               '');
  //     }
  //   }, onError: (error) {
  //     status(Status.error);
  //     print('Get Favourite Drivers error: $error');
  //   });
  // }

}
