import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class ImagePickerBottomsheet extends StatelessWidget {
  const ImagePickerBottomsheet({
    Key? key,
    required this.onPickFromCallback,
  }) : super(key: key);

  final Function(ImageSource imageSource) onPickFromCallback;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      height: 190,
      child: Container(
        padding: const EdgeInsets.all(kPagePadding),
        decoration: AppTheme.bottomSheetDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'profile_picture'.tr,
              textAlign: TextAlign.center,
              style: AppTheme.title2,
            ),
            const SizedBox(height: 20.0),
            ProfilePickerTile(
              imageSource: ImageSource.camera,
              onTap: () {
                Get.back();
                onPickFromCallback(ImageSource.camera);
              },
            ),
            const SizedBox(height: 10.0),
            ProfilePickerTile(
              imageSource: ImageSource.gallery,
              onTap: () => onPickFromCallback(ImageSource.gallery),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilePickerTile extends StatelessWidget {
  const ProfilePickerTile({
    Key? key,
    required this.onTap,
    required this.imageSource,
  }) : super(key: key);

  final ImageSource imageSource;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
        onTap();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          boxShadow: [
            BoxShadow(
              color: AppTheme.shadowColor.withOpacity(0.12),
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
          child: Text(
            imageSource == ImageSource.camera ? 'camera'.tr : 'gallery'.tr,
            style: AppTheme.title2,
          ),
        ),
      ),
    );
  }
}
