import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/ui/pages/home/components/slide_cancel.dart';

class LookingDrivers extends StatelessWidget {
  const LookingDrivers({
    Key? key,
    required this.onCancelDriverSearch,
  }) : super(key: key);

  final VoidCallback onCancelDriverSearch;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.bottomSheetDecoration,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'looking_for_drivers'.tr,
              textAlign: TextAlign.center,
              style: AppTheme.title.copyWith(fontSize: 18.0),
            ),
            Text(
              'ride_starts_soon'.tr,
              textAlign: TextAlign.center,
              style: AppTheme.body.copyWith(color: AppTheme.darkColor),
            ),
            const SizedBox(height: 15.0),
            Image.asset(
              'assets/images/looking_drivers.png',
              width: 168.0,
              height: 72.0,
            ),
            const SizedBox(height: 15.0),
            Align(
              alignment: Alignment.center,
              child: SlideCancel(
                onCancel: () => onCancelDriverSearch(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
