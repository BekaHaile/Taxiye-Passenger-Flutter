import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/auth_enums.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';
import 'package:taxiye_passenger/ui/pages/common/phone_input_dialog.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:taxiye_passenger/utils/functions.dart';

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

  User? _user;
  final _authStep = AuthStep.signup.obs;
  get authStep => _authStep.value;
  set authStep(value) => _authStep.value = value;

  // General user, device info
  late Map<String, dynamic> deviceInfo;
  late Position currentLocation;
  String? deviceToken;

  // sign up info
  Country country = kCountries.first;
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
  int gender = 1;

  final _profileImage = File('').obs;
  get profileImage => _profileImage.value;
  set profileImage(value) => _profileImage.value = value;

  final GetStorage _storage = GetStorage();
  late Map<String, dynamic> defaultParams;

  @override
  void onInit() async {
    // Todo: initialize values and get any auth values here.
    super.onInit();
    setLocale();
  }

  setGeneralInfo() async {
    await Future.wait([
      getDeviceInfo().then((value) => deviceInfo = value),
      repository.getDeviceToken().then((value) => deviceToken = value),
    ]);
  }

  setLocale() {
    String locale = _storage.read<String>('locale') ?? 'en';
    Get.updateLocale(Locale(locale));
  }

  void signin() {
    // Todo: login user logic
    // repository.login(email, password);
    Get.toNamed(Routes.home);
  }

  signup() async {
    final downloadSource = Platform.isAndroid ? 'playstore' : 'appstore';
    final signupPayload = {
      'phone_no': '${country.code}$phoneNumber',
      'country_code': country.code,
      'unique_device_id': deviceInfo['id'],
      'longitude': currentLocation.longitude.toString(),
      'latitude': currentLocation.latitude.toString(),
      'country': country.name,
      'last_opened_client_id': kClientId,
      'os_version': deviceInfo['version'],
      'source': 'download_source = $downloadSource',
      'device_rooted': '0',
      'device_name': deviceInfo['name'],
      'device_token': deviceToken,
      'last_push_time_diff': '-1'
    };

    status(Status.loading);
    repository.signup(signupPayload).then(
      (signupResponse) => onsignUpSuccess(signupResponse),
      onError: (err) {
        print("$err");
        status(Status.error);
      },
    );
  }

  onsignUpSuccess(SignUpResponse signupResponse) {
    if (signupResponse.flag == SuccessFlags.signUp.successCode) {
      print('this called here');
      status(Status.success);
      if (Get.currentRoute != Routes.verify) {
        Get.toNamed(Routes.verify);
      }
    } else {
      print(signupResponse.message);
      toast('error', signupResponse.message ?? '');
      status(Status.error);
    }
  }

  signInWithGoogle() async {
    repository.signInWithGoogle(
      {
        'longitude': currentLocation.longitude.toString(),
        'latitude': currentLocation.latitude.toString(),
      },
      showPhoneInput: () async => await Get.dialog(
        const PhoneInputDialog(),
      ),
      serverRequestStarted: () => status(Status.loading),
    ).then(
      (signupResponse) => onsignUpSuccess(signupResponse),
      onError: (err) {
        print('$err');
        status(Status.error);
      },
    );
  }

  signInWithFacebook() async {
    repository.signInWithFacebook(
      {
        'longitude': currentLocation.longitude.toString(),
        'latitude': currentLocation.latitude.toString(),
      },
      showPhoneInput: () async => await Get.dialog(
        const PhoneInputDialog(),
      ),
      serverRequestStarted: () => status(Status.loading),
    ).then(
      (signupResponse) => onsignUpSuccess(signupResponse),
      onError: (err) {
        print('$err');
        status(Status.error);
      },
    );
  }

  signInWithTwitter() async {
    repository.signInWithTwitter().then((value) {
      // signed in with google
      print(value);
    }, onError: (err) {
      print('$err');
    });
  }

  // verify with otp
  verify(String pin) {
    final verifyPayload = {
      'phone_no': '${country.code}$phoneNumber',
      'country': country.name,
      'reg_wallet_type': "0",
      'os_version': deviceInfo['version'],
      'longitude': currentLocation.longitude.toString(),
      'latitude': currentLocation.latitude.toString(),
      "device_rooted": "0",
      'country_code': country.code,
      'device_name': deviceInfo['name'],
      'device_token': deviceToken,
      'unique_device_id': deviceInfo['id'],
      'login_otp': pin,
    };

    status(Status.loading);
    repository.verifyOtp(verifyPayload).then(
      (data) {
        if (data.flag == SuccessFlags.verify.successCode) {
          status(Status.success);
          if (data.userData != null) _persistUser(data.userData!);
          _user = data.userData;
          Get.toNamed(Routes.setProfile);
        } else {
          print(data.message);
          toast('error', data.message ?? 'api_error'.tr);
          status(Status.error);
        }
      },
      onError: (err) {
        print("$err");
        status(Status.error);
      },
    );
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
    startTimer();
    signup();
  }

  callMe() {
    // Todo: call me logic here
    print('call me');
  }

  setProfile() async {
    Map<String, dynamic> userPayload = {
      'updated_user_name': fullName,
      'gender': gender
    };
    if (email.isNotEmpty) userPayload['updated_user_email'] = email;

    status(Status.loading);
    repository
        .updateUser(
            profileImage.path.isNotEmpty ? profileImage : null, userPayload)
        .then(
      (data) {
        if (data.flag == SuccessFlags.updateProfile.successCode) {
          status(Status.success);
          _persistUser(data);
          _user = data;
          Get.toNamed(Routes.home);
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

    // Get.toNamed(Routes.setPasscode);
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

  determineNextRoute() async {
    await getCurrentLocation().then((value) {
      currentLocation = value;
      _storage.write('latitude', value.latitude);
      _storage.write('longitude', value.longitude);
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 500));
    if (_user == null) {
      //Get current user if the user already loged in and route accordingly
      //else show welcome screen
      final userString = _storage.read('user');
      final isFirstTime = _storage.read<bool>('isFirstTime');
      if (userString != null) {
        _user = User.fromJson(jsonDecode(userString));
        if (_user != null) {
          getUser();
          _navigateUser();
        }
      } else {
        setGeneralInfo();
        if (isFirstTime ?? true) {
          Future.delayed(Duration.zero, () {
            Get.offAllNamed(Routes.language);
          });
        } else {
          Future.delayed(Duration.zero, () {
            Get.offAllNamed(Routes.auth);
          });
        }
      }
    } else {
      _navigateUser();
    }
  }

  _navigateUser() {
    // check if user has setup profile, if not nav to set profile page
    // else to home page
    // for now check for gender and username
    // user?.gender == null ||

    if ((_user?.userName.isEmpty ?? true) ||
        _user!.userName.split('').length < 2) {
      Future.delayed(Duration.zero, () {
        Get.offAllNamed(Routes.setProfile);
      });
    } else {
      Future.delayed(Duration.zero, () {
        Get.offAllNamed(Routes.home);
      });
    }
  }

  getUser() {
    final accessToken = _storage.read<String>('accessToken');
    if (accessToken != null) {
      repository.loginUsingToken({}).then((value) {
        _user = value;
        _persistUser(value);
      }, onError: (err) {
        print('Login error: $err');
      });
    }
  }

  _persistUser(User user) {
    _storage.write('user', json.encode(user));
    if (user.authKey != null) {
      _storage.write('accessToken', _hashAccessToken(user.authKey!));
    }
  }

  String _hashAccessToken(String authKey) {
    String authSecret = authKey + kAuthKeyPart;
    return sha256.convert(utf8.encode(authSecret)).toString();
  }

  void logout() {
    // Todo: logout user and clear any saved values
  }
}
