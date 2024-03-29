import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/promotions_controller.dart';
import 'package:taxiye_passenger/ui/pages/promotion/components/current_points.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class ExchangePointsPage extends GetView<PromotionsController> {
  const ExchangePointsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const WhiteAppBar(),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(
              kPagePadding, 0.0, kPagePadding, kPagePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'exchange_points'.tr,
                style: AppTheme.body.copyWith(fontSize: 24.0),
              ),
              const SizedBox(height: 30.0),
              const CurrentPoints(),
              const SizedBox(height: 30.0),
              ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final ExchangePoint exchangeOption =
                      controller.exchangePointOPtions[index];
                  return ListTile(
                    title: Text(
                      exchangeOption.text.tr,
                      style: AppTheme.title.copyWith(fontSize: 14.0),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                    leading: Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: const BoxDecoration(
                        color: AppTheme.lightSilverColor,
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ImageIcon(
                          AssetImage(exchangeOption.icon),
                          color: AppTheme.darkTextColor,
                        ),
                      ),
                    ),
                    trailing: const Icon(Icons.chevron_right,
                        color: AppTheme.darkTextColor),
                    onTap: () {
                      // Todo: action based on exchangePointType
                      switch (exchangeOption.option) {
                        case ExchangePointOption.mobileCard:
                          Get.toNamed(Routes.buyAirtime);
                          break;
                        case ExchangePointOption.transfer:
                          Get.toNamed(Routes.transferPoints);
                          break;
                        case ExchangePointOption.bookRide:
                          break;
                        case ExchangePointOption.donate:
                          break;
                        case ExchangePointOption.transactions:
                          Get.toNamed(Routes.transactions);
                          break;
                        case ExchangePointOption.airtimeHistory:
                          Get.toNamed(Routes.airtimeHistory);
                          break;
                        default:
                      }
                    },
                  );
                },
                itemCount: controller.exchangePointOPtions.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
