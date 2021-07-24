import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';

class ConfirmDialog extends StatelessWidget {
  const ConfirmDialog({
    Key? key,
    required this.title,
    required this.content,
    this.actionText = 'done',
    this.actionCallback,
    this.contentTextAlign = TextAlign.center,
    this.secondAction,
    this.secondActionCallback,
  }) : super(key: key);

  final String title;
  final String content;
  final String actionText;
  final VoidCallback? actionCallback;
  final TextAlign contentTextAlign;

  final VoidCallback? secondActionCallback;
  final String? secondAction;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        textAlign: TextAlign.center,
      ),
      content: Text(
        content,
        textAlign: TextAlign.start,
        style: const TextStyle(
          fontSize: 18.0,
          letterSpacing: 1.2,
        ),
      ),
      actions: [
        TextButton(
          child: Text(
            'cancel'.tr,
            style: const TextStyle(
              fontFamily: AppTheme.fontName,
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
              letterSpacing: 1,
              color: AppTheme.primaryColor,
            ),
          ),
          onPressed: () {
            Get.back();
          },
        ),
        if (actionCallback != null)
          TextButton(
            child: Text(
              actionText.tr,
              style: const TextStyle(
                fontFamily: AppTheme.fontName,
                fontWeight: FontWeight.w700,
                fontSize: 18.0,
                letterSpacing: 1,
                color: AppTheme.primaryColor,
              ),
            ),
            onPressed: () {
              Get.back();
              actionCallback!();
            },
          ),
        if (secondAction != null)
          TextButton(
            child: Text(
              secondAction!,
              style: const TextStyle(
                fontFamily: AppTheme.fontName,
                fontWeight: FontWeight.w700,
                fontSize: 18.0,
                letterSpacing: 1,
                color: AppTheme.primaryColor,
              ),
            ),
            onPressed: () {
              Get.back();
              if (secondActionCallback != null) secondActionCallback!();
            },
          ),
      ],
    );
  }
}
