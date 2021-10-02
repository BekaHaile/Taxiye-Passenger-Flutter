import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/profile_controller.dart';
import 'package:taxiye_passenger/ui/pages/profile/components/edit_profile_dialog.dart';
import 'package:taxiye_passenger/ui/widgets/image_picker_bottomsheet.dart';
import 'package:taxiye_passenger/ui/widgets/profile_avatar.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class ProfileInfoPage extends GetView<ProfileController> {
  const ProfileInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: const WhiteAppBar(),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPagePadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'your_info'.tr,
                    style: AppTheme.body.copyWith(fontSize: 24.0),
                  ),
                  const SizedBox(height: 30.0),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: AppTheme.shadowColor.withOpacity(0.16),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: const Offset(0.0, 5.0),
                        ),
                      ],
                    ),
                    child: Obx(() => ProfileAvatar(
                          radius: 45,
                          name: controller.authController.user.userName ?? '',
                          imageUrl: controller.authController.user.userImage,
                          onPickCallback: () => Get.bottomSheet(
                            ImagePickerBottomsheet(
                              onPickFromCallback: (imageSource) =>
                                  controller.getImage(imageSource),
                            ),
                            backgroundColor: Colors.white,
                          ),
                        )),
                  ),
                  const SizedBox(height: 30.0),
                  Obx(() => ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          final ProfileInfo profileInfo =
                              controller.profileInfos[index];
                          return ProfileInfoTile(
                            profileInfo: profileInfo,
                            onTap: () => Get.bottomSheet(EditProfileDialog(
                                title: profileInfo.title,
                                user: controller.authController.user,
                                onValueChange: (changePayload) {
                                  if (changePayload != null) {
                                    controller.updateProfile(changePayload);
                                  }
                                  Get.back();
                                  // controller.profileInfos[index].value = value;
                                  // Todo: set changed values
                                })),
                          );
                        },
                        itemCount: controller.profileInfos.length,
                      )),
                ],
              ),
            ),
          ),
        ),
        Obx(() => ModalProgressHUD(
              child: const SizedBox(),
              inAsyncCall: controller.status.value == Status.loading,
            ))
      ],
    );
  }
}

class ProfileInfoTile extends StatelessWidget {
  const ProfileInfoTile({
    Key? key,
    required this.profileInfo,
    required this.onTap,
  }) : super(key: key);

  final ProfileInfo profileInfo;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0.0),
      title: Text(
        profileInfo.title.tr,
        style: AppTheme.title2,
      ),
      subtitle: Text(
        profileInfo.value,
        style: AppTheme.subtitle.copyWith(fontSize: 12.0),
      ),
      trailing: Icon(
        Icons.chevron_right,
        color:
            profileInfo.isActive ? AppTheme.darkTextColor : AppTheme.greyColor2,
      ),
      onTap: profileInfo.isActive ? onTap : null,
    );
  }
}
