import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:taxiye_passenger/core/enums/auth_enums.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:taxiye_passenger/ui/pages/auth/components/signin_form.dart';
import 'package:taxiye_passenger/ui/pages/auth/components/signup_form.dart';
import 'package:taxiye_passenger/ui/widgets/logo_image.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class AuthPage extends GetView<AuthController> {
  AuthPage({Key? key}) : super(key: key);

  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    controller.authStep = AuthStep.signup;
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              height: Get.height,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: kPagePadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(height: 50.0),
                    const LogoImage(),
                    const SizedBox(height: 20.0),
                    Expanded(
                      child: Obx(() => PageView(
                            reverse: controller.authStep == AuthStep.signup,
                            controller: _pageController,
                            physics: const NeverScrollableScrollPhysics(),
                            children: const [
                              SignUpForm(),
                              SignInForm(),
                            ],
                          )),
                    ),
                    const SizedBox(height: 10.0),
                    Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            controller.authStep == AuthStep.signup
                                ? 'already_have_account'.tr
                                : 'not_regeitered'.tr,
                            style: AppTheme.subtitle
                                .copyWith(color: AppTheme.darkTextColor),
                          ),
                          const SizedBox(width: 4.0),
                          GestureDetector(
                            onTap: () {
                              controller.authStep =
                                  controller.authStep == AuthStep.signup
                                      ? AuthStep.signin
                                      : AuthStep.signup;

                              _pageController.animateToPage(
                                  controller.authStep == AuthStep.signin
                                      ? 1
                                      : 0,
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Obx(() => ModalProgressHUD(
              child: const SizedBox(),
              inAsyncCall: controller.status.value == Status.loading,
            )),
      ],
    );
  }
}
