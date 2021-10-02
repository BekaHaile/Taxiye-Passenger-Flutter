import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/profile_controller.dart';
import 'package:taxiye_passenger/ui/pages/common/options_tile.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class PrivacySettingsPage extends GetView<ProfileController> {
  PrivacySettingsPage({Key? key}) : super(key: key);

  List<Option> privacyOptions = [
    Option(
        title: 'transaction_updates',
        subtitle: 'transaction_updates_info',
        toggleValue: true),
    Option(title: 'rides', subtitle: 'rides_info', toggleValue: true),
    Option(title: 'delivery', subtitle: 'delivery_info', toggleValue: true),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'privacy_settings'.tr,
                style: AppTheme.body.copyWith(fontSize: 24.0),
              ),
              const SizedBox(height: 30.0),
              ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final Option option = privacyOptions[index];
                  return OptionTile(
                    option: option,
                    toggleColor: AppTheme.primaryColor,
                    onTap: () {
                      // Todo: nav based on option
                      print('option selected ${option.title}');
                    },
                  );
                },
                itemCount: privacyOptions.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
