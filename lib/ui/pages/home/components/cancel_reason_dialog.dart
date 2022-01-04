import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';

class CancelReasonDialog extends StatefulWidget {
  const CancelReasonDialog({
    Key? key,
    required this.title,
    required this.reasons,
    required this.onSelectReason,
  }) : super(key: key);

  final String title;
  final List<String> reasons;
  final Function(String reason) onSelectReason;

  @override
  State<CancelReasonDialog> createState() => _CancelReasonDialogState();
}

class _CancelReasonDialogState extends State<CancelReasonDialog> {
  String selectedReason = '';

  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.all(0),
      title: Text(
        widget.title,
        textAlign: TextAlign.center,
        style: AppTheme.title2,
      ),
      content: SizedBox(
        width: Get.width * 0.8,
        child: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            final String reason = widget.reasons[index];
            return Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                child: RadioListTile<String>(
                  title: Text(reason),
                  value: reason,
                  groupValue: selectedReason,
                  onChanged: (value) => setState(() {
                    selectedReason = value ?? '';
                  }),
                ));
          },
          itemCount: widget.reasons.length,
        ),
      ),
      actions: [
        // TextButton(
        //   child: Text(
        //     'cancel'.tr,
        //     style: const TextStyle(
        //       fontFamily: AppTheme.fontName,
        //       fontWeight: FontWeight.w700,
        //       fontSize: 16.0,
        //       letterSpacing: 1,
        //       color: AppTheme.primaryColor,
        //     ),
        //   ),
        //   onPressed: () {
        //     Get.back();
        //   },
        // ),
        TextButton(
          child: Text(
            'done'.tr,
            style: const TextStyle(
              fontFamily: AppTheme.fontName,
              fontWeight: FontWeight.w700,
              fontSize: 16.0,
              letterSpacing: 1,
              color: AppTheme.primaryColor,
            ),
          ),
          onPressed: () {
            if (selectedReason.isEmpty) {
              Get.snackbar('error'.tr, 'error_select_reason'.tr);
            } else {
              log('selected reason : $selectedReason');
              widget.onSelectReason(selectedReason);
              Get.back();
            }
          },
        ),
      ],
    );
  }
}
