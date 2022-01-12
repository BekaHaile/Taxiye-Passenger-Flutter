import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'package:taxiye_passenger/ui/pages/home/components/home_payment_list.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:taxiye_passenger/utils/functions.dart';

class TripDetail extends GetView<HomeController> {
  const TripDetail({
    Key? key,
    required this.rideDetail,
  }) : super(key: key);

  final RideDetail rideDetail;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: AppTheme.bottomSheetDecoration,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              controller.selectedService == HomeServiceIndex.delivery
                  ? 'order_delivered'.tr
                  : 'arrived_destination'.tr,
              style: AppTheme.title.copyWith(fontSize: 18.0),
            ),
            const SizedBox(height: 20.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                boxShadow: [
                  BoxShadow(
                    color: AppTheme.shadowColor.withOpacity(0.20),
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: const Offset(1, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppTheme.greyColor2),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 25.0),
                        child: Column(
                          children: [
                            if (controller.rideType == 1 ||
                                rideDetail.fare != rideDetail.toPay)
                              Text(
                                '${getTopayAmount(rideDetail.fare, rideDetail.toPayText)} ${controller.currency}',
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w700,
                                  color: AppTheme.yellowColor,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            const SizedBox(height: 5.0),
                            Text(
                              '${controller.rideType == 1 ? 0 : getTopayAmount(rideDetail.toPay, rideDetail.toPayText)} ${controller.currency}',
                              style: const TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.w700,
                                color: AppTheme.primaryColor,
                              ),
                            ),
                            const SizedBox(height: 5.0),
                            Text(
                              'inc_tax'.tr,
                              style: const TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                                color: AppTheme.greyColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        DistanceInfo(
                          title: 'distance',
                          value: rideDetail.distanceTraveled ?? 0,
                        ),
                        const SizedBox(height: 20.0),
                        DistanceInfo(
                          title: 'duration',
                          value: controller.rideCounter,
                          // value: rideDetail.rideTime ?? 0,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            if (controller.rideType != 1)
              Obx(
                () => HomePaymentList(
                    paymentMethods: controller.paymentMethods,
                    selectedPayment: controller.selectedPayment,
                    onItemSelected: (selectedPayment) =>
                        controller.selectedPayment = selectedPayment),
              ),
            Obx(() => RoundedButton(
                text: controller.rideType != 1
                    ? 'pay_with'.trParams({
                        'mode':
                            controller.selectedPayment.name == 'cash_payment'
                                ? 'cash'
                                : controller.selectedPayment.name
                      })
                    : 'continue'.tr,
                onPressed: () {
                  switch (controller.selectedPayment.name) {
                    case 'hellocash':
                      controller.onHelloCashSelected();
                      break;
                    case 'mpesa':
                      controller.onMpesaSelected();
                      break;
                    default:
                      controller.onPaymentProcessed();
                  }
                }))
          ],
        ),
      ),
    );
  }

  int getTopayAmount(double? toPay, String? toPayText) {
    if (toPay != null) {
      return toPay.round();
    } else if (toPayText != null) {
      String aStr = toPayText.replaceAll(RegExp(r'[^0-9]'), '');
      return double.parse(aStr).round();
    } else {
      return 0;
    }
  }
}

class DistanceInfo extends StatelessWidget {
  const DistanceInfo({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final dynamic value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title.tr,
          style: const TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: AppTheme.greyColor,
          ),
        ),
        Text(
          title == 'distance'
              ? '$value ${'kms'.tr}'
              : getDisplayTimeFromSeconds(value),
          style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: AppTheme.darkColor),
        ),
      ],
    );
  }
}
