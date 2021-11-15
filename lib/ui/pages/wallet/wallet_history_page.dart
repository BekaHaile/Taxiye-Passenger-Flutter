import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/wallet_controller.dart';
import 'package:taxiye_passenger/ui/pages/wallet/components/transaction_list.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';

class WalletHistoryPage extends GetView<WalletController> {
  const WalletHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: const WhiteAppBar(),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'wallet_history'.tr,
                  style: AppTheme.body.copyWith(fontSize: 24.0),
                ),
                const SizedBox(height: 30.0),
                Obx(() => Expanded(
                      child: TransactionList(
                        transactions: controller.transactions,
                        onTapItem: (selectedTransaction) {
                          //Todo: onSelect transaction
                        },
                      ),
                    )),
              ],
            ),
          ),
        ),
        Obx(() => ModalProgressHUD(
              child: const SizedBox(),
              inAsyncCall: controller.status.value == Status.loading,
            )),
      ],
    );
  }
}
