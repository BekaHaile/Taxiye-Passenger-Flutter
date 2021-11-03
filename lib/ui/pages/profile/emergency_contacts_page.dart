import 'package:flutter/material.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/profile_controller.dart';
import 'package:taxiye_passenger/ui/pages/profile/components/add_emergency_contact.dart';
import 'package:taxiye_passenger/ui/pages/profile/components/contact_list.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class EmergencyContactsPage extends GetView<ProfileController> {
  const EmergencyContactsPage({Key? key}) : super(key: key);

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
                'emergency_contacts'.tr,
                style: AppTheme.body.copyWith(fontSize: 24.0),
              ),
              const SizedBox(height: 40.0),
              GestureDetector(
                onTap: () => Get.bottomSheet(const AddEmergencyContact()),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.shadowColor.withOpacity(0.12),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: const Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 16.0),
                    child: Row(
                      children: [
                        const Icon(Icons.add),
                        const SizedBox(width: 14.0),
                        Text(
                          'add_new_contact'.tr,
                          style: AppTheme.title2,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Obx(() => ContactList(
                    contacts: controller.emergencyContacts,
                    onDeleteContact: (emergencyContact) =>
                        controller.removeEmergencyContact(emergencyContact),
                    onEditContact: (emergencyContact) {
                      //
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
