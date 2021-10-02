import 'package:flutter/material.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/payment_controller.dart';
import 'package:taxiye_passenger/ui/pages/payment/components/add_payment_method.dart';
import 'package:taxiye_passenger/ui/pages/payment/components/payment_list.dart';
import 'package:taxiye_passenger/ui/pages/payment/components/update_payment_method.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class PaymentPage extends GetView<PaymentController> {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WhiteAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(kPagePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'payment_methods'.tr,
              style: AppTheme.body.copyWith(
                fontSize: 24.0,
                color: AppTheme.darkColor,
              ),
            ),
            const SizedBox(height: 30.0),
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                      color: AppTheme.shadowColor.withOpacity(0.12),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => Get.bottomSheet(AddPaymentMethod(
                        paymentMethods: controller.paymentMethods,
                        onSelectPayment: (selectedPayment) {
                          // Todo: on add new payment method
                        })),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          const Icon(Icons.add),
                          const SizedBox(width: 10.0),
                          Text(
                            'add_new_method'.tr,
                            style: AppTheme.title2,
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
            Obx(() => PaymentList(
                  paymentMethods: controller.paymentMethods,
                  selectedPayment: controller.selectedPayment,
                  onItemSelected: (selectedPayment) {
                    // on payment selected
                    // controller.selectedPayment = selectedPayment;
                    Get.bottomSheet(
                        UpdatePaymentMethod(payment: selectedPayment));
                    // Todo: on Payment selected
                  },
                )),
          ],
        ),
      ),
    );
  }
}
