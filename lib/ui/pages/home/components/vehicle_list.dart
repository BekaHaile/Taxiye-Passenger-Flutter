import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:flutter/foundation.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({
    Key? key,
    required this.vehicles,
    required this.selectedVehicle,
    required this.onItemSelected,
  }) : super(key: key);

  final List<Vehicle> vehicles;
  final Vehicle selectedVehicle;
  final Function(Vehicle selectedVehicle) onItemSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final Vehicle vehicle = vehicles[index];
          return Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 10.0, 20.0),
            child: VehicleTile(
              vehicle: vehicle,
              isActive: selectedVehicle == vehicle,
              onTap: () => onItemSelected(vehicle),
            ),
          );
        },
        itemCount: vehicles.length,
      ),
    );
  }
}

class VehicleTile extends StatelessWidget {
  const VehicleTile({
    Key? key,
    required this.vehicle,
    required this.onTap,
    this.isActive = false,
  }) : super(key: key);

  final Vehicle vehicle;
  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
              color: AppTheme.shadowColor.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(1, 3),
            ),
          ],
          border: Border.all(
              color: isActive ? AppTheme.yellowColor : Colors.transparent,
              width: 2.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/${vehicle.name}.png',
                width: 100.0,
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 5.0),
                child: Text(
                  (vehicle.name ?? '').tr,
                  style: AppTheme.title.copyWith(fontSize: 14.0),
                ),
              ),
              Text(
                '${vehicle.price.hashCode.toInt()} ' + 'birr'.tr,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                  color: AppTheme.primaryColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
