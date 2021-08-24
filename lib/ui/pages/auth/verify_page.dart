import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:taxiye_passenger/ui/widgets/shadow_button.dart';
import 'package:taxiye_passenger/ui/widgets/circle_nav.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:taxiye_passenger/ui/widgets/title_view.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class VerifyPage extends GetView<AuthController> {
  const VerifyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Stack(
            children: [
              SingleChildScrollView(
                child: SizedBox(
                  height: Get.height,
                  child: Padding(
                    padding: const EdgeInsets.all(kPagePadding),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const SizedBox(height: 96.0),
                            TitleView(
                              title: 'verify_title'.tr,
                              subTitle: 'verify_info'.tr,
                            ),
                            const SizedBox(height: 40.0),
                            PinPut(
                              fieldsCount: 4,
                              onSubmit: (String pin) => controller.verify(pin),
                              // mainAxisSize: MainAxisSize.min,
                              eachFieldWidth: 50.0,
                              eachFieldHeight: 50.0,
                              fieldsAlignment: MainAxisAlignment.center,
                              eachFieldMargin:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              textStyle:
                                  AppTheme.title.copyWith(fontSize: 20.0),

                              // focusNode: _pinPutFocusNode,
                              // controller: _pinPutController,
                              submittedFieldDecoration: _pinPutDecoration,
                              selectedFieldDecoration:
                                  _pinPutDecoration.copyWith(
                                border: Border.all(
                                  color: AppTheme.primaryColor,
                                ),
                              ),
                              followingFieldDecoration: _pinPutDecoration,
                            ),
                            const SizedBox(height: 40.0),
                            Obx(
                              () => controller.resendCounter > 0
                                  ? Text(
                                      'reset_code_in'.tr +
                                          ' 00:${controller.resendCounter}',
                                      style: AppTheme.body.copyWith(
                                          color: AppTheme.primaryColor),
                                    )
                                  : Column(
                                      children: [
                                        Text('didnt_recieve_code'.tr,
                                            style: AppTheme.body),
                                        const SizedBox(height: 15.0),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            ShadowButton(
                                              text: 'resend_code'.tr,
                                              textStyle:
                                                  AppTheme.title.copyWith(
                                                fontSize: 14.0,
                                                color: AppTheme.primaryColor,
                                              ),
                                              onPressed: () =>
                                                  controller.resendCode(),
                                            ),
                                            const SizedBox(width: 20.0),
                                            ShadowButton(
                                              text: 'call_me'.tr,
                                              textStyle:
                                                  AppTheme.title.copyWith(
                                                fontSize: 14.0,
                                                color: AppTheme.primaryColor,
                                              ),
                                              onPressed: () =>
                                                  controller.callMe(),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: RoundedButton(
                            text: 'continue'.tr,
                            onPressed: () => controller.verify(''),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const CircleNav(),
            ],
          ),
        ),
        Obx(() => ModalProgressHUD(
              child: const SizedBox(),
              inAsyncCall: controller.status.value == Status.loading,
            )),
      ],
    );
  }

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: AppTheme.greyColor2),
      borderRadius: BorderRadius.circular(8.0),
    );
  }
}
