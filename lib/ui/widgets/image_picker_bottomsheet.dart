import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';

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
      height: 180,
      child: Container(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          bottom: 20.0,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'pick_image_from'.tr,
                textAlign: TextAlign.center,
                style: AppTheme.title,
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.camera,
                color: AppTheme.primaryColor,
              ),
              title: Text('camera'.tr),
              onTap: () {
                Get.back();
                onPickFromCallback(ImageSource.camera);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.photo_album,
                color: AppTheme.primaryColor,
              ),
              title: Text('gallery'.tr),
              onTap: () {
                Get.back();
                onPickFromCallback(ImageSource.gallery);
              },
            ),
          ],
        ),
      ),
    );
  }
}
