import 'package:flutter/material.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';

class TripProgress extends StatelessWidget {
  const TripProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: AppTheme.bottomSheetDecoration,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'ride_started'.tr,
              style: AppTheme.title.copyWith(fontSize: 18.0),
            ),
            const SizedBox(height: 5.0),
            Text(
              '1 m 05 s',
              style: AppTheme.title
                  .copyWith(fontSize: 18.0, color: AppTheme.primaryColor),
            ),
            const SizedBox(height: 10.0),
            Image.asset(
              'assets/images/trip_progress.png',
              width: 200.0,
              height: 85.0,
            ),
            const SizedBox(height: 10.0),
            Container(
              width: 196.0,
              height: 50.0,
              decoration: const BoxDecoration(
                color: AppTheme.lightSilverColor,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
