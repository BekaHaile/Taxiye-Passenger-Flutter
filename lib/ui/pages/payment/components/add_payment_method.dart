import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/pages/payment/components/payment_list.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:get/get.dart';

class AddPaymentMethod extends StatelessWidget {
  const AddPaymentMethod({
    Key? key,
    required this.paymentMethods,
    required this.onSelectPayment,
  }) : super(key: key);

  final List<Payment> paymentMethods;
  final Function(Payment selectedPayment) onSelectPayment;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.bottomSheetDecoration,
      child: Padding(
        padding: const EdgeInsets.all(kPagePadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'new_payment_method'.tr,
              style: AppTheme.title.copyWith(fontSize: 16.0),
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: PaymentList(
                paymentMethods: paymentMethods,
                onItemSelected: (selectedPayment) =>
                    onSelectPayment(selectedPayment),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
