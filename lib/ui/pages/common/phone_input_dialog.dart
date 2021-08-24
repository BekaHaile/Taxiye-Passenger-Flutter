import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/widgets/phone_input.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class PhoneInputDialog extends StatefulWidget {
  const PhoneInputDialog({
    Key? key,
  }) : super(key: key);

  @override
  State<PhoneInputDialog> createState() => _PhoneInputDialogState();
}

class _PhoneInputDialogState extends State<PhoneInputDialog> {
  Country country = kCountries.first;
  String phoneNumber = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: AlertDialog(
        title: Text(
          'add_phone_number'.tr,
          textAlign: TextAlign.center,
        ),
        content: PhoneInput(
          onChanged: (value) => phoneNumber = value,
          onCountryChange: (value) => country = value ?? kCountries.first,
        ),
        actions: [
          TextButton(
            child: Text(
              'done'.tr,
              style: const TextStyle(
                fontFamily: AppTheme.fontName,
                fontWeight: FontWeight.w700,
                fontSize: 18.0,
                letterSpacing: 1,
                color: AppTheme.primaryColor,
              ),
            ),
            onPressed: () {
              final form = _formKey.currentState;
              if (form?.validate() ?? false) {
                form?.save();

                Get.back(result: '${country.code}$phoneNumber');
              }
            },
          ),
        ],
      ),
    );
  }
}
