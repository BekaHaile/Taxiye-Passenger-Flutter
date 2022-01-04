import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';

class HelloCashInfoDialog extends StatelessWidget {
  const HelloCashInfoDialog({
    Key? key,
    required this.onConfirmCallBack,
  }) : super(key: key);

  final VoidCallback onConfirmCallBack;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // insetPadding: const EdgeInsets.all(0),
      title: Text(
        'payment'.tr,
        textAlign: TextAlign.center,
        style: AppTheme.title2,
      ),
      content: Text(
        'hello_cash_pay_fare'.tr,
        textAlign: TextAlign.start,
        style: const TextStyle(
          fontSize: 14.0,
          letterSpacing: 1.2,
        ),
      ),
      actions: [
        TextButton(
          child: Text(
            'ok'.tr,
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
            onConfirmCallBack();
          },
        ),
      ],
    );
  }
}
