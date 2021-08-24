import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:taxiye_passenger/ui/widgets/circle_nav.dart';
import 'package:taxiye_passenger/ui/widgets/image_picker_bottomsheet.dart';
import 'package:taxiye_passenger/ui/widgets/profile_avatar.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:taxiye_passenger/ui/widgets/title_view.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class SetProfilePage extends GetView<AuthController> {
  const SetProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Stack(
      children: [
        Scaffold(
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
                            child: Column(
                              children: [
                                const SizedBox(height: ktitleTopPadding),
                                TitleView(
                                  title: 'setup_profile'.tr,
                                  subTitle: 'setup_profile_info'.tr,
                                ),
                                const SizedBox(height: 20.0),
                                Obx(() => ProfileAvatar(
                                      pickedFilePath:
                                          controller.profileImage?.path ?? '',
                                      onPickCallback: () {
                                        Get.bottomSheet(
                                          ImagePickerBottomsheet(
                                            onPickFromCallback: (imageSource) =>
                                                controller
                                                    .getImage(imageSource),
                                          ),
                                          backgroundColor: Colors.white,
                                        );
                                      },
                                    )),
                                const SizedBox(height: 25.0),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.name,
                                    onChanged: (value) =>
                                        controller.fullName = value,
                                    style:
                                        AppTheme.title.copyWith(fontSize: 16.0),
                                    decoration:
                                        AppTheme.textFieldDecoration.copyWith(
                                      labelText: 'full_name'.tr,
                                    ),
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    validator: (value) {
                                      final fullname = value?.trim().split(' ');
                                      return fullname?.length.isLowerThan(2) ??
                                              true
                                          ? 'error_name'.tr
                                          : null;
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 20.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    onChanged: (value) =>
                                        controller.email = value,
                                    style:
                                        AppTheme.title.copyWith(fontSize: 16.0),
                                    decoration:
                                        AppTheme.textFieldDecoration.copyWith(
                                      labelText: 'email_address'.tr,
                                    ),
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    validator: (value) =>
                                        ((value?.isEmpty ?? true) ||
                                                GetUtils.isEmail(
                                                    value?.trim() ?? ''))
                                            ? null
                                            : 'error_email'.tr,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: DropdownButtonFormField<int>(
                                    value: controller.gender,
                                    icon: const Icon(Icons.expand_more),
                                    style:
                                        AppTheme.title.copyWith(fontSize: 16.0),
                                    decoration:
                                        AppTheme.textFieldDecoration.copyWith(
                                      labelText: 'gender'.tr,
                                    ),
                                    items: [0, 1]
                                        .map((gender) => DropdownMenuItem(
                                              child: Center(
                                                  child: Text(gender == 0
                                                      ? 'female'.tr
                                                      : 'male'.tr)),
                                              value: gender,
                                            ))
                                        .toList(),
                                    onChanged: (value) =>
                                        controller.gender = value ?? 1,
                                  ),
                                ),

                                // Padding(
                                //   padding:
                                //       const EdgeInsets.symmetric(horizontal: 10.0),
                                //   child: TextFormField(
                                //     keyboardType: TextInputType.text,
                                //     onChanged: (value) => controller.gender = value,
                                //     style: AppTheme.title.copyWith(fontSize: 16.0),
                                //     decoration:
                                //         AppTheme.textFieldDecoration.copyWith(
                                //       labelText: 'gender'.tr,
                                //       // Todo: add gender validator, check if necessary and implement
                                //       // using dropdown instead.
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
                        child: RoundedButton(
                          text: 'continue'.tr,
                          onPressed: () {
                            final form = _formKey.currentState;
                            if (form?.validate() ?? false) {
                              form?.save();
                              controller.setProfile();
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (!(Get.routing.route?.isFirst ?? true)) const CircleNav(),
          ]),
        ),
        Obx(() => ModalProgressHUD(
              child: const SizedBox(),
              inAsyncCall: controller.status.value == Status.loading,
            )),
      ],
    );
  }
}
