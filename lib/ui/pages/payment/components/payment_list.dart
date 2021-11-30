import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/ui/pages/common/empty_state.dart';

class PaymentList extends StatelessWidget {
  const PaymentList({
    Key? key,
    required this.paymentMethods,
    this.selectedPayment,
    required this.onItemSelected,
  }) : super(key: key);

  final List<Payment> paymentMethods;
  final Payment? selectedPayment;
  final Function(Payment selectedPayment) onItemSelected;

  @override
  Widget build(BuildContext context) {
    return paymentMethods.isNotEmpty
        ? ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final Payment payment = paymentMethods[index];
              if (payment.enabled == 1) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(4.0, 20.0, 4.0, 0.0),
                  child: PaymentTile(
                    payment: payment,
                    isActive:
                        selectedPayment != null && selectedPayment == payment,
                    onTap: () => onItemSelected(payment),
                  ),
                );
              } else {
                return Container();
              }
            },
            itemCount: paymentMethods.length,
          )
        : const EmptyState();
  }
}

class PaymentTile extends StatelessWidget {
  const PaymentTile({
    Key? key,
    required this.payment,
    required this.onTap,
    this.isActive = false,
  }) : super(key: key);

  final Payment payment;
  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 72.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.20),
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(1, 3),
            ),
          ],
          border: Border.all(
              color: isActive ? AppTheme.yellowColor : Colors.transparent,
              width: 2.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
          child: Center(
            child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                dense: true,
                leading: Image.asset(
                  'assets/icons/${payment.name ?? 'cbe_bank'}.png',
                  width: 50.0,
                  height: 50.0,
                  fit: BoxFit.fill,
                ),
                title: Text(
                  (payment.name ?? '').tr,
                  style: AppTheme.title.copyWith(fontSize: 14.0),
                ),
                subtitle: payment.name == 'cash_payment'
                    ? Text(
                        'default_method'.tr,
                        style: AppTheme.body.copyWith(fontSize: 12.0),
                      )
                    : null,
                trailing: isActive
                    ? const CircleAvatar(
                        radius: 14.0,
                        backgroundColor: AppTheme.greenColor,
                        child:
                            Icon(Icons.check, size: 20.0, color: Colors.white),
                      )
                    : null

                // Checkbox(
                //   value: isActive,
                //   activeColor: AppTheme.greenColor,
                //   shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(50)),
                //   onChanged: (val) {},
                // ),
                ),
          ),
        ),
      ),
    );
  }
}
