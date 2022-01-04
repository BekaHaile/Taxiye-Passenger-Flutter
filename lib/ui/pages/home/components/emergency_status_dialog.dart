import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';

class EmergencyStatusDialog extends StatefulWidget {
  const EmergencyStatusDialog({
    Key? key,
    required this.emergencyStatus,
    required this.onToggle,
  }) : super(key: key);

  final EmergencyStatus emergencyStatus;
  final Function(bool value) onToggle;

  @override
  State<EmergencyStatusDialog> createState() => _EmergencyStatusDialogState();
}

class _EmergencyStatusDialogState extends State<EmergencyStatusDialog> {
  late EmergencyStatus emergencyStatus;
  @override
  void initState() {
    super.initState();
    emergencyStatus = widget.emergencyStatus;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.all(0),
      title: Text(
        'change_emergency_status'.tr,
        textAlign: TextAlign.center,
        style: AppTheme.title2,
      ),
      content: SizedBox(
        width: Get.width * 0.75,
        child: ListTile(
          title: Text('emrgency_status'.tr, style: AppTheme.title2),
          trailing: Switch(
            value: emergencyStatus == EmergencyStatus.enable,
            onChanged: (value) {
              setState(() {
                emergencyStatus =
                    value ? EmergencyStatus.enable : EmergencyStatus.disable;
              });
              widget.onToggle(value);
              Get.back();
            },
            activeColor: AppTheme.primaryColor,
          ),
        ),
      ),
    );
  }
}
