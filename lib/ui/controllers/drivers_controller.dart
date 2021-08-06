import 'package:get/get.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';

/*
  Handles any business logic and data binding with drivers flow
  any druvers api requests are made here
*/
class DriversController extends GetxController {
  final ICommonRepository repository;
  DriversController({required this.repository});

  final status = Status.success.obs;

  final _driverPreference = DriverPreference.favourite.obs;
  get driverPreference => _driverPreference.value;
  set driverPreference(value) => _driverPreference.value = value;

  final _drivers = List<Driver>.empty(growable: true).obs;
  get drivers => _drivers.value;
  set drivers(value) => _drivers.assignAll(value);

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.
    super.onInit();
    getMydrivers();
  }

  getMydrivers() {
    // Todo: Get my drivers.
    drivers = [
      Driver(name: 'Cameron Williamson', rating: 4.9),
      Driver(name: 'Cameron Williamson', rating: 4.9),
      Driver(name: 'Cameron Williamson', rating: 4.9),
      Driver(name: 'Cameron Williamson', rating: 4.9),
      Driver(name: 'Cameron Williamson', rating: 4.9),
      Driver(name: 'Cameron Williamson', rating: 4.9),
    ];
  }
}
