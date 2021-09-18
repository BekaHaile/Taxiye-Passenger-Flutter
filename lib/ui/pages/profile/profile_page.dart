import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
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
        title: 'your_feedback',
        subtitle: 'customers_ride_feedback',
        leadingIcon: Icons.feedback),
    Option(
        title: 'emergency_contacts',
        subtitle: '2 people',
        leadingIcon: Icons.call),
    Option(
        title: 'saved_places', subtitle: '3 places', leadingIcon: Icons.call),
    Option(
        title: 'privacy_settings',
        subtitle: 'Edit your privacy settings',
        leadingIcon: Icons.call),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const SizedBox(height: 45.0),
              Column(
                children: [
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
                      canEdit: false,
                      radius: 45.0,
                      name: '',
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'Marvin McKinney',
                    style: AppTheme.title.copyWith(fontSize: 16.0),
                  ),
                  const Text(
                    '+25194546768',
                    style: AppTheme.body,
                  ),
                ],
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
                      print('This info called');
                      // Todo: nav based on option
                      switch (option.title) {
                        case 'your_info':
                          Get.toNamed(Routes.profileInfo);
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
    );
  }
}
