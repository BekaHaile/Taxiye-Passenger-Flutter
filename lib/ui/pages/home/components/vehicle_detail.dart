import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';

class VehicleDetail extends StatelessWidget {
  const VehicleDetail({
    Key? key,
    required this.vehicle,
  }) : super(key: key);

  final Vehicle vehicle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 475.0,
      decoration: AppTheme.bottomSheetDecoration,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/${vehicle.name}.png',
              width: 200.0,
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
              child: Text(
                vehicle.name ?? '',
                style: AppTheme.title.copyWith(fontSize: 14.0),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.person,
                  color: AppTheme.darkTextColor,
                ),
                const SizedBox(width: 4.0),
                Text(
                  '4',
                  style: AppTheme.title.copyWith(fontSize: 14.0),
                )
              ],
            ),
            const SizedBox(height: 20.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'fare_details'.tr.toUpperCase(),
                style: AppTheme.body,
              ),
            ),
            const SizedBox(height: 15.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                    color: AppTheme.shadowColor.withOpacity(0.1),
                    spreadRadius: 0,
                    blurRadius: 20,
                    offset: const Offset(1, 0),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: const [
                    FareDetailRow(
                      type: 'title',
                      title: 'base_fare',
                      value: 60.00,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Divider(
                        indent: 16.0,
                        endIndent: 16.0,
                        height: 1,
                        color: AppTheme.greyColor2,
                      ),
                    ),
                    FareDetailRow(
                      title: 'per_kilometer',
                      value: 10.00,
                    ),
                    FareDetailRow(
                      title: 'per_minute',
                      value: 0.00,
                    ),
                    FareDetailRow(
                      title: 'congestion_changes',
                      value: 1.00,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            RoundedButton(
                text: 'close'.tr,
                onPressed: () {
                  // Todo: choose vehicles
                })
          ],
        ),
      ),
    );
  }
}

class FareDetailRow extends StatelessWidget {
  const FareDetailRow({
    Key? key,
    this.type = 'data',
    required this.title,
    required this.value,
  }) : super(key: key);

  final String type; // value ether data or title
  final String title;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title.tr,
            style: type == 'title'
                ? AppTheme.title.copyWith(fontSize: 14.0)
                : AppTheme.body,
          ),
          Text(
            value.toStringAsFixed(2) + ''.tr,
            style: type == 'title'
                ? AppTheme.title.copyWith(fontSize: 14.0)
                : AppTheme.body,
          )
        ],
      ),
    );
  }
}
