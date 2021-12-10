import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/promotions_controller.dart';
import 'package:taxiye_passenger/ui/widgets/phone_input.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class TransferPointsPage extends StatefulWidget {
  const TransferPointsPage({Key? key}) : super(key: key);

  @override
  State<TransferPointsPage> createState() => _TransferPointsPageState();
}

class _TransferPointsPageState extends State<TransferPointsPage> {
  PromotionsController controller = Get.find();
  String phoneNumber = '';
  Country country = kCountries.first;
  String amount = '';
  final _formKey = GlobalKey<FormState>();

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
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'transfer_points'.tr,
                          style: AppTheme.body.copyWith(fontSize: 24.0),
                        ),
                        const SizedBox(height: 30.0),
                        Text(
                          'transfer_to'.tr.toUpperCase(),
                          style:
                              AppTheme.body.copyWith(color: AppTheme.darkColor),
                        ),
                        const SizedBox(height: 15.0),
                        PhoneInput(
                          initialCountry: controller.country,
                          countryList: [controller.country],
                          onChanged: (value) => phoneNumber = value,
                          onCountryChange: (value) =>
                              country = value ?? kCountries.first,
                        ),
                        const SizedBox(height: 20.0),
                        Text(
                          'amount'.tr.toUpperCase() + ' *',
                          style:
                              AppTheme.body.copyWith(color: AppTheme.darkColor),
                        ),
                        const SizedBox(height: 15.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            onChanged: (value) => amount = value,
                            style: AppTheme.title2,
                            decoration: AppTheme.textFieldDecoration.copyWith(
                              labelText: 'amount'.tr,
                            ),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) => ((value?.isEmpty ?? true) ||
                                    !(double.tryParse(value!) != null &&
                                        double.tryParse(value)! > 0))
                                ? 'error_amount'.tr
                                : null,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: RoundedButton(
                        text: 'send'.tr,
                        onPressed: () {
                          final form = _formKey.currentState;
                          if (form?.validate() ?? false) {
                            form?.save();
                            controller.transferPoints(
                                '${country.code}$phoneNumber', amount);
                          }
                        }),
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
