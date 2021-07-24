import 'dart:async';
import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/auth_enums.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';
import 'package:taxiye_passenger/ui/pages/home/components/home_drawer.dart';

/*
  Handles any business logic and data binding related to authentication
  any auth api requests are made here
*/
class AuthController extends GetxService {
  final IAuthRepository repository;
  final IFileRepository fileRepository;
  AuthController({required this.repository, required this.fileRepository});

  // holds request status
  final status = Status.success.obs;

  final _authStep = AuthStep.signup.obs;
  get authStep => _authStep.value;
  set authStep(value) => _authStep.value = value;

  // sign up info
  String phoneNumber = '';
  String passcode = '';
  String confirmPassCode = '';

  // For resend code
  late Timer _resendTimer;
  final _resendCounter = 0.obs;
  get resendCounter => _resendCounter.value;
  set resendCounter(value) => _resendCounter.value = value;

  // for profile info
  String fullName = '';
  String email = '';
  String gender = '';

  final _profileImage = File('').obs;
  get profileImage => _profileImage.value;
  set profileImage(value) => _profileImage.value = value;

  @override
  void onInit() async {
    // Todo: initialize values and get any auth values here.
    super.onInit();
  }

  void signin() {
    // Todo: login user logic
    // repository.login(email, password);
    Get.toNamed(Routes.home);
  }

  signup() async {
    // Todo: sign up user logic
    // repository.signup(signupPayload)
    Get.toNamed(Routes.verify);
  }

  verify(String pin) {
    // Todo: Verify code logic here.
    Get.toNamed(Routes.setProfile);
  }

  startTimer() {
    resendCounter = 30;
    const oneSec = Duration(seconds: 1);
    _resendTimer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (resendCounter < 1) {
          timer.cancel();
        } else {
          resendCounter--;
        }
      },
    );
  }

  resendCode() {
    // Todo: resend code logic here
    print('resend code');
  }

  callMe() {
    // Todo: call me logic here
    print('call me');
  }

  setProfile() {
    // Todo: set Profile logic here
    Get.toNamed(Routes.setPasscode);
  }

  setPasscode() {
    // Todo: set Profile logic here
    Get.toNamed(Routes.home);
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
      } else {
        // print('crop error.');
      }
    } on Exception catch (e) {
      // print(Future.error(e.toString()));
    }
  }

  void logout() {
    // Todo: logout user and clear any saved values
  }
}
