import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'package:taxiye_passenger/ui/widgets/phone_input.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:taxiye_passenger/utils/functions.dart';

class DeliveryDetailPage extends GetView<HomeController> {
  const DeliveryDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: const WhiteAppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
            kPagePadding, 0.0, kPagePadding, kPagePadding),
        child: Form(
          key: _formKey,
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'what_do_you_need'.tr,
                      style: AppTheme.body.copyWith(fontSize: 24.0),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      maxLines: 4,
                      onSaved: (value) => controller.orderText = value ?? '',
                      decoration: AppTheme.textFieldDecoration.copyWith(
                        hintText: 'delivery_hint'.tr,
                        hintStyle: AppTheme.subtitle.copyWith(
                            fontSize: 16.0, fontWeight: FontWeight.w600),
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) => value?.trim().isEmpty ?? true
                          ? 'error_label'.tr
                          : null,
                    ),
                    const SizedBox(height: 20.0),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
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
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16.0),
                        child: Obx(() => Row(
                              children: [
                                if (controller.deliveryImages.isNotEmpty)
                                  SizedBox(
                                    height: 50.0,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      physics: const BouncingScrollPhysics(),
                                      itemBuilder: (context, index) {
                                        final File image =
                                            controller.deliveryImages[index];
                                        return Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0, right: 10.0),
                                              child: Image.file(
                                                image,
                                                fit: BoxFit.cover,
                                                height: 50.0,
                                                width: 40.0,
                                              ),
                                            ),
                                            Positioned(
                                              top: 0,
                                              right: 0,
                                              child: GestureDetector(
                                                onTap: () => controller
                                                    .removeDeliveryImage(image),
                                                child: const Icon(
                                                    Icons.cancel_outlined),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                      itemCount:
                                          controller.deliveryImages.length,
                                    ),
                                  ),
                                if (controller.deliveryImages.isNotEmpty)
                                  const SizedBox(width: 16.0),
                                if (controller.deliveryImages.length < 2)
                                  GestureDetector(
                                    onTap: () => controller
                                        .getImage(ImageSource.gallery),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.camera_alt_outlined,
                                          size: 30.0,
                                        ),
                                        const SizedBox(width: 10.0),
                                        if (controller.deliveryImages.isEmpty)
                                          Text('upload_pictures'.tr,
                                              style: AppTheme.body),
                                      ],
                                    ),
                                  ),
                              ],
                            )),
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    // uncomment this whent the feuture is supported
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Text('deliver_to_me'.tr, style: AppTheme.title2),
                    //     Switch(
                    //       value: true,
                    //       onChanged: (value) {
                    //         // Todo: on change deleiver to me
                    //       },
                    //       activeColor: AppTheme.greenColor,
                    //     )
                    //   ],
                    // ),
                    // const SizedBox(height: 30.0),
                    Text('recievers_number'.tr.toUpperCase(),
                        style: AppTheme.body),
                    const SizedBox(height: 16.0),
                    PhoneInput(
                      onChanged: (value) {
                        // Todo: on phone changed
                        // controller.phoneNumber = value
                      },
                      onCountryChange: (value) {
                        // Todo: on country code changed
                      },
                      validator: (value) => value?.trim().isEmpty ?? true
                          ? null
                          : validateMobile(value ?? ''),
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
                      text: 'continue'.tr,
                      onPressed: () {
                        final form = _formKey.currentState;
                        if (form?.validate() ?? false) {
                          form?.save();
                          // continue to pick location
                          controller.onContinueToDeliveryLocation();
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
    );
  }
}
