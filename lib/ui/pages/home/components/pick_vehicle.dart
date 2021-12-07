import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'package:taxiye_passenger/ui/pages/home/components/ride_note.dart';
import 'package:taxiye_passenger/ui/pages/home/components/vehicle_detail.dart';
import 'package:taxiye_passenger/ui/pages/home/components/vehicle_list.dart';
import 'package:taxiye_passenger/ui/pages/home/components/vehicle_type_list.dart';
import 'package:taxiye_passenger/ui/pages/promotion/components/pick_promotions.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:taxiye_passenger/utils/functions.dart';

class PickVehicle extends GetView<HomeController> {
  const PickVehicle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.bottomSheetDecoration,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  controller.selectedService == HomeServiceIndex.delivery
                      ? 'delivery_type'.tr.toUpperCase()
                      : 'available_vehicles'.tr.toUpperCase(),
                  style: AppTheme.body.copyWith(color: AppTheme.darkColor),
                ),
                // const Icon(
                //   Icons.menu,
                //   color: AppTheme.darkColor,
                // )
              ],
            ),
            if (controller.selectedService == HomeServiceIndex.ride)
              const SizedBox(height: 10.0),
            if (controller.selectedService == HomeServiceIndex.ride)
              SizedBox(
                height: 35.0,
                child: VehicleTypeList(
                    hasCorporate: controller.userCorporates.length > 0,
                    onFilterVehicle: (rideType) =>
                        controller.filterVehicles(rideType)),
              ),
            const SizedBox(height: 16.0),
            Obx(() => VehicleList(
                vehicles:
                    controller.selectedService == HomeServiceIndex.delivery
                        ? controller.deliveryVehicles
                        : controller.vehicles,
                selectedVehicle: controller.selectedVehicle,
                rideType: controller.rideType,
                onItemSelected: (selectedVehice) {
                  if (controller.selectedVehicle == selectedVehice) {
                    Get.bottomSheet(
                        VehicleDetail(
                          vehicle: selectedVehice,
                          currency: controller.currency,
                          serviceType: controller.selectedService,
                        ),
                        isScrollControlled: true);
                  }
                  controller.selectedVehicle = selectedVehice;
                })),
            Obx(
              () => controller.rideType == 0 || controller.rideType == 2
                  ? SizedBox(
                      height: 32.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          final PaymentType paymentType =
                              controller.paymentTypes[index];
                          return Obx(() => CustomChip(
                                text: paymentType.text,
                                icon: paymentType.icon,
                                iconColor: paymentType.iconColor,
                                isActive: controller.paymentMode ==
                                    paymentType.paymentMode,
                                onTap: () {
                                  // on  one of the payment types

                                  switch (paymentType.paymentMode) {
                                    case 0:
                                      controller.paymentMode =
                                          paymentType.paymentMode;
                                      break;
                                    case 1:
                                      controller.paymentMode =
                                          paymentType.paymentMode;
                                      Get.bottomSheet(const PickPromotion());
                                      break;
                                    case 2:
                                      // on notes selected
                                      Get.dialog(RideNote(
                                          actionCallback: (note) =>
                                              controller.rideNote = note));
                                      break;
                                    default:
                                  }
                                },
                              ));
                        },
                        itemCount: controller.paymentTypes.length,
                      ),
                    )
                  : SizedBox(
                      height: 32.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          final Corporate corporate =
                              controller.userCorporates[index];
                          return Obx(() => CustomChip(
                                text: corporate.partnerName ?? '',
                                isActive:
                                    controller.selectedCorporate == corporate,
                                onTap: () {
                                  // Todo: set payment mode here too.
                                  controller.selectedCorporate = corporate;
                                  controller.filterVehicles(1);
                                },
                              ));
                        },
                        itemCount: controller.userCorporates.length,
                      )),
            ),
            const SizedBox(height: 16.0),
            RoundedButton(
              text: controller.selectedService == HomeServiceIndex.delivery
                  ? 'order_now'.tr
                  : controller.scheduleDate == null
                      ? 'book_now'.tr
                      : 'schedule_ride'.tr,
              subChild: controller.scheduleDate != null
                  ? Text(
                      '${formatDate(controller.scheduleDate!)} ${'at'.tr} ${controller.scheduleTime!.format(context)}')
                  : const SizedBox(),
              onPressed: () {
                if (controller.selectedService == HomeServiceIndex.delivery) {
                  controller.orderDelivery();
                } else {
                  controller.scheduleDate == null
                      ? controller.bookRide()
                      : controller.scheduleRide();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}

class CustomChip extends StatelessWidget {
  const CustomChip({
    Key? key,
    required this.text,
    this.icon,
    this.iconColor,
    this.isActive = false,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final IconData? icon;
  final Color? iconColor;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 96.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(
                color: AppTheme.shadowColor.withOpacity(0.12),
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(2, 2),
              ),
            ],
            border: Border.all(
                color: isActive ? AppTheme.yellowColor : Colors.transparent,
                width: 2.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null)
                Icon(
                  icon,
                  color: iconColor ?? AppTheme.darkTextColor,
                  size: 18.0,
                ),
              const SizedBox(width: 8.0),
              Text(
                text.tr,
                style: AppTheme.body.copyWith(fontSize: 12.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
