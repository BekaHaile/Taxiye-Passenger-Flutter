import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'package:taxiye_passenger/ui/pages/home/components/payment_list.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';

class TripDetail extends GetView<HomeController> {
  const TripDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: AppTheme.bottomSheetDecoration,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'arrived_destination'.tr,
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
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppTheme.greyColor2),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              '128.00 ' + 'birr'.tr,
                              style: const TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                                color: AppTheme.yellowColor,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            const SizedBox(height: 5.0),
                            Text(
                              '110.00 ' + 'birr'.tr,
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
                      children: const [
                        DistanceInfo(
                          title: 'distance',
                          value: 12,
                        ),
                        SizedBox(height: 20.0),
                        DistanceInfo(
                          title: 'duration',
                          value: 34,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            Obx(() => PaymentList(
                paymentMethods: controller.paymentMethods,
                selectedPayment: controller.selectedPayment,
                onItemSelected: (selectedPayment) {
                  controller.selectedPayment = selectedPayment;
                  // Todo: on Payment selected
                })),
            RoundedButton(
                text: 'pay_with_cash'.tr,
                onPressed: () => controller.onPaymentProcessed())
          ],
        ),
      ),
    );
  }
}

class DistanceInfo extends StatelessWidget {
  const DistanceInfo({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final double value;

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
          value.toStringAsFixed(0) +
              ' ' +
              (title == 'distance' ? 'kms'.tr : 'mins'.tr),
          style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: AppTheme.darkColor),
        ),
      ],
    );
  }
}
