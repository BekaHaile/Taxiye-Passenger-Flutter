import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/wallet_controller.dart';
import 'package:taxiye_passenger/ui/pages/common/empty_state.dart';
import 'package:taxiye_passenger/ui/pages/wallet/components/transaction_list.dart';
import 'package:taxiye_passenger/ui/widgets/shadow_button.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:taxiye_passenger/utils/functions.dart';

class WalletPage extends GetView<WalletController> {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: const WhiteAppBar(),
          body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'your_wallet'.tr,
                      style: AppTheme.body.copyWith(fontSize: 24.0),
                    ),
                    const SizedBox(height: 30.0),
                    Container(
                      decoration: AppTheme.boxDecoration
                          .copyWith(gradient: AppTheme.walletGradient),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const ImageIcon(
                                  AssetImage('assets/icons/money_bag.png'),
                                  color: Colors.white,
                                  size: 50.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 2.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'taxiye_cash'.tr,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(height: 5.0),
                                      Text(
                                        'tc_apply'.tr,
                                        style: const TextStyle(
                                          color: AppTheme.greyColor2,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Divider(
                                thickness: 2.0,
                                color:
                                    AppTheme.lightSilverColor.withOpacity(0.3),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'balance'.tr.toUpperCase(),
                                      style: const TextStyle(
                                        color: AppTheme.greyColor2,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(height: 5.0),
                                    Obx(
                                      () => Text(
                                        '${controller.walletBalance} ${controller.walletData.currency ?? ''}',
                                        style: AppTheme.titleWhite,
                                      ),
                                    )
                                  ],
                                ),
                                Obx(() =>
                                    controller.walletData.expireDate != null
                                        ? Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                'expires'.tr.toUpperCase(),
                                                style: const TextStyle(
                                                  color: AppTheme.greyColor2,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              const SizedBox(height: 5.0),
                                              Text(
                                                formatDate(controller
                                                    .walletData.expireDate),
                                                style: AppTheme.titleWhite,
                                              )
                                            ],
                                          )
                                        : const SizedBox()),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ShadowButton(
                          height: 40,
                          horzontalPadding: 24.0,
                          text: 'history'.tr,
                          leadingIcon: const Icon(Icons.history),
                          onPressed: () {
                            // show history
                            Get.toNamed(Routes.walletHistory);
                          },
                        ),
                        const SizedBox(width: 20.0),
                        ShadowButton(
                            height: 40,
                            horzontalPadding: 24.0,
                            text: 'transfer'.tr,
                            leadingIcon: const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: ImageIcon(
                                  AssetImage('assets/icons/transfer.png')),
                            ),
                            onPressed: () {
                              // show Transfer
                              Get.toNamed(Routes.walletTransfer);
                            })
                      ],
                    ),
                    const SizedBox(height: 40.0),
                  ],
                ),
              ),
              DraggableScrollableSheet(
                initialChildSize: 0.4,
                minChildSize: 0.4,
                maxChildSize: 1.0,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    decoration: AppTheme.bottomSheetDecoration,
                    child: Padding(
                      padding: const EdgeInsets.all(kPagePadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, bottom: 20.0),
                              child: Container(
                                height: 2.0,
                                width: 50.0,
                                color: AppTheme.greyColor2,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              'recent_transactions'.tr,
                              style: AppTheme.title.copyWith(
                                fontSize: 15.0,
                                color: AppTheme.darkTextColor,
                              ),
                            ),
                          ),
                          Obx(() => controller.transactions.isNotEmpty
                              ? Expanded(
                                  child: TransactionList(
                                    currency:
                                        '${controller.walletData.currency ?? ''}',
                                    transactions: controller.transactions,
                                    scrollController: scrollController,
                                    onTapItem: (selectedTransaction) {
                                      //Todo: onSelect transaction
                                    },
                                  ),
                                )
                              : EmptyState(
                                  imageHeight: Get.height * 0.1,
                                )),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
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
