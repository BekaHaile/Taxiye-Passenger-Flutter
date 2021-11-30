import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/promotions_controller.dart';
import 'package:taxiye_passenger/ui/pages/common/empty_state.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/functions.dart';

class AirtimeHistoryPage extends GetView<PromotionsController> {
  const AirtimeHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WhiteAppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
            kPagePadding, 0.0, kPagePadding, kPagePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'airtime_history'.tr,
              style: AppTheme.body.copyWith(fontSize: 24.0),
            ),
            const SizedBox(height: 30.0),
            Obx(() => controller.airtimeHistories.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        final AirtimeHistory airtimeHistory =
                            controller.airtimeHistories[index];
                        return ListTile(
                          title: Text('${airtimeHistory.amount}'),
                          subtitle: Text(airtimeHistory.date != null
                              ? formatDate(airtimeHistory.date!)
                              : ''),
                        );
                      },
                      itemCount: controller.airtimeHistories.length,
                    ),
                  )
                : const EmptyState())
          ],
        ),
      ),
    );
  }
}
