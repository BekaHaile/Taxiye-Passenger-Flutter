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
    this.cancelText = 'cancel',
    this.actionCallback,
    this.contentTextAlign = TextAlign.center,
    this.secondAction,
    this.showCancel = true,
    this.secondActionCallback,
  }) : super(key: key);

  final String title;
  final String content;
  final String actionText;
  final String cancelText;
  final VoidCallback? actionCallback;
  final TextAlign contentTextAlign;

  final bool showCancel;
  final VoidCallback? secondActionCallback;
  final String? secondAction;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // insetPadding: const EdgeInsets.all(0),
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: AppTheme.title2,
      ),
      content: Text(
        content,
        textAlign: TextAlign.start,
        style: const TextStyle(
          fontSize: 14.0,
          letterSpacing: 1.2,
        ),
      ),
      actions: [
        if (showCancel)
          TextButton(
            child: Text(
              cancelText.tr,
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
        if (actionCallback != null)
          TextButton(
            child: Text(
              actionText.tr,
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
                fontSize: 16.0,
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
