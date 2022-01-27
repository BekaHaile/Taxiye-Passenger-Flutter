import 'dart:convert';
import 'dart:developer';
import 'dart:typed_data';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:taxiye_passenger/ui/pages/common/confirm_dialog.dart';
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

  final _contacts = List<EmergencyContact>.empty(growable: true).obs;
  get contacts => _contacts.value;
  set contacts(value) => _contacts.assignAll(value);

  final _profileOPtions = List<Option>.empty(growable: true).obs;
  get profileOPtions => _profileOPtions.value;
  set profileOPtions(value) => _profileOPtions.assignAll(value);

  final _userRideCount = UserRideCount().obs;
  get userRideCount => _userRideCount.value;
  set userRideCount(value) => _userRideCount.value = value;

  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
  final GetStorage _storage = GetStorage();

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.
    super.onInit();

    _getUserInfo();
    _setPinIcons();
    _setProfileInfos();
    _setProfileOPtions();
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
        log('upload succes here: $data');
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
      log('reload succes here: $profileResponse');
      if (profileResponse.flag == SuccessFlags.reloadProfile.successCode) {
        status(Status.success);
        authController.user = profileResponse;
        authController.persistUser(profileResponse);
        _setProfileInfos();
      } else {
        print(profileResponse.erorr ?? '');
        status(Status.error);
      }
    }, onError: (error) {
      status(Status.error);
      print('reload profile error: $error');
    });
  }

  _setProfileInfos() {
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

  _setProfileOPtions() {
    int? savedPlacesCount = _storage.read<int>('savedPlacesCount');
    profileOPtions = [
      Option(
          title: 'your_info',
          subtitle: 'view_edit_your_details',
          leadingIcon: Icons.person),
      Option(
          title: 'emergency_contacts',
          subtitle: '${emergencyContacts.length} people',
          leadingIconAsset: 'assets/icons/emergency_contacts.png'),
      Option(
          title: 'saved_places',
          subtitle: '${savedPlacesCount ?? 0} places',
          leadingIconAsset: 'assets/icons/saved_places.png'),
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

        log('crop image here: $profileImage');

        updateProfile(payload);
      } else {
        // print('crop error.');
      }
    } on Exception catch (e) {
      // print(Future.error(e.toString()));
    }
  }

  _getUserInfo() {
    repository.getUserInfo().then((userInfo) {
      userRideCount = userInfo;
    }, onError: (error) {
      print('Get emergency contacts error: $error');
    });
  }

  _getEmergencyContacts() {
    repository.getEmergencyContacts().then((emergencyContactsResponse) {
      if (emergencyContactsResponse.flag ==
          SuccessFlags.emergencyContacts.successCode) {
        if (emergencyContactsResponse.emergencyContacts?.isNotEmpty ?? false) {
          emergencyContacts = emergencyContactsResponse.emergencyContacts;
          _setProfileOPtions();
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
      //toast('error', 'contact_permission_error');
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

  onSelectEmergencyContacts() async {
    var status = await Permission.contacts.status;
    if (status.isGranted) {
      Get.toNamed(Routes.emergencyContacts);
    } else {
      Get.dialog(ConfirmDialog(
        title: 'allow_contacts'.tr,
        content: 'allow_contacts_info'.tr,
        actionText: 'ok',
        actionCallback: () => openAppSettings(),
      ));
    }
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
          _setProfileOPtions();
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

  _setPinIcons() async {
    double width = Get.size.width * 0.06;
    sourceIcon = BitmapDescriptor.fromBytes(await getBytesFromAsset(
        'assets/icons/dest_location.png', width.round()));
  }

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
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
