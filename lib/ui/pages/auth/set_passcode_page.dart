import 'package:flutter/material.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:taxiye_passenger/ui/pages/auth/components/passcode_input.dart';
import 'package:taxiye_passenger/ui/widgets/circle_nav.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:taxiye_passenger/ui/widgets/title_view.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/functions.dart';

class SetPasscodePage extends GetView<AuthController> {
  const SetPasscodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            height: Get.height,
            child: Padding(
              padding: const EdgeInsets.all(kPagePadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Form(
                        key: _formKey,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            children: [
                              const SizedBox(height: ktitleTopPadding),
                              TitleView(
                                title: 'setup_passcode'.tr,
                                subTitle: 'setup_passcode_info'.tr,
                              ),
                              const SizedBox(height: 40.0),
                              PasscodeInput(
                                labelText: 'passcode'.tr,
                                onChanged: (value) =>
                                    controller.passcode = value,
                              ),
                              const SizedBox(height: 25.0),
                              PasscodeInput(
                                labelText: 'confirm_passcode'.tr,
                                onChanged: (value) =>
                                    controller.confirmPassCode = value,
                                validator: (value) =>
                                    isPasswordValid(value ?? '')
                                        ? value == controller.passcode
                                            ? null
                                            : 'password_match_error'.tr
                                        : 'invalid_passcode'.tr,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
                    child: RoundedButton(
                      text: 'finish'.tr,
                      onPressed: () {
                        final form = _formKey.currentState;
                        if (form?.validate() ?? false) {
                          form?.save();
                          controller.setPasscode();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const CircleNav(),
      ]),
    );
  }
}
