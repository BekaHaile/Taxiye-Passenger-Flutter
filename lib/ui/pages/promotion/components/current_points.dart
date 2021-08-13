import 'package:flutter/material.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';

class CurrentPoints extends StatelessWidget {
  const CurrentPoints({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.boxDecoration,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 30.0),
        child: Column(
          children: [
            Text('current_points'.tr.toUpperCase(),
                style: AppTheme.body.copyWith(color: AppTheme.darkTextColor)),
            const SizedBox(height: 5.0),
            Container(
              decoration: BoxDecoration(
                color: AppTheme.yellowColor,
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
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Text(
                  '3250',
                  style: TextStyle(
                    fontSize: 48.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5.0),
            Container(
              decoration: const BoxDecoration(
                color: AppTheme.lightSilverColor,
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                child: Text('expires_on'.tr + ' Jun 20, 2021'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
