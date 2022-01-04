import 'package:get/get.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/utils/functions.dart';

/*
  Handles any business logic and data binding with drivers flow
  any drivers api requests are made here
*/
class DriversController extends GetxController {
  final IDriversRepository repository;
  DriversController({required this.repository});

  final status = Status.success.obs;

  final _driverPreference = DriverPreference.favourite.obs;
  get driverPreference => _driverPreference.value;
  set driverPreference(value) => _driverPreference.value = value;

  final _favoritedrivers = List<Driver>.empty(growable: true).obs;
  get favoritedrivers => _favoritedrivers.value;
  set favoritedrivers(value) => _favoritedrivers.assignAll(value);

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.
    super.onInit();
    getFavouriteDrivers();
  }

  getFavouriteDrivers() {
    status(Status.loading);
    repository.getFavouriteDrivers().then((driversResponse) {
      if (driversResponse.flag == SuccessFlags.basicSuccess.successCode) {
        status(Status.success);
        if (driversResponse.data != null) {
          favoritedrivers = driversResponse.data;
        }
      } else {
        print('get drivers error: ${driversResponse.error ?? ''}');
        status(Status.error);
        toast(
            'error',
            driversResponse.error ??
                driversResponse.log ??
                driversResponse.message ??
                '');
      }
    }, onError: (error) {
      status(Status.error);
      print('Get Favourite Drivers error: $error');
    });
  }

  removeFavouriteDriver(int driverId) {
    status(Status.loading);
    repository.removeFavouriteDriver(driverId).then((removeResponse) {
      if (removeResponse.flag == SuccessFlags.basicSuccess.successCode) {
        status(Status.success);
        Get.snackbar('success', 'fav_driver_removed_success'.tr);
        _favoritedrivers.removeWhere((driver) => driver.driverId == driverId);
      } else {
        print(removeResponse.error ?? '');
        status(Status.error);
        toast(
            'error',
            removeResponse.error ??
                removeResponse.log ??
                removeResponse.message ??
                '');
      }
    }, onError: (error) {
      status(Status.error);
      print('Remove Favourite Driver error: $error');
    });
  }
}
