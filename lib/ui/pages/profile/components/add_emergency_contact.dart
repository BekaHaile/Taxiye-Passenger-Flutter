import 'package:flutter/cupertino.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/ui/controllers/profile_controller.dart';
import 'package:taxiye_passenger/ui/pages/profile/components/contact_list.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class AddEmergencyContact extends GetView<ProfileController> {
  const AddEmergencyContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.bottomSheetDecoration,
      child: Padding(
        padding: const EdgeInsets.all(kPagePadding),
        child: Column(
          children: [
            Text('add_new_contact'.tr, style: AppTheme.title2),
            const SizedBox(height: 20.0),
            ContactList(
              contacts: controller.contacts,
              onAddContact: (emergencyContact) =>
                  controller.addEmergencyContact(emergencyContact),
            )
          ],
        ),
      ),
    );
  }
}
