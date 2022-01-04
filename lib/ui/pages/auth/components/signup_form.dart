import 'package:flutter/material.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:taxiye_passenger/ui/widgets/phone_input.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:taxiye_passenger/ui/widgets/title_view.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class SignUpForm extends GetView<AuthController> {
  const SignUpForm({Key? key}) : super(key: key);

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
                title: 'let_get_started'.tr,
                subTitle: 'signup_info'.tr,
              ),
              const SizedBox(height: 48.0),
              PhoneInput(
                initialCountry: controller.country,
                onChanged: (value) => controller.phoneNumber = value,
                onCountryChange: (value) =>
                    controller.country = value ?? kCountries.first,
              ),
              const SizedBox(height: 30.0),
              RoundedButton(
                text: 'signup'.tr,
                onPressed: () {
                  final form = _formKey.currentState;
                  if (form?.validate() ?? false) {
                    form?.save();
                    controller.signup();
                  }
                },
              ),
              const SizedBox(height: 10.0),
              Text(
                'terms_info'.tr,
                style: AppTheme.subtitle.copyWith(fontSize: 12.0),
              ),
              GestureDetector(
                onTap: () => Get.toNamed(Routes.legalDetails),
                child: Text(
                  'terms_conditions'.tr,
                  style: AppTheme.subtitle.copyWith(
                    fontSize: 14.0,
                    color: AppTheme.primaryColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(height: 45.0),
              // Text(
              //   'signup_with'.tr,
              //   style: AppTheme.subtitle.copyWith(fontSize: 14.0),
              // ),
              // const SizedBox(height: 20.0),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     BoxUI(
              //       icon: SvgPicture.asset('assets/icons/google.svg'),
              //       onTapCallback: () => controller.signInWithGoogle(),
              //     ),
              //     BoxUI(
              //       icon: SvgPicture.asset('assets/icons/facebook.svg'),
              //       onTapCallback: () => controller.signInWithFacebook(),
              //     ),
              //     BoxUI(
              //       icon: SvgPicture.asset(
              //         'assets/icons/twitter.svg',
              //       ),
              //       onTapCallback: () => controller.signInWithTwitter(),
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
