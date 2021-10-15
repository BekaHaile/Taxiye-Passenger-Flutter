import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/shared/custom_icons.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'package:taxiye_passenger/ui/pages/home/components/vehicle_detail.dart';
import 'package:taxiye_passenger/ui/pages/home/components/vehicle_list.dart';
import 'package:taxiye_passenger/ui/pages/home/components/vehicle_type_list.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';

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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'available_vehicles'.tr.toUpperCase(),
                  style: AppTheme.body.copyWith(color: AppTheme.darkColor),
                ),
                const Icon(
                  Icons.menu,
                  color: AppTheme.darkColor,
                )
              ],
            ),
            const SizedBox(height: 10.0),
            SizedBox(
              height: 35.0,
              child: VehicleTypeList(
                  onFilterVehicle: (rideType) =>
                      controller.filterVehicles(rideType)),
            ),
            const SizedBox(height: 16.0),
            Obx(() => VehicleList(
                vehicles: controller.vehicles,
                selectedVehicle: controller.selectedVehicle,
                onItemSelected: (selectedVehice) {
                  controller.selectedVehicle = selectedVehice;
                  Get.bottomSheet(VehicleDetail(vehicle: selectedVehice),
                      isScrollControlled: true);
                })),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PaymentChip(
                  text: 'cash'.tr,
                  icon: CustomIcons.payment,
                  iconColor: AppTheme.greenColor,
                ),
                PaymentChip(
                  text: 'offers'.tr,
                  icon: CustomIcons.offer,
                  iconColor: AppTheme.primaryColor,
                ),
                const PaymentChip(
                  text: 'notes',
                  icon: CustomIcons.notes,
                  iconColor: AppTheme.yellowColor,
                )
              ],
            ),
            const SizedBox(height: 16.0),
            RoundedButton(
              text: controller.scheduleDate == null
                  ? 'book_now'.tr
                  : 'schedule_ride'.tr,
              onPressed: () => controller.scheduleDate == null
                  ? controller.bookRide()
                  : controller.scheduleRide(),
            )
          ],
        ),
      ),
    );
  }
}

class PaymentChip extends StatelessWidget {
  const PaymentChip({
    Key? key,
    required this.text,
    required this.icon,
    this.iconColor,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96.0,
      height: 32.0,
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
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
    );
  }
}
