/*
  Includes interfaces for repository api requests.
*/
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/core/models/map_models.dart';

abstract class IAuthRepository {
  // Todo: Add Auth request class signitures (interfaces) here.
  Future<String?> getDeviceToken();
  Future<SignUpResponse> signup(Map<String, dynamic> signupPayload);
  Future<User> loginUsingToken(Map<String, dynamic> loginPayload);

  Future<SignUpResponse> signInWithGoogle(
    Map<String, dynamic> googleSignInPayload, {
    required Function() showPhoneInput,
    required VoidCallback serverRequestStarted,
  });
  Future<SignUpResponse> signInWithFacebook(
    Map<String, dynamic> facebookSignInPayload, {
    required Function() showPhoneInput,
    required VoidCallback serverRequestStarted,
  });
  Future<String> signInWithTwitter();

  Future<VerifyResponse> verifyOtp(Map<String, dynamic> verifyPayload);
  Future<User> updateUser(
      File? profileImage, Map<String, dynamic>? userPayload);
}

abstract class IHomeRepository {
  // Google map api calls
  Future<List<Suggestion>> getPlaceSugestions(
      String input, String lang, String country, String sessionToken);
  Future<Place> getPlaceDetailFromId(String placeId, String sessionToken);
  Future<List<LatLng>> getRoutePolylines(
      PointLatLng origin, PointLatLng destination);

  // notification calls
  registerFCM(
      {required Function(NotificationMessage notificationMessage)
          onMessageRecieved});

  // server call apis
  Future<FindDriversResponse> findDrivers(
      Map<String, dynamic> findDriversPayload);

  Future<RequestRideResponse> requestRide(
      Map<String, dynamic> findDriversPayload);

  Future<BasicResponse> cancelRide(Map<String, dynamic> cancelPayload);
}

abstract class ICommonRepository {
  // Todo: Add common request class signitures (interfaces) here.
}

abstract class IWalletRepository {
  // Todo: Add wallet request class signitures (interfaces) here.
}

abstract class IFileRepository {
  // Todo: Add file/media requests here.
  Future<File> getMedia(ImageSource imageSource, String mediaType);
  Future<File?> getCroppedImage(File imageFile);
}

abstract class IProfileRepository {
  // Todo: Add profile request class signitures (interfaces) here.
}

abstract class IPaymentRepository {
  // Todo: Add profile request class signitures (interfaces) here.
}
