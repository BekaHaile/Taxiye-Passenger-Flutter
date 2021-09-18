import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/profile_controller.dart';
import 'package:taxiye_passenger/ui/pages/profile/components/edit_profile_dialog.dart';
import 'package:taxiye_passenger/ui/widgets/profile_avatar.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class ProfileInfoPage extends GetView<ProfileController> {
  const ProfileInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                height: 90,
                width: 90,
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
                child: const ProfileAvatar(
                  radius: 45,
                  name: '',
                ),
              ),
              const SizedBox(height: 30.0),
              ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final ProfileInfo profileInfo =
                      controller.profileInfos[index];
                  return ProfileInfoTile(
                    profileInfo: profileInfo,
                    onTap: () => Get.bottomSheet(EditProfileDialog(
                        title: profileInfo.title,
                        user: User('Ashenafi'),
                        onValueChange: (value) {
                          // Todo: set changed values
                        })),
                  );
                },
                itemCount: controller.profileInfos.length,
              ),
            ],
          ),
        ),
      ),
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
        style: AppTheme.title.copyWith(fontSize: 16.0),
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
