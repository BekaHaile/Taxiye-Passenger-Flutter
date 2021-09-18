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

  final _profileInfos = List<ProfileInfo>.empty(growable: true).obs;
  get profileInfos => _profileInfos.value;
  set profileInfos(value) => _profileInfos.value.assignAll(value);

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.
    super.onInit();
    setProfileInfos();
  }

  setProfileInfos() {
    profileInfos = [
      ProfileInfo(title: 'full_name', value: 'Dianne Russell'),
      ProfileInfo(
          title: 'phone_number', value: '+251911399631', isActive: false),
      ProfileInfo(title: 'email_address', value: 'dianne199@gmail.com'),
      ProfileInfo(title: 'gender', value: 'Female'),
      ProfileInfo(title: 'country', value: 'Ethiopia'),
      ProfileInfo(title: 'language', value: 'Amharic')
    ];
  }
}

class ProfileInfo {
  ProfileInfo({
    required this.title,
    required this.value,
    this.isActive = true,
  });

  final String title;
  final String value;
  final bool isActive;
}
