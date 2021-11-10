import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/legals_controller.dart';
import 'package:taxiye_passenger/ui/pages/common/options_tile.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';

class LegalsPage extends GetView<LegalsController> {
  const LegalsPage({Key? key}) : super(key: key);

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
                final Option option = controller.legalsOptions[index];
                return OptionTile(
                  option: option,
                  onTap: () {
                    // show legal type based on section
                    switch (option.title) {
                      case 'terms_conditions':
                        controller.getLegalsInfo('3');
                        break;
                      case 'privacy_policy':
                        controller.getLegalsInfo('2');
                        break;
                      case 'about_us':
                        controller.getLegalsInfo('0');
                        break;
                      default:
                    }

                    Get.toNamed(Routes.legalDetails);
                  },
                );
              },
              itemCount: controller.legalsOptions.length,
            ),
          ],
        ),
      ),
    );
  }
}
