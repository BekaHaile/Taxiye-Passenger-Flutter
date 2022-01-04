import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/promotions_controller.dart';
import 'package:taxiye_passenger/ui/pages/common/empty_state.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/functions.dart';

class TransactionsPage extends GetView<PromotionsController> {
  const TransactionsPage({Key? key}) : super(key: key);

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
              'transactions'.tr,
              style: AppTheme.body.copyWith(fontSize: 24.0),
            ),
            const SizedBox(height: 30.0),
            Obx(() => controller.transactions.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        final PointTransaction transaction =
                            controller.transactions[index];
                        return ListTile(
                          title: Text(transaction.type ?? ''),
                          subtitle: Text(transaction.time != null
                              ? formatDate(transaction.time!)
                              : ''),
                          trailing: Text('${transaction.points}'),
                        );
                      },
                      itemCount: controller.transactions.length,
                    ),
                  )
                : const EmptyState())
          ],
        ),
      ),
    );
  }
}
