import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/pages/common/options_tile.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';

class LegalsPage extends StatelessWidget {
  LegalsPage({Key? key}) : super(key: key);

  List<Option> legalsOptions = [
    Option(title: 'terms_conditions', subtitle: 'view_terms_conditions'),
    Option(title: 'privacy_policy', subtitle: 'privacy_info'),
    Option(title: 'about_us', subtitle: 'know_us'),
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
              'legals'.tr,
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
                final Option option = legalsOptions[index];
                return OptionTile(
                  option: option,
                  onTap: () {
                    // Todo: nav based on option
                    print('option selected ${option.title}');
                  },
                );
              },
              itemCount: legalsOptions.length,
            ),
          ],
        ),
      ),
    );
  }
}
