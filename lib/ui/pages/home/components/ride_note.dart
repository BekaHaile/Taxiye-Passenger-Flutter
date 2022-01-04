import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';

class RideNote extends StatelessWidget {
  const RideNote({
    Key? key,
    required this.actionCallback,
  }) : super(key: key);

  final Function(String note) actionCallback;
  @override
  Widget build(BuildContext context) {
    String note = '';
    return AlertDialog(
      // insetPadding: const EdgeInsets.all(0),
      title: Text(
        'ride_note'.tr,
        textAlign: TextAlign.center,
        style: AppTheme.title2,
      ),
      content: SizedBox(
        width: Get.width * 0.85,
        child: TextFormField(
          keyboardType: TextInputType.text,
          maxLines: 4,
          onChanged: (value) => note = value,
          decoration: AppTheme.textFieldDecoration.copyWith(
            hintText: 'note_hint'.tr,
            hintStyle: AppTheme.subtitle
                .copyWith(fontSize: 16.0, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      actions: [
        TextButton(
          child: Text(
            'cancel'.tr,
            style: const TextStyle(
              fontFamily: AppTheme.fontName,
              fontWeight: FontWeight.w700,
              fontSize: 16.0,
              letterSpacing: 1,
              color: AppTheme.primaryColor,
            ),
          ),
          onPressed: () {
            Get.back();
          },
        ),
        TextButton(
          child: Text(
            'save_note'.tr,
            style: const TextStyle(
              fontFamily: AppTheme.fontName,
              fontWeight: FontWeight.w700,
              fontSize: 16.0,
              letterSpacing: 1,
              color: AppTheme.primaryColor,
            ),
          ),
          onPressed: () {
            Get.back();
            actionCallback(note);
          },
        ),
      ],
    );
  }
}
