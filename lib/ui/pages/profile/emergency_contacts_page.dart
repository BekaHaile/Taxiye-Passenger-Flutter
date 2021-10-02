import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/profile_controller.dart';
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
              Container(
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
              const SizedBox(height: 20.0),
              ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final User contact = controller.emergencyContacts[index];
                  return EmergencyContactTile(
                      contact: contact,
                      onEditTab: () {
                        // Todo: on edit emergency contact
                      },
                      onDeleteTab: () {
                        // Todo: on delete emergency contact
                      });
                },
                itemCount: controller.emergencyContacts.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EmergencyContactTile extends StatelessWidget {
  const EmergencyContactTile({
    Key? key,
    required this.contact,
    required this.onEditTab,
    required this.onDeleteTab,
  }) : super(key: key);

  final User contact;
  final VoidCallback onEditTab;
  final VoidCallback onDeleteTab;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 50.0,
        height: 50.0,
        // Todo: replace this Image.network
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          'assets/images/profile_placeholder.png',
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        contact.userName,
        style: AppTheme.title2,
      ),
      subtitle: Text(
        contact.phoneNo ?? '',
        style: AppTheme.body,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: onEditTab,
            child: const Icon(Icons.edit),
          ),
          const SizedBox(
            width: 20.0,
          ),
          GestureDetector(
            onTap: onDeleteTab,
            child: const Icon(Icons.delete),
          )
        ],
      ),
    );
  }
}
