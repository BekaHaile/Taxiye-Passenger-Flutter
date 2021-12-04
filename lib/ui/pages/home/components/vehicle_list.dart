import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
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
      height: vehicles.isNotEmpty &&
              vehicles[0].regionFare != null &&
              vehicles[0].regionFare?.fare !=
                  vehicles[0].regionFare?.originalFare
          ? 190.0
          : 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final Vehicle vehicle = vehicles[index];
          return Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 10.0, 10.0, 20.0),
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
        child: Stack(
          children: [
            if (vehicle.hasPromoCoupon ?? false)
              Positioned(
                right: 2.0,
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Image.asset(
                    'assets/images/coupon.png',
                    height: 30.0,
                    width: 30.0,
                  ),
                ),
              ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Column(
                children: [
                  vehicle.images?.tabNormal?.isNotEmpty ?? false
                      ? CachedNetworkImage(
                          imageUrl: vehicle.images!.tabNormal!,
                          width: 100.0,
                          height: 50.0,
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) => const Center(
                            child: SpinKitFadingCircle(
                                color: AppTheme.primaryColor, size: 30),
                            // CircularProgressIndicator(
                            //     value: downloadProgress.progress),
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        )
                      : // Todo: get default asset image based on the category name
                      Image.asset(
                          'assets/images/Taxiye - Sedan.png',
                          width: 100.0,
                          height: 50.0,
                        ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 5.0),
                    child: Text(
                      (vehicle.regionName ?? vehicle.name ?? '').tr,
                      style: AppTheme.title.copyWith(fontSize: 14.0),
                    ),
                  ),
                  Text(
                    vehicle.regionFare != null
                        ? vehicle.regionFare?.fare != null
                            ? '${vehicle.regionFare?.fare} ${vehicle.regionFare?.currency}'
                            : ''
                        : vehicle.deliveryCharge?.estimatedCharges != null
                            ? '${vehicle.deliveryCharge?.estimatedCharges} ${vehicle.deliveryCharge?.currency}'
                            : '',
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  if ((vehicle.hasPromoCoupon ?? false) &&
                      vehicle.regionFare != null &&
                      vehicle.regionFare?.fare !=
                          vehicle.regionFare?.originalFare)
                    Text(
                      '${vehicle.regionFare?.originalFare} ${vehicle.regionFare?.currency}',
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                        color: AppTheme.yellowColor,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
