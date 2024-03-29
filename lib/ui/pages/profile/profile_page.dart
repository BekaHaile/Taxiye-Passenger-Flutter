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
  const ProfilePage({Key? key}) : super(key: key);

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
                    child: Obx(() => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ProfileDetailTile(
                              title: 'rides_completed'.tr,
                              value: controller.userRideCount.completedRides,
                              icon: Icons.check_circle,
                            ),
                            ProfileDetailTile(
                                title: 'rides_cancelled'.tr,
                                value: controller.userRideCount.cancelledRides,
                                icon: Icons.block_rounded),
                            // Expanded(
                            //   child: ProfileDetailTile(
                            //     title: 'total_money_spent'.tr,
                            //     value: controller.userRideCount.totalMoneySpent,
                            //     icon: Icons.star,
                            //   ),
                            // ),
                          ],
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Divider(
                      thickness: 2.0,
                      color: AppTheme.lightSilverColor,
                    ),
                  ),
                  Obx(() => ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          final Option option =
                              controller.profileOPtions[index];
                          return OptionTile(
                            option: option,
                            onTap: () {
                              // Todo: nav based on option
                              switch (option.title) {
                                case 'your_info':
                                  Get.toNamed(Routes.profileInfo);
                                  break;
                                case 'emergency_contacts':
                                  controller.onSelectEmergencyContacts();
                                  break;
                                case 'saved_places':
                                  Get.toNamed(Routes.savedPlaces);
                                  break;
                                default:
                              }
                            },
                          );
                        },
                        itemCount: controller.profileOPtions.length,
                      )),
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
          Text('${value ?? ''}',
              style: AppTheme.title.copyWith(fontSize: 18.0)),
          Text(
            title,
            style: AppTheme.body,
          )
        ],
      ),
    );
  }
}
