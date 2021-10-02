import 'package:flutter/material.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/functions.dart';

class PasscodeInput extends StatefulWidget {
  const PasscodeInput({
    Key? key,
    required this.labelText,
    this.onSaved,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  final String labelText;
  final Function(String? value)? onSaved;
  final Function(String value)? onChanged;
  final FormFieldValidator<String>? validator;

  @override
  _PasscodeInputState createState() => _PasscodeInputState();
}

class _PasscodeInputState extends State<PasscodeInput> {
  bool _visibility = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      onSaved: widget.onSaved,
      onChanged: widget.onChanged,
      style: AppTheme.title2,
      decoration: AppTheme.textFieldDecoration.copyWith(
        labelText: widget.labelText,
        suffixIcon: IconButton(
          color: AppTheme.darkColor,
          icon: Icon(
            _visibility ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () => setState(() {
            _visibility = !_visibility;
          }),
        ),
      ),
      obscureText: !_visibility,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator ??
          (value) =>
              isPasswordValid(value ?? '') ? null : 'invalid_passcode'.tr,
    );
  }
}
