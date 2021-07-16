import 'package:flutter/material.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/widgets/box_ui.dart';
import 'package:taxiye_passenger/ui/widgets/phone_input.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:taxiye_passenger/ui/widgets/title_view.dart';
import 'package:get/get.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
    required this.onSignUp,
  }) : super(key: key);

  final VoidCallback onSignUp;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          TitleView(
            title: 'let_get_started'.tr,
            subTitle: 'signup_info'.tr,
          ),
          const SizedBox(height: 48.0),
          const PhoneInput(),
          const SizedBox(height: 30.0),
          RoundedButton(
            text: 'signup'.tr,
            onPressed: () {
              // sign up validation
            },
          ),
          const SizedBox(height: 10.0),
          Text(
            'terms_info'.tr,
            style: AppTheme.subtitle.copyWith(fontSize: 12.0),
          ),
          Text(
            'terms_conditions'.tr,
            style: AppTheme.subtitle.copyWith(
              fontSize: 12.0,
              color: AppTheme.primaryColor,
              decoration: TextDecoration.underline,
            ),
          ),
          const SizedBox(height: 45.0),
          Text(
            'signup_with'.tr,
            style: AppTheme.subtitle.copyWith(fontSize: 14.0),
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              BoxUI(icon: Icons.facebook),
              BoxUI(icon: Icons.facebook),
              BoxUI(icon: Icons.facebook),
            ],
          )
        ],
      ),
    );
  }
}
