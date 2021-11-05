import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/profile_controller.dart';
import 'package:taxiye_passenger/ui/pages/common/options_tile.dart';
import 'package:taxiye_passenger/ui/widgets/profile_avatar.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class ProfilePage extends GetView<ProfileController> {
  ProfilePage({Key? key}) : super(key: key);

  final List<Option> profileOPtions = [
    Option(
        title: 'your_info',
        subtitle: 'view_edit_your_details',
        leadingIcon: Icons.person),
    Option(
        title: 'emergency_contacts',
        subtitle: '2 people',
        leadingIcon: Icons.call),
    Option(
        title: 'saved_places',
        subtitle: 'Saved places',
        leadingIcon: Icons.call),
  ];

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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'your_profile'.tr,
                    style: AppTheme.body.copyWith(fontSize: 24.0),
                  ),
                  const SizedBox(height: 30.0),
                  Obx(
                    () => Column(
                      children: [
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
                          child: ProfileAvatar(
                            canEdit: false,
                            radius: 45.0,
                            name: controller.authController.user.userName ?? '',
                            imageUrl: controller.authController.user.userImage,
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          controller.authController.user.userName ?? '',
                          style: AppTheme.title2,
                        ),
                        Text(
                          controller.authController.user.phoneNo ?? '',
                          style: AppTheme.body,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppTheme.lightSilverColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Todo: replace values with real data
                        ProfileDetailTile(
                          title: 'ratings'.tr,
                          value: 4.5,
                          icon: Icons.star,
                        ),
                        ProfileDetailTile(
                          title: 'rides_completed'.tr,
                          value: 45,
                          icon: Icons.check_circle,
                        ),
                        ProfileDetailTile(
                            title: 'rides_cancelled'.tr,
                            value: 21,
                            icon: Icons.block_rounded),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Divider(
                      thickness: 2.0,
                      color: AppTheme.lightSilverColor,
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      final Option option = profileOPtions[index];
                      return OptionTile(
                        option: option,
                        onTap: () {
                          // Todo: nav based on option
                          switch (option.title) {
                            case 'your_info':
                              Get.toNamed(Routes.profileInfo);
                              break;
                            case 'emergency_contacts':
                              Get.toNamed(Routes.emergencyContacts);
                              break;
                            case 'saved_places':
                              controller.onNavToSavedPlaces();
                              break;
                            default:
                          }
                        },
                      );
                    },
                    itemCount: profileOPtions.length,
                  ),
                ],
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

class ProfileDetailTile extends StatelessWidget {
  const ProfileDetailTile({
    Key? key,
    required this.title,
    required this.value,
    required this.icon,
  }) : super(key: key);

  final String title;
  final dynamic value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(icon, color: AppTheme.primaryColor),
          Text('$value', style: AppTheme.title.copyWith(fontSize: 18.0)),
          Text(
            title,
            style: AppTheme.body,
          )
        ],
      ),
    );
  }
}
