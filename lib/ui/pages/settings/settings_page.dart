import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/pages/common/options_tile.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({Key? key}) : super(key: key);

  List<Option> settingOptions = [
    Option(title: 'sound_voice', subtitle: 'customize_sounds'),
    Option(title: 'navigation', subtitle: 'google_maps'),
    Option(
        title: 'night_mode', subtitle: 'night_mode_info', toggleValue: false),
    Option(title: 'follow_my_ride', subtitle: 'follow_my_ride_info'),
    Option(title: 'language', subtitle: 'english'),
    Option(title: 'privacy_settings', subtitle: 'customize_privacy'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WhiteAppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'app_settings'.tr,
              style: AppTheme.body.copyWith(
                fontSize: 24.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20.0),
            ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                final Option option = settingOptions[index];
                return OptionTile(
                  option: option,
                  onTap: (selectedOption) {
                    // Todo: nav based on option
                    print('option selected ${selectedOption.title}');
                  },
                );
              },
              itemCount: settingOptions.length,
            ),
          ],
        ),
      ),
    );
  }
}
