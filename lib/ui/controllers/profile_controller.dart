import 'dart:convert';
import 'dart:developer';

import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'dart:io';

import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
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

  final _emergencyContacts = List<EmergencyContact>.empty(growable: true).obs;
  get emergencyContacts => _emergencyContacts.value;
  set emergencyContacts(value) => _emergencyContacts.assignAll(value);

  final _savedPlaces = List<Address>.empty(growable: true).obs;
  get savedPlaces => _savedPlaces.value;
  set savedPlaces(value) => _savedPlaces.value = value;

  final _recentLocations = List<Address>.empty(growable: true).obs;
  get recentLocations => _recentLocations.value;
  set recentLocations(value) => _recentLocations.value = value;

  final _contacts = List<EmergencyContact>.empty(growable: true).obs;
  get contacts => _contacts.value;
  set contacts(value) => _contacts.assignAll(value);

  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.
    super.onInit();

    _setPinIcons();
    setProfileInfos();
    _getEmergencyContacts();
    _askContactPermission();
  }

  updateProfile(Map<String, dynamic> profilePayload) async {
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
          title: 'gender',
          value: user.gender == 2 ? 'female'.tr : 'male'.tr,
          isActive: false),
      ProfileInfo(
          title: 'country',
          value: kCountries
              .firstWhere((country) => country.code == user.countryCode,
                  orElse: () => kCountries.first)
              .name,
          isActive: false),
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
    repository.getEmergencyContacts().then((emergencyContactsResponse) {
      if (emergencyContactsResponse.flag ==
          SuccessFlags.emergencyContacts.successCode) {
        if (emergencyContactsResponse.emergencyContacts?.isNotEmpty ?? false) {
          emergencyContacts = emergencyContactsResponse.emergencyContacts;
        }
      } else {
        print(
            'Get emergency contacts error: ${emergencyContactsResponse.error}');

        toast(
            'error',
            emergencyContactsResponse.error ??
                emergencyContactsResponse.log ??
                emergencyContactsResponse.message ??
                '');
      }
    }, onError: (error) {
      print('Get emergency contacts error: $error');
    });
  }

  Future _askContactPermission() async {
    if (await Permission.contacts.request().isGranted) {
      // Either the permission was already granted before or the user just granted it.
      await _getContacts();
    } else {
      toast('error', 'contact_permission_error');
      print('permission refused');
    }
  }

  Future<void> _getContacts() async {
    // Load without thumbnails initially.
    var tempContacts = (await ContactsService.getContacts(
            withThumbnails: false, iOSLocalizedLabels: false))
        .toList();

    // this is to prevent a lot of contacts
    // if (tempContacts.length > 5)
    //   tempContacts.removeRange(5, tempContacts.length - 1);
    // contacts = tempContacts;

    // get phone numbers, name from contacts
    // List<String> phoneNumbers = [];
    for (Contact contact in tempContacts) {
      if (contact.phones?.isNotEmpty ?? false) {
        contacts.add(EmergencyContact(
          name: contact.displayName,
          phoneNo:
              '+${contact.phones?.first.value?.replaceAll(RegExp('\\W+'), '')}',
        ));
      }
    }

    // Lazy load thumbnails after rendering initial contacts.
    // for (final contact in contacts) {
    //   ContactsService.getAvatar(contact).then((avatar) {
    //     if (avatar == null) return; // Don't redraw if no change.
    //     contact.avatar = avatar;
    //   });
    // }
  }

  addEmergencyContact(EmergencyContact emergencyContact) {
    //Todo: on add emergency contacts
    final Map<String, dynamic> contactpayload = {
      'emergency_contacts': jsonEncode([
        {
          'name': emergencyContact.name,
          'phone_no': emergencyContact.phoneNo,
          'country_code': '+251',
        }
      ])
    };

    status(Status.loading);
    repository.addEmergencyContact(contactpayload).then(
        (addEmergencyContactresponse) {
      if (addEmergencyContactresponse.flag ==
          SuccessFlags.basicSuccess.successCode) {
        status(Status.success);
        Get.back();
        _getEmergencyContacts();
      } else {
        print(
            'Add emergency contact error: ${addEmergencyContactresponse.error}');
        status(Status.error);
        toast(
            'error',
            addEmergencyContactresponse.error ??
                addEmergencyContactresponse.log ??
                addEmergencyContactresponse.message ??
                '');
      }
    }, onError: (error) {
      status(Status.error);
      print('Add emergency contact error: $error');
    });
  }

  removeEmergencyContact(EmergencyContact emergencyContact) {
    if (emergencyContact.id != null) {
      status(Status.loading);
      repository.removeEmergencyContact('${emergencyContact.id}').then(
          (removeContactResponse) {
        if (removeContactResponse.flag ==
            SuccessFlags.basicSuccess.successCode) {
          status(Status.success);
          _emergencyContacts.remove(emergencyContact);
          Get.snackbar('success'.tr, 'remove_emergency_contact_success'.tr);
        } else {
          print(
              'Remove emergency contact error: ${removeContactResponse.error}');
          status(Status.error);
          toast(
              'error',
              removeContactResponse.error ??
                  removeContactResponse.log ??
                  removeContactResponse.message ??
                  '');
        }
      }, onError: (error) {
        status(Status.error);
        print('Remove emergency contact error: $error');
      });
    }
  }

  onNavToSavedPlaces() {
    // get saved places from home controller
    HomeController homeController = Get.find();
    savedPlaces = homeController.savedPlaces
        .where((element) => element.type != null)
        .toList();

    recentLocations = homeController.savedPlaces
        .where((element) => element.type == null)
        .toList();

    Get.toNamed(Routes.savedPlaces);
  }

  onAddSavedPage() {
    // add saved places from home page
    HomeController homeController = Get.find();
    homeController.tripStep = TripStep.addPlace;
    homeController.updateFrom = 'profile';
    Get.toNamed(Routes.home);
  }

  onDeleteSavedPage(Address address) {
    HomeController homeController = Get.find();
    homeController.updateSavedPlaces(
        updateMode: UpdateMode.delete, address: address);
  }

  _setPinIcons() async {
    sourceIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(devicePixelRatio: 2.5),
        'assets/icons/dest_location.png');
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
