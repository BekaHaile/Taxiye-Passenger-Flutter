import 'package:get/get.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';

/*
  Handles any business logic and data binding with profile flow
  any profile api requests are made here
*/
class ProfileController extends GetxController {
  final IProfileRepository repository;
  ProfileController({required this.repository});

  final status = Status.success.obs;

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.
    super.onInit();
  }
}
