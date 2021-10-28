import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/ui/pages/drivers/components/driver_tile.dart';

class DriversList extends StatelessWidget {
  const DriversList({
    Key? key,
    required this.drivers,
    required this.onRemoveDriver,
  }) : super(key: key);

  final List<Driver> drivers;
  final Function(int driverId) onRemoveDriver;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final Driver driver = drivers[index];
        return Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
          child: DriverTile(
            driver: driver,
            vehicle: Vehicle(vehicleNumber: driver.vehicleNo),
            onRemove: () => driver.driverId != null
                ? onRemoveDriver(driver.driverId!)
                : null,
          ),
        );
      },
      itemCount: drivers.length,
    );
  }
}
