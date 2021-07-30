import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:flutter/foundation.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';

class PaymentList extends StatelessWidget {
  const PaymentList({
    Key? key,
    required this.paymentMethods,
    required this.selectedPayment,
    required this.onItemSelected,
  }) : super(key: key);

  final List<Payment> paymentMethods;
  final Payment selectedPayment;
  final Function(Payment selectedPayment) onItemSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final Payment payment = paymentMethods[index];
          return Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 5.0, 20.0),
            child: PaymentTile(
              payment: payment,
              isActive: selectedPayment == payment,
              onTap: () => onItemSelected(payment),
            ),
          );
        },
        itemCount: paymentMethods.length,
      ),
    );
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
        width: 170.0,
        height: 56.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.16),
              spreadRadius: 0,
              blurRadius: 5,
              offset: const Offset(1, 1),
            ),
          ],
          border: Border.all(
              color: isActive ? AppTheme.yellowColor : Colors.transparent,
              width: 2.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 13.0),
          child: Row(
            children: [
              Image.asset(
                'assets/icons/${payment.name ?? 'cbe_bank'}.png',
                width: 30.0,
                height: 30.0,
              ),
              const SizedBox(width: 12.0),
              Text(
                (payment.name ?? '').tr,
                style: AppTheme.title.copyWith(fontSize: 14.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
