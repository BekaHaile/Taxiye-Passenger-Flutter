import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/settings_controller.dart';
import 'package:taxiye_passenger/ui/pages/common/options_tile.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class PrivacySettingsPage extends GetView<SettingsController> {
  const PrivacySettingsPage({Key? key}) : super(key: key);

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
              const SizedBox(height: 20.0),
              Text(
                'privacy_settings_detail'.tr,
                style: AppTheme.body,
              ),
              const SizedBox(height: 30.0),
              Obx(() => ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      final Option option = controller.privacyOptions[index];
                      return OptionTile(
                        option: option,
                        toggleColor: AppTheme.primaryColor,
                        isActive: option.isActive,
                        onTap: () {},
                        onToggle: (value) {
                          switch (option.title) {
                            case 'transaction_updates':
                              // Todo: disable transaction update notifcations
                              controller.setNotificationsPreferences(
                                  'showTransactionNotifications', value);
                              break;
                            case 'rides':
                              // disable showing rides notifications
                              controller.setNotificationsPreferences(
                                  'showRideNotifications', value);
                              break;
                            case 'delivery':
                              // disable showing delivery notifications
                              controller.setNotificationsPreferences(
                                  'showDeliveryNotifications', value);
                              break;
                            default:
                          }
                        },
                      );
                    },
                    itemCount: controller.privacyOptions.length,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
