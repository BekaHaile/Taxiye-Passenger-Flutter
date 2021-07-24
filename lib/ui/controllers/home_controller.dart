import 'package:get/get.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';

/*
  Handles any business logic and data binding with Home flow
  any home api requests are made here
*/
class HomeController extends GetxService {
  final IHomeRepository repository;
  HomeController({required this.repository});

  final status = Status.success.obs;

  final _selectedService = HomeServiceIndex.ride.obs;
  get selectedService => _selectedService.value;
  set selectedService(value) => _selectedService.value = value;

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.
    super.onInit();
  }
}
