import 'dart:io';

// import 'package:device_info/device_info.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';

bool isPasswordValid(String password) {
  /*
        Here is a description about the regex used below
                    ^                 # start-of-string
                    (?=.*[0-9])       # a digit must occur at least once
                    (?=.*[a-z])       # a lower case letter must occur at least once
                    (?=.*[A-Z])       # an upper case letter must occur at least once
                    (?=.*[@#$%^&+=])  # a special character must occur at least once you can replace with your special characters
                    (?=\\S+$)         # no whitespace allowed in the entire string
                    .{4,}             # anything, at least six places though
                    $                 # end-of-string
        */
  const String passwordPattern = '^(?=.*[0-9])(?=\\S+\$).{5,}\$';
  final regExp = RegExp(passwordPattern);
  return regExp.hasMatch(password.trim());
}

String? validateMobile(String value) {
  String pattern = r'(^(?:[+0]9)?[0-9]{9,12}$)';
  RegExp regExp = RegExp(pattern);
  if (value.isEmpty) {
    return 'error_phone'.tr;
  } else if (!regExp.hasMatch(value)) {
    return 'invalid_phone'.tr;
  }
  return null;
}

// Returns coutry flag from coutry code
String getCountryFlag(String countryCode) {
  String flag = countryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
      (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));
  return flag;
}

// get initials from Name
String getInitials(fullName) {
  List<String> names = fullName.split(" ");
  String initials = "";
  int numWords = 2;

  if (fullName.trim().isEmpty) return '';
  if (numWords < names.length) {
    numWords = names.length;
  }
  for (var i = 0; i < numWords && i < 1; i++) {
    initials += names[i][0].toUpperCase();
  }
  return initials;
}

String formatDate(DateTime date, {bool showTime = false}) {
  final DateFormat format = DateFormat("MMMM dd, yyyy");
  final DateFormat dateWithTime = DateFormat("MMMM dd, yyyy hh:mm a");
  return showTime ? dateWithTime.format(date) : format.format(date);
}

String formatTime(DateTime date) {
//   String formattedTime = DateFormat.Hms().format(now);
//   String formattedTime = DateFormat.jm().format(now);           //5:08 PM
// String formattedTime = DateFormat.Hm().format(now);
  return DateFormat.jm().format(date);
}

// to show toasts
void toast(String title, String message) {
  Get.snackbar(title.tr, message.tr, snackPosition: SnackPosition.BOTTOM);
}

Future<Map<String, dynamic>> getDeviceInfo() async {
  final Map<String, dynamic> deviceInfo = {};

  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  try {
    if (Platform.isAndroid) {
      var androidInfo = await deviceInfoPlugin.androidInfo;
      deviceInfo['id'] = androidInfo.androidId; //UUID for Android
      deviceInfo['version'] = androidInfo.version.release;
      deviceInfo['model'] = androidInfo.model;
      deviceInfo['name'] = '${androidInfo.manufacturer} ${androidInfo.model}';
    } else if (Platform.isIOS) {
      var iosInfo = await deviceInfoPlugin.iosInfo;
      deviceInfo['id'] = iosInfo.identifierForVendor; //UUID for iOS
      deviceInfo['version'] = iosInfo.systemVersion;
      deviceInfo['model'] = iosInfo.model;
      deviceInfo['name'] = iosInfo.name;
    }
  } on PlatformException {
    print('Failed to get platform version');
  }

//if (!mounted) return;
  return deviceInfo;
}

/// Determine the current position of the device.
/// When the location services are not enabled or permissions
/// are denied the `Future` will return an error.
Future<Position> getCurrentLocation() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the
    // App to enable the location services.
    Geolocator.openLocationSettings();
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately.
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}

Future<Placemark> getPlaceNameFromCordinate(LatLng placeCoordinate) async {
  try {
    List<Placemark> placemarks = await placemarkFromCoordinates(
      placeCoordinate.latitude,
      placeCoordinate.longitude,
    );

    if (placemarks.isNotEmpty) {
      return placemarks[0];
    } else {
      return Future.error("Place not found");
    }
  } catch (err) {
    return Future.error("$err");
  }
}

String getDisplayTimeFromSeconds(int seconds) {
  int hour = seconds ~/ 3600;
  int min = seconds ~/ 60;
  int sec = seconds % 60;

  return '${(hour > 0 ? '$hour h' : '')} ${(min > 0 ? '$min m' : '')} $sec s';
}

unfocus(BuildContext context) {
  var currentFocus = FocusScope.of(context);

  if (!currentFocus.hasPrimaryFocus) {
    currentFocus.unfocus();
  }
}
