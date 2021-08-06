import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/ui/pages/drivers/components/driver_tile.dart';

class DriversList extends StatelessWidget {
  const DriversList({Key? key, required this.drivers}) : super(key: key);

  final List<Driver> drivers;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final Driver driver = drivers[index];
        return Padding(
          padding: const EdgeInsets.fromLTRB(4.0, 20.0, 4.0, 0.0),
          child: DriverTile(
            driver: driver,
            vehicle: Vehicle(
                name: 'Taxiye - Sedan', liscensePlate: 'B12345', price: 128.0),
            onRemove: () {
              // Todo: on remove driver from list.
            },
          ),
        );
      },
      itemCount: drivers.length,
    );
  }
}
