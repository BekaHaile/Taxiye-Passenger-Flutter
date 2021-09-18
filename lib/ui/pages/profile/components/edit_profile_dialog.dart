import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class EditProfileDialog extends StatelessWidget {
  EditProfileDialog({
    Key? key,
    required this.title,
    required this.user,
    required this.onValueChange,
  }) : super(key: key);

  final String title;
  final User user;
  final Function(dynamic value) onValueChange;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        decoration: AppTheme.bottomSheetDecoration,
        child: Padding(
          padding: const EdgeInsets.all(kPagePadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                (title == 'full_name' ? 'enter_name' : title).tr,
                style: AppTheme.title.copyWith(fontSize: 16.0),
              ),
              const SizedBox(height: 20.0),
              getEditContent(),
              const SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: RoundedButton(
                        text: 'cancel'.tr,
                        elevation: 0,
                        color: AppTheme.lightSilverColor,
                        textStyle: const TextStyle(
                          fontFamily: 'SegoeUi',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                          color: AppTheme.darkColor,
                        ),
                        onPressed: () => Get.back()),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: RoundedButton(
                        width: 150.0,
                        text: 'ok'.tr.toUpperCase(),
                        onPressed: () => Get.back()),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getEditContent() {
    switch (title) {
      case 'full_name':
        return TextFormField(
          keyboardType: TextInputType.name,
          onChanged: (value) => onValueChange(value),
          style: AppTheme.title.copyWith(fontSize: 16.0),
          decoration: AppTheme.textFieldDecoration.copyWith(
            labelText: 'full_name'.tr,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            final fullname = value?.trim().split(' ');
            return fullname?.length.isLowerThan(2) ?? true
                ? 'error_name'.tr
                : null;
          },
        );
      case 'gender':
        return Column(
          children: const [
            GenderTile(
              value: 'female',
              isActive: true,
            ),
            SizedBox(height: 10.0),
            GenderTile(value: 'male'),
          ],
        );
      default:
        return const SizedBox();
    }
  }
}

class GenderTile extends StatelessWidget {
  const GenderTile({
    Key? key,
    this.isActive = false,
    required this.value,
  }) : super(key: key);

  final bool isActive;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isActive
            ? AppTheme.primaryColor.withOpacity(0.15)
            : AppTheme.whiteF8,
        border: isActive ? Border.all(color: AppTheme.primaryColor) : null,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              value.tr,
              style: AppTheme.title.copyWith(
                  fontSize: 16.0,
                  color: isActive ? AppTheme.primaryColor : AppTheme.darkColor),
            ),
            if (isActive)
              const Icon(
                Icons.check,
                color: AppTheme.primaryColor,
              )
          ],
        ),
      ),
    );
  }
}
