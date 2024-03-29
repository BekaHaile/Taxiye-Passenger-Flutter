import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:taxiye_passenger/utils/constants.dart';
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

  final _settingOptions = List<Option>.empty(growable: true).obs;
  get settingOptions => _settingOptions.value;
  set settingOptions(value) => _settingOptions.assignAll(value);

  final _privacyOptions = List<Option>.empty(growable: true).obs;
  get privacyOptions => _privacyOptions.value;
  set privacyOptions(value) => _privacyOptions.assignAll(value);

  final GetStorage _storage = GetStorage();
  String locale = 'en';

  @override
  void onInit() async {
    super.onInit();

    locale = _storage.read<String>('locale') ?? 'en';
    _setSettingOptions();
    _setPrivacyOptions();
  }

  updateLanguage(Map<String, dynamic> languagePayload) async {
    status(Status.loading);
    repository.updateUser(null, languagePayload).then(
      (data) {
        if (data.flag == SuccessFlags.updateProfile.successCode) {
          if (languagePayload.containsKey('updatedLocale')) {
            String locale = languagePayload['updatedLocale'];
            _storage.write('locale', locale);
            this.locale = locale;
            Get.updateLocale(Locale(locale));
            reloadProfile();
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

  _setSettingOptions() {
    settingOptions = [
      // Option(title: 'sound_voice', subtitle: 'customize_sounds'),
      // Option(title: 'navigation', subtitle: 'google_maps'),
      // Option(
      //     title: 'night_mode', subtitle: 'night_mode_info', toggleValue: false),
      // Option(title: 'follow_my_ride', subtitle: 'follow_my_ride_info'),
      Option(
          title: 'language',
          subtitle: kLanguages
              .firstWhere((language) => language.code == locale,
                  orElse: () => kLanguages.first)
              .name),
      Option(title: 'privacy_settings', subtitle: 'customize_privacy'),
    ];
  }

  _setPrivacyOptions() {
    bool? showRideNotifications = _storage.read<bool>('showRideNotifications');
    bool? showDeliveryNotifications =
        _storage.read<bool>('showDeliveryNotifications');
    bool? showTransactionNotifications =
        _storage.read<bool>('showTransactionNotifications');

    privacyOptions = [
      Option(
          title: 'transaction_updates',
          subtitle: 'transaction_updates_info',
          leadingIconAsset: 'assets/icons/transfer.png',
          isActive: false,
          toggleValue: showTransactionNotifications ?? true),
      Option(
          title: 'rides',
          subtitle: 'rides_info',
          leadingIconAsset: 'assets/icons/ride.png',
          toggleValue: showRideNotifications ?? true),
      Option(
          title: 'delivery',
          subtitle: 'delivery_info',
          leadingIconAsset: 'assets/icons/delivery.png',
          toggleValue: showDeliveryNotifications ?? true),
    ];
  }

  setNotificationsPreferences(String title, bool value) {
    // persist notification prefences
    _storage.write(title, value);
  }

  reloadProfile() {
    status(Status.loading);
    repository.reloadProfile().then((profileResponse) {
      if (profileResponse.flag == SuccessFlags.reloadProfile.successCode) {
        status(Status.success);
        authController.user = profileResponse;
        authController.persistUser(profileResponse);
        _setSettingOptions();
      } else {
        print(profileResponse.erorr ?? '');
        status(Status.error);
      }
    }, onError: (error) {
      status(Status.error);
      print('reload profile error: $error');
    });
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
