import 'package:flutter/material.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/functions.dart';

class PhoneInput extends StatefulWidget {
  const PhoneInput({Key? key}) : super(key: key);

  @override
  State<PhoneInput> createState() => _PhoneInputState();
}

class _PhoneInputState extends State<PhoneInput> {
  TextEditingController phoneController = TextEditingController();
  String countryCodeValue = "+251";

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: phoneController,
      keyboardType: TextInputType.phone,
      style: AppTheme.subtitle.copyWith(fontSize: 16.0),
      decoration: AppTheme.textFieldDecoration.copyWith(
        hintText: 'phone_number'.tr,
        prefixIconConstraints: const BoxConstraints(maxWidth: 100.0),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Container(
            decoration: const BoxDecoration(
                border: Border(right: BorderSide(color: Colors.grey))),
            child: DropdownButtonFormField<List<String>>(
              value: kCountries.first,
              isExpanded: true,
              icon: const Icon(Icons.expand_more),
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(style: BorderStyle.none),
                ),
              ),
              items: kCountries
                  .map<DropdownMenuItem<List<String>>>((List<String> country) {
                return DropdownMenuItem<List<String>>(
                  value: country,
                  child: Center(child: Text(getCountryFlag(country[1]))),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  countryCodeValue = value![0];
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
