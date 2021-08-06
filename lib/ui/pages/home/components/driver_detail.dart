import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/ui/pages/drivers/components/driver_tile.dart';
import 'package:taxiye_passenger/ui/pages/home/components/slide_cancel.dart';

class DriverDetail extends StatelessWidget {
  const DriverDetail({
    Key? key,
    required this.driver,
    required this.vehicle,
    this.onDriverAprroved,
    this.onRemove,
  }) : super(key: key);

  final Driver driver;
  final Vehicle vehicle;
  final VoidCallback? onDriverAprroved;
  final Function(Driver driver)? onRemove;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.bottomSheetDecoration,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: onDriverAprroved,
                  child: Text(
                    'driver_on_route'.tr,
                    style: AppTheme.title.copyWith(fontSize: 18.0),
                  ),
                ),
                const SizedBox(width: 10.0),
                Text('02:35',
                    style: AppTheme.title
                        .copyWith(fontSize: 17.0, color: AppTheme.primaryColor))
              ],
            ),
            const SizedBox(height: 20.0),
            DriverTile(driver: driver, vehicle: vehicle),
            const SizedBox(height: 20.0),
            SlideCancel(
              onCancel: () {
                // Todo: on cancell driver.
              },
            )
          ],
        ),
      ),
    );
  }
}
