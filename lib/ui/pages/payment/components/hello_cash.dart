import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/payment_controller.dart';
import 'package:taxiye_passenger/ui/widgets/phone_input.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class HelloCash extends GetView<PaymentController> {
  const HelloCash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: const WhiteAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(kPagePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'hello_cash'.tr,
              style: AppTheme.body.copyWith(
                fontSize: 24.0,
                color: AppTheme.darkColor,
              ),
            ),
            const SizedBox(height: 30.0),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      PhoneInput(
                        onChanged: (value) => controller.phoneNumber = value,
                      ),
                      const SizedBox(height: 65.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: DropdownButtonFormField<String>(
                          value: controller.selectedPartner,
                          icon: const Icon(Icons.expand_more),
                          style: AppTheme.title2,
                          decoration: AppTheme.textFieldDecoration.copyWith(
                            labelText: 'select_partner'.tr,
                          ),
                          items: controller.partners
                              .map((partner) => DropdownMenuItem(
                                    child: Center(child: Text(partner)),
                                    value: partner,
                                  ))
                              .toList(),
                          onChanged: (value) =>
                              controller.selectedPartner = value ?? 'Lion',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
                        child: RoundedButton(
                          text: 'continue'.tr,
                          onPressed: () {
                            final form = _formKey.currentState;
                            if (form?.validate() ?? false) {
                              form?.save();
                              controller.payWithHelloCash();
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
