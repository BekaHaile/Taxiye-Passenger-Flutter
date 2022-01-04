import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/functions.dart';

class PhoneInput extends StatelessWidget {
  const PhoneInput({
    Key? key,
    this.onSaved,
    this.onChanged,
    this.onCountryChange,
    this.validator,
    this.intialValue = '',
    this.initialCountry,
    this.countryList,
  }) : super(key: key);

  final Function(String? value)? onSaved;
  final Function(String value)? onChanged;
  final String intialValue;
  final Country? initialCountry;
  final List<Country>? countryList;
  final Function(Country? value)? onCountryChange;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: phoneController,
      initialValue: intialValue,
      maxLength: 12,
      keyboardType: TextInputType.phone,
      onChanged: onChanged,
      onSaved: onSaved,
      style: AppTheme.title2,
      decoration: AppTheme.textFieldDecoration.copyWith(
        hintText: 'phone_number'.tr,
        counterText: '',
        prefixIconConstraints: const BoxConstraints(maxWidth: 100.0),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Container(
            decoration: const BoxDecoration(
                border: Border(right: BorderSide(color: Colors.grey))),
            child: DropdownButtonFormField<Country>(
              value: initialCountry ?? kCountries.first,
              isExpanded: true,
              icon: const Icon(Icons.expand_more),
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(style: BorderStyle.none),
                ),
              ),
              items: (countryList ?? kCountries)
                  .map<DropdownMenuItem<Country>>((Country country) {
                return DropdownMenuItem<Country>(
                  value: country,
                  child: Center(child: Text(getCountryFlag(country.isoCode))),
                );
              }).toList(),
              onChanged: (value) =>
                  onCountryChange != null ? onCountryChange!(value) : null,
            ),
          ),
        ),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator ?? (value) => validateMobile(value ?? ''),
    );
  }
}
