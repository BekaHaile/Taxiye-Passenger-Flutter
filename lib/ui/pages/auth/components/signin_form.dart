import 'package:flutter/material.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:taxiye_passenger/ui/widgets/phone_input.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:taxiye_passenger/ui/widgets/title_view.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/constants.dart';

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
            children: [
              TitleView(
                title: 'welcome_back'.tr,
                subTitle: 'signin_info'.tr,
              ),
              const SizedBox(height: 48.0),
              PhoneInput(
                initialCountry: controller.country,
                onChanged: (value) => controller.phoneNumber = value,
                onCountryChange: (value) =>
                    controller.country = value ?? kCountries.first,
              ),
              const SizedBox(height: 30.0),
              // uncomment the following if sign in logic is changed back to use password
              // PasscodeInput(
              //   labelText: 'passcode'.tr,
              //   onChanged: (value) => controller.passcode = value,
              // ),
              // TextButton(
              //   style: TextButton.styleFrom(
              //     padding: const EdgeInsets.all(0.0),
              //   ),
              //   child: Text(
              //     'forgot_passcode'.tr,
              //     style: const TextStyle(
              //       fontSize: 14.0,
              //       color: AppTheme.primaryColor,
              //     ),
              //   ),
              //   onPressed: () {},
              // ),
              // const SizedBox(height: 30.0),
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
