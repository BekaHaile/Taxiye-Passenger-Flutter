import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';

/*
 Handles any media, file requests
*/

class FileService {
  // Todo: add any file requests here.
  final picker = ImagePicker();

  Future<File> getMedia(ImageSource imagesource, String mediaType) async {
    try {
      final pickedFile = await (mediaType == 'image'
          ? picker.getImage(source: imagesource)
          : picker.getVideo(source: imagesource));
      if (pickedFile != null) {
        return File(pickedFile.path);
      } else {
        return Future.error('media is null');
      }
    } on Exception catch (e) {
      // print(e.toString());
      return Future.error(e.toString());
    }
  }

  Future<File?> getCropeImage(File imageFile) async {
    try {
      return await ImageCropper.cropImage(
          sourcePath: imageFile.path,
          aspectRatioPresets: [
            CropAspectRatioPreset.square,
            CropAspectRatioPreset.ratio3x2,
            CropAspectRatioPreset.original,
            CropAspectRatioPreset.ratio4x3,
            CropAspectRatioPreset.ratio16x9
          ],
          androidUiSettings: AndroidUiSettings(
              toolbarTitle: 'crop_image'.tr,
              toolbarColor: AppTheme.primaryColor,
              toolbarWidgetColor: Colors.white,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false),
          iosUiSettings: const IOSUiSettings(
            minimumAspectRatio: 1.0,
          ));
    } on Exception catch (e) {
      // print(e.toString());
      return Future.error(e.toString());
    }
  }
}
