import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/promotions_controller.dart';
import 'package:taxiye_passenger/ui/pages/common/confirm_dialog.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class BuyAirtimePage extends StatefulWidget {
  const BuyAirtimePage({Key? key}) : super(key: key);

  @override
  State<BuyAirtimePage> createState() => _BuyAirtimePageState();
}

class _BuyAirtimePageState extends State<BuyAirtimePage> {
  PromotionsController controller = Get.find();
  List<int> airtimeValues = [];
  int selectedAirtime = 0;

  @override
  void initState() {
    super.initState();
    airtimeValues = controller.countryCode == kCountries.first.code
        ? [5, 10, 15, 25, 50, 100, 250, 500, 1000]
        : [50, 100];
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: const WhiteAppBar(),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(
                kPagePadding, 0.0, kPagePadding, kPagePadding),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'buy_airtime'.tr,
                        style: AppTheme.body.copyWith(fontSize: 24.0),
                      ),
                      SizedBox(height: Get.height * 0.1),
                      Center(
                        child: Text(
                          '${'balance'.tr}: ${controller.walletBalance} ${'point'.tr}',
                          style: AppTheme.body.copyWith(fontSize: 18.0),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10.0)),
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          AppTheme.shadowColor.withOpacity(0.2),
                                      spreadRadius: 0,
                                      blurRadius: 10,
                                      offset: const Offset(1, 3),
                                    ),
                                  ],
                                ),
                                child: GridView.builder(
                                  shrinkWrap: true,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0, vertical: 32.0),
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    mainAxisSpacing: 8.0,
                                    crossAxisSpacing: 8.0,
                                    childAspectRatio: 1.3,
                                  ),
                                  itemBuilder: (context, index) {
                                    int amount = airtimeValues[index];
                                    return MobileCardTile(
                                      amount: amount,
                                      currency: controller.currency,
                                      isSelected: selectedAirtime == amount,
                                      onTap: () => setState(() {
                                        selectedAirtime = amount;
                                      }),
                                    );
                                  },
                                  itemCount: airtimeValues.length,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: RoundedButton(
                      text: 'buy'.tr,
                      enabled: selectedAirtime > 0 &&
                          selectedAirtime <= controller.walletBalance,
                      onPressed: () => Get.dialog(ConfirmDialog(
                        title: 'buy_airtime'.tr,
                        content:
                            '${'buy_airtime_info'.tr} $selectedAirtime ${controller.currency} ${'airtime'.tr}',
                        actionCallback: () {
                          controller.onBuyAirtime(selectedAirtime);
                          selectedAirtime = 0;
                        },
                        actionText: 'yes',
                        cancelText: 'no',
                      )),
                    ),
                  ),
                )
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

class MobileCardTile extends StatelessWidget {
  const MobileCardTile({
    Key? key,
    required this.amount,
    required this.currency,
    this.isSelected = false,
    required this.onTap,
  }) : super(key: key);

  final int amount;
  final String currency;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? AppTheme.primaryColor : Colors.white,
          border: Border.all(color: AppTheme.greyColor2),
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          boxShadow: [
            BoxShadow(
              color: AppTheme.shadowColor.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 5,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$amount $currency',
              textAlign: TextAlign.center,
              style: AppTheme.body.copyWith(
                  fontSize: 18.0,
                  color: isSelected ? Colors.white : AppTheme.darkTextColor),
            ),
          ),
        ),
      ),
    );
  }
}
