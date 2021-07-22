import 'package:flutter/material.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:taxiye_passenger/ui/pages/auth/components/passcode_input.dart';
import 'package:taxiye_passenger/ui/widgets/phone_input.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:taxiye_passenger/ui/widgets/title_view.dart';
import 'package:get/get.dart';

class SignInForm extends GetView<AuthController> {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TitleView(
                title: 'let_get_started'.tr,
                subTitle: 'signup_info'.tr,
              ),
              const SizedBox(height: 48.0),
              PhoneInput(
                onChanged: (value) => controller.phoneNumber = value,
              ),
              const SizedBox(height: 30.0),
              PasscodeInput(
                labelText: 'passcode'.tr,
                onChanged: (value) => controller.passcode = value,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(0.0),
                ),
                child: Text(
                  'forgot_passcode'.tr,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: AppTheme.primaryColor,
                  ),
                ),
                onPressed: () {},
              ),
              const SizedBox(height: 30.0),
              RoundedButton(
                text: 'signin'.tr,
                onPressed: () {
                  final form = _formKey.currentState;
                  if (form?.validate() ?? false) {
                    form?.save();
                    controller.signin();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
