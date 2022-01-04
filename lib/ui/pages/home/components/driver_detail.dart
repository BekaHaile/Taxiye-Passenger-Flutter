import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'package:taxiye_passenger/ui/pages/drivers/components/driver_tile.dart';
import 'package:taxiye_passenger/ui/pages/home/components/cancel_reason_dialog.dart';
import 'package:taxiye_passenger/ui/pages/home/components/slide_cancel.dart';

class DriverDetail extends GetView<HomeController> {
  const DriverDetail({
    Key? key,
  }) : super(key: key);

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'driver_on_route'.tr,
                  style: AppTheme.title.copyWith(fontSize: 18.0),
                ),
                const SizedBox(width: 10.0),
                if (controller.selectedService == HomeServiceIndex.ride)
                  Obx(() => Text(
                      '0${controller.driverOnRouteCounter ~/ 60}:${controller.driverOnRouteCounter % 60}',
                      style: AppTheme.title.copyWith(
                          fontSize: 17.0, color: AppTheme.primaryColor)))
              ],
            ),
            const SizedBox(height: 20.0),
            DriverTile(
                driver: controller.driver!, vehicle: controller.driverVehicle),
            const SizedBox(height: 20.0),
            if (controller.selectedService == HomeServiceIndex.ride)
              SlideCancel(
                onCancel: () => Get.dialog(CancelReasonDialog(
                    title: 'cancel_reason'.tr,
                    reasons: controller.rideCancellReasons,
                    onSelectReason: (reason) =>
                        controller.onCancelRide(reason: reason))),
              )
          ],
        ),
      ),
    );
  }
}
