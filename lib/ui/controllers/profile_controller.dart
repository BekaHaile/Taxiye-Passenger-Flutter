import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'dart:io';

import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:taxiye_passenger/utils/functions.dart';

/*
  Handles any business logic and data binding with profile flow
  any profile api requests are made here
*/
class ProfileController extends GetxController {
  final IProfileRepository repository;
  final IFileRepository fileRepository;
  ProfileController({required this.repository, required this.fileRepository});

  AuthController authController = Get.find();
  final status = Status.success.obs;

  // final _user = User('').obs;
  // get user => _user.value;
  // set user(value) => _user.value = value;

  final _profileInfos = List<ProfileInfo>.empty(growable: true).obs;
  get profileInfos => _profileInfos.value;
  set profileInfos(value) => _profileInfos.value.assignAll(value);

  final _profileImage = File('').obs;
  get profileImage => _profileImage.value;
  set profileImage(value) => _profileImage.value = value;

  final _emergencyContacts = List<User>.empty(growable: true).obs;
  get emergencyContacts => _emergencyContacts.value;
  set emergencyContacts(value) => _emergencyContacts.assignAll(value);

  final _savedPlaces = List<SavedPlace>.empty(growable: true).obs;
  get savedPlaces => _savedPlaces.value;
  set savedPlaces(value) => _savedPlaces.assignAll(value);

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.
    super.onInit();

    setProfileInfos();
    _getEmergencyContacts();
    _getSavedPlaces();
  }

  updateProfile(Map<String, dynamic> profilePayload) async {
    // Map<String, dynamic> userPayload = {
    //   'updated_user_name': fullName,
    //   'gender': gender
    // };
    // if (email.isNotEmpty) userPayload['updated_user_email'] = email;

    status(Status.loading);
    repository
        .updateUser(
            profileImage.path.isNotEmpty ? profileImage : null, profilePayload)
        .then(
      (data) {
        if (data.flag == SuccessFlags.updateProfile.successCode) {
          status(Status.success);
          reloadProfile();

          // reset profile image
          profileImage = File('');
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

  reloadProfile() {
    status(Status.loading);
    repository.reloadProfile().then((profileResponse) {
      if (profileResponse.flag == SuccessFlags.reloadProfile.successCode) {
        status(Status.success);
        authController.user = profileResponse;
        authController.persistUser(profileResponse);
        print('updated profile: $profileResponse');
        setProfileInfos();
      } else {
        print(profileResponse.erorr ?? '');
        status(Status.error);
      }
    }, onError: (error) {
      status(Status.error);
      print('reload profile error: $error');
    });
  }

  setProfileInfos() {
    User user = authController.user;
    _profileInfos.clear();
    profileInfos = [
      ProfileInfo(title: 'full_name', value: user.userName),
      ProfileInfo(
          title: 'phone_number', value: user.phoneNo ?? '', isActive: false),
      ProfileInfo(title: 'email_address', value: user.email ?? ''),
      ProfileInfo(
          title: 'gender', value: user.gender == 2 ? 'female'.tr : 'male'.tr),
      ProfileInfo(
          title: 'country',
          value: kCountries
              .firstWhere((country) => country.code == user.countryCode,
                  orElse: () => kCountries.first)
              .name),
      ProfileInfo(
          title: 'language',
          value: kLanguages
              .firstWhere((language) => language.code == user.locale,
                  orElse: () => kLanguages.first)
              .name)
    ];
  }

  void getImage(ImageSource imageSource) async {
    try {
      final pickedFile = await fileRepository.getMedia(
        imageSource,
        'image',
      );
      getCroppedImage(File(pickedFile.path));
    } on Exception catch (e) {
      // print(Future.error(e.toString()));
    }
  }

  void getCroppedImage(File imageFile) async {
    try {
      final croppedImage = await fileRepository.getCroppedImage(imageFile);
      if (croppedImage != null) {
        profileImage = File(croppedImage.path);

        // update user profile
        Map<String, dynamic> payload = {};

        updateProfile(payload);
      } else {
        // print('crop error.');
      }
    } on Exception catch (e) {
      // print(Future.error(e.toString()));
    }
  }

  _getEmergencyContacts() {
    // Todo: get and set emergency contacts
    emergencyContacts = [
      User('Devon Lane', phoneNo: '+251912345678'),
      User('Elizabeth Tucker Lane', phoneNo: '+251912345678'),
      User('Brook Lane', phoneNo: '+251923342341'),
    ];
  }

  _getSavedPlaces() {
    // Todo: get and set saved places
    savedPlaces = [
      SavedPlace(
          placeTitle: 'home'.tr,
          placeAddress: 'Egypt Street, Addis Ababa, Ethiopia'),
      SavedPlace(
          placeTitle: 'work'.tr,
          placeAddress: 'Alemayehu Building, Addis Ababa, Ethiopia'),
      SavedPlace(
          placeTitle: 'work'.tr,
          placeAddress: 'Arat killo, Addis Ababa, Ethiopia'),
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

  set value(String value) => this.value = value;
}
