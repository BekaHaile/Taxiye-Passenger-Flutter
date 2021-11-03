import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'package:taxiye_passenger/ui/pages/orders/components/order_tile.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:get/get.dart';

class ScheduleDetail extends GetView<HomeController> {
  const ScheduleDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.bottomSheetDecoration,
      child: Padding(
        padding: const EdgeInsets.all(kPagePadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 52.0,
              height: 52.0,
              decoration: const BoxDecoration(
                color: AppTheme.greenColor2,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.check,
                color: Colors.white,
                size: 35.0,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'upcoming_ride_scheduled'.tr,
              textAlign: TextAlign.center,
              style: AppTheme.title.copyWith(fontSize: 18.0),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: OrderTile(
                  schedule: controller.getCurrentScheduledRide(),
                  onTap: () {},
                  getRoutePolyline: (origin, destination) =>
                      controller.getRoutePolyline(origin, destination)),
            ),
            RoundedButton(
                text: 'done'.tr, onPressed: () => controller.resetValues())
          ],
        ),
      ),
    );
  }
}
