import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/pages/common/confirm_dialog.dart';

class ContactList extends StatelessWidget {
  const ContactList({
    Key? key,
    required this.contacts,
    this.onDeleteContact,
    this.onAddContact,
  }) : super(key: key);

  final List<EmergencyContact> contacts;
  final Function(EmergencyContact emergencyContact)? onDeleteContact;
  final Function(EmergencyContact emergencyContact)? onAddContact;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final EmergencyContact contact = contacts[index];
        return EmergencyContactTile(
          contact: contact,
          onDelete:
              onDeleteContact != null ? () => onDeleteContact!(contact) : null,
          onAddContact:
              onAddContact != null ? () => onAddContact!(contact) : null,
        );
      },
      itemCount: contacts.length,
    );
  }
}

class EmergencyContactTile extends StatelessWidget {
  const EmergencyContactTile({
    Key? key,
    required this.contact,
    this.onDelete,
    this.onAddContact,
  }) : super(key: key);

  final EmergencyContact contact;
  final VoidCallback? onDelete;
  final VoidCallback? onAddContact;

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
        contact.name ?? contact.phoneNo ?? '',
        style: AppTheme.title2,
      ),
      subtitle: Text(
        contact.phoneNo ?? '',
        style: AppTheme.body,
      ),
      trailing: onAddContact == null
          ? GestureDetector(
              onTap: () => Get.dialog(ConfirmDialog(
                title: 'remove_emergency_contact'.tr,
                content: 'remove_emergency_contact_info'.tr,
                actionCallback: onDelete,
                actionText: 'yes',
                cancelText: 'no',
              )),
              child: const Icon(Icons.delete),
            )
          : const SizedBox(),
      onTap: onAddContact != null
          ? () => Get.dialog(ConfirmDialog(
                title: 'confirm_contact'.tr,
                content: 'add'.tr +
                    ' ' +
                    (contact.phoneNo ?? '') +
                    ' ' +
                    'as_emergency_contact'.tr,
                actionCallback: onAddContact,
                actionText: 'yes',
                cancelText: 'no',
              ))
          : null,
    );
  }
}
