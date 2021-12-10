import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/wallet_controller.dart';
import 'package:taxiye_passenger/ui/widgets/phone_input.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class WalletTransferPage extends GetView<WalletController> {
  const WalletTransferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Stack(
      children: [
        Scaffold(
          appBar: const WhiteAppBar(),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 20.0, 20.0),
            child: Form(
              key: _formKey,
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'wallet_transfer'.tr,
                              style: AppTheme.body.copyWith(fontSize: 24.0),
                            ),
                            const SizedBox(height: 30.0),
                            Text(
                              'transfer_to'.tr.toUpperCase(),
                              style: AppTheme.body
                                  .copyWith(color: AppTheme.darkColor),
                            ),
                            const SizedBox(height: 15.0),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Row(
                                children: [
                                  Obx(() => Expanded(
                                        child: TransferTo(
                                          to: describeEnum(
                                              WalletTransferTo.driver),
                                          asset: 'assets/icons/driver.svg',
                                          isActive: controller.transferTo ==
                                              WalletTransferTo.driver,
                                          onTap: () => controller.transferTo =
                                              WalletTransferTo.driver,
                                        ),
                                      )),
                                  const SizedBox(width: 20.0),
                                  Obx(() => Expanded(
                                        child: TransferTo(
                                          to: describeEnum(
                                              WalletTransferTo.customer),
                                          asset: 'assets/icons/customer.svg',
                                          isActive: controller.transferTo ==
                                              WalletTransferTo.customer,
                                          onTap: () => controller.transferTo =
                                              WalletTransferTo.customer,
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text(
                                'phone_number'.tr.toUpperCase() + ' *',
                                style: AppTheme.body
                                    .copyWith(color: AppTheme.darkColor),
                              ),
                            ),
                            const SizedBox(height: 15.0),
                            PhoneInput(
                              initialCountry: controller.country,
                              countryList: [controller.country],
                              onChanged: (value) =>
                                  controller.phoneNumber = value,
                              onCountryChange: (value) => controller.country =
                                  value ?? kCountries.first,
                            ),
                            const SizedBox(height: 20.0),
                            Text(
                              'amount'.tr.toUpperCase() + ' *',
                              style: AppTheme.body
                                  .copyWith(color: AppTheme.darkColor),
                            ),
                            const SizedBox(height: 15.0),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                onChanged: (value) => controller.amount =
                                    value.isEmpty ? 0.0 : double.parse(value),
                                style: AppTheme.title2,
                                decoration:
                                    AppTheme.textFieldDecoration.copyWith(
                                  labelText: 'amount'.tr,
                                ),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) =>
                                    ((value?.isEmpty ?? true) ||
                                            !(double.tryParse(value!) != null &&
                                                double.tryParse(value)! > 0))
                                        ? 'error_amount'.tr
                                        : null,
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            Text(
                              'reason'.tr.toUpperCase(),
                              style: AppTheme.body
                                  .copyWith(color: AppTheme.darkColor),
                            ),
                            const SizedBox(height: 15.0),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                onChanged: (value) =>
                                    controller.amount = double.tryParse(value),
                                style: AppTheme.title2,
                                decoration:
                                    AppTheme.textFieldDecoration.copyWith(
                                  labelText: 'reason'.tr,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: RoundedButton(
                          text: 'send'.tr,
                          onPressed: () {
                            final form = _formKey.currentState;
                            if (form?.validate() ?? false) {
                              form?.save();
                              controller.transferWallet();
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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

class TransferTo extends StatelessWidget {
  const TransferTo({
    Key? key,
    required this.to,
    required this.asset,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

  final String to;
  final String asset;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: isActive ? AppTheme.yellowColor : Colors.transparent,
            width: 1.5,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.16),
              spreadRadius: 0,
              blurRadius: 5,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
          child: Row(
            children: [
              SvgPicture.asset(
                asset,
                color: AppTheme.darkTextColor,
              ),
              const SizedBox(width: 16.0),
              Text(
                to.tr,
                style: AppTheme.title.copyWith(fontSize: 14.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
