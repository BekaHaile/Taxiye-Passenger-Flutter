import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/core/services/api/api_client.dart';
import 'package:taxiye_passenger/core/services/firebase_service.dart';

/*
  Implementation for Auth api requests
*/
class AuthRepository implements IAuthRepository {
  final ApiClient apiClient;
  final FirebaseService firebaseService;
  AuthRepository({
    required this.apiClient,
    required this.firebaseService,
  });

  @override
  Future<String?> getDeviceToken() async {
    return await firebaseService.getDeviceToken();
  }

  @override
  Future<SignUpResponse> signup(Map<String, dynamic> signupPayload) async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/v4/customer/generate_login_otp',
      data: signupPayload,
    );
    return SignUpResponse.fromJson(response);
  }

  @override
  Future<SignUpResponse> signInWithGoogle(
    Map<String, dynamic> googleSignInPayload, {
    required Function() showPhoneInput,
    required VoidCallback serverRequestStarted,
  }) async {
    dynamic response;

    await firebaseService.signInWithGoogle().then(
      (userCredentials) async {
        final phoneNumber = (userCredentials.user?.phoneNumber?.isEmpty ?? true)
            ? await showPhoneInput()
            : userCredentials.user?.phoneNumber;
        final dataFromGoogle = {
          'google_access_token': userCredentials.user?.getIdToken(),
          'phone_no': phoneNumber,
        };

        googleSignInPayload.addAll(dataFromGoogle);
        serverRequestStarted();
        // response = await apiClient.request(
        //   requestType: RequestType.post,
        //   path: '/register_using_google',
        //   data: googleSignInPayload,
        // );
      },
      // onError: (err) {
      //   print('error here $err');
      //   return Future.error("$err");
      // }
    );

    return SignUpResponse.fromJson(response);
  }

  @override
  Future<SignUpResponse> signInWithFacebook(
    Map<String, dynamic> facebookSignInPayload, {
    required Function() showPhoneInput,
    required VoidCallback serverRequestStarted,
  }) async {
    dynamic response;
    await firebaseService.signInWithFacebook().then((userCredentials) async {
      // show phone input dialog

      final phoneNumber = (userCredentials.user?.phoneNumber?.isEmpty ?? true)
          ? await showPhoneInput()
          : userCredentials.user?.phoneNumber;

      final dataFromFb = {
        'user_fb_name': userCredentials.user?.displayName,
        'fb_access_token': userCredentials.credential?.token,
        'fb_mail': userCredentials.user?.email,
        'username': userCredentials.user?.uid,
        'phone_no': phoneNumber,
      };

      facebookSignInPayload.addAll(dataFromFb);
      serverRequestStarted();
      response = await apiClient.request(
        requestType: RequestType.post,
        path: '/register_using_facebook',
        data: facebookSignInPayload,
      );
    }, onError: (err) => Future.error("$err"));

    return SignUpResponse.fromJson(response);
  }

  @override
  Future<String> signInWithTwitter() async {
    return (await firebaseService.signInWithTwitter()).toString();
  }

  @override
  Future<User> loginUsingToken(Map<String, dynamic> loginPayload) async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/v3/customer/login_using_access_token',
      data: loginPayload,
    );
    return VerifyResponse.fromJson(response).userData ?? User('');
  }

  @override
  Future<VerifyResponse> verifyOtp(Map<String, dynamic> verifyPayload) async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/v4/customer/verify_otp',
      data: verifyPayload,
    );
    return VerifyResponse.fromJson(response);
  }

  @override
  Future<User> updateUser(
      File? profileImage, Map<String, dynamic>? userPayload) async {
    dynamic response;

    if (profileImage == null) {
      await apiClient
          .request(
        requestType: RequestType.post,
        path: '/update_user_profile',
        data: userPayload,
      )
          .then(
        (updateResponse) async {
          response = await apiClient.request(
            requestType: RequestType.post,
            path: '/reload_my_profile',
            data: {},
          );
        },
        onError: (err) {
          return Future.error("$err");
        },
      );
    } else {
      return await apiClient.updateProfile(profileImage, userPayload);
    }

    return User.fromJson(response);
  }

  @override
  Future<User> reloadProfile() async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/reload_my_profile',
      data: {},
    );
    return User.fromJson(response);
  }

  @override
  Future<BasicResponse> logoutUser() async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/logout_user',
      data: {},
    );
    return BasicResponse.fromJson(response);
  }

  // get legals info
  @override
  Future<LegalResponse> getLagalsDetail(
      Map<String, dynamic> legalPayload) async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/get_information',
      data: legalPayload,
    );
    return LegalResponse.fromJson(response);
  }
}
