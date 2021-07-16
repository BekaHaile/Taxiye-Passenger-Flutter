import 'package:flutter/material.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/widgets/phone_input.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:taxiye_passenger/ui/widgets/title_view.dart';
import 'package:get/get.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TitleView(
            title: 'let_get_started'.tr,
            subTitle: 'signup_info'.tr,
          ),
          const SizedBox(height: 48.0),
          const PhoneInput(),
          const SizedBox(height: 30.0),
          TextFormField(
            // controller: phoneController,
            keyboardType: TextInputType.visiblePassword,
            style: AppTheme.subtitle.copyWith(fontSize: 16.0),
            decoration: AppTheme.textFieldDecoration.copyWith(
              hintText: 'passcode'.tr,
            ),
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
              // sign up validation
            },
          ),
        ],
      ),
    );
  }
}
