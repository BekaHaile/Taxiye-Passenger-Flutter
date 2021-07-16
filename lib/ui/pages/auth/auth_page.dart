import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:taxiye_passenger/core/enums/auth_enums.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:taxiye_passenger/ui/pages/auth/components/signin_form.dart';
import 'package:taxiye_passenger/ui/pages/auth/components/signup_form.dart';
import 'package:taxiye_passenger/ui/widgets/logo_image.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class AuthPage extends GetView<AuthController> {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController(initialPage: 0);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: kPagePadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: Get.height * 0.08),
              const LogoImage(),
              const SizedBox(height: 24.0),
              SizedBox(
                height: Get.height * 0.67,
                child: Obx(() => PageView(
                      reverse: !(controller.authStep == AuthStep.signup),
                      controller: _pageController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        SignUpForm(
                          onSignUp: controller.signup(),
                        ),
                        SignInForm(),
                      ],
                    )),
              ),
              Obx(
                () =>
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    controller.authStep == AuthStep.signup
                        ? 'already_have_account'.tr
                        : 'not_regeitered'.tr,
                    style: AppTheme.subtitle
                        .copyWith(color: AppTheme.darkTextColor),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    onPressed: () {
                      controller.authStep =
                          controller.authStep == AuthStep.signup
                              ? AuthStep.signin
                              : AuthStep.signup;

                      _pageController.animateToPage(
                          controller.authStep == AuthStep.signup ? 1 : 0,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeIn);
                    },
                    child: Text(
                      controller.authStep == AuthStep.signup
                          ? 'signin'.tr
                          : 'signup'.tr,
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.primaryColor,
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
