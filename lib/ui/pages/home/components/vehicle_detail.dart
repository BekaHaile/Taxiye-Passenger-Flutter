import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';

class VehicleDetail extends StatelessWidget {
  const VehicleDetail({
    Key? key,
    required this.vehicle,
    this.serviceType = HomeServiceIndex.ride,
    this.currency = 'ETB',
  }) : super(key: key);

  final Vehicle vehicle;
  final HomeServiceIndex serviceType;
  final String currency;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 475.0,
      decoration: AppTheme.bottomSheetDecoration,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            vehicle.images?.tabNormal?.isNotEmpty ?? false
                ? CachedNetworkImage(
                    imageUrl: vehicle.images!.tabNormal!,
                    width: 100.0,
                    height: 50.0,
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => Center(
                      child: CircularProgressIndicator(
                          value: downloadProgress.progress),
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
              padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
              child: Text(
                vehicle.regionName ?? vehicle.name ?? '',
                style: AppTheme.title.copyWith(fontSize: 14.0),
              ),
            ),
            if (serviceType == HomeServiceIndex.ride)
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.person,
                    color: AppTheme.darkTextColor,
                  ),
                  const SizedBox(width: 4.0),
                  Text(
                    '${vehicle.maxPeople ?? 4}',
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
                  children: [
                    FareDetailRow(
                      type: 'title',
                      title: 'base_fare',
                      currency: currency,
                      value: vehicle.regionFare?.baseFare?.toDouble() ??
                          _getDeliveryChargeValues('base_fare'),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Divider(
                        indent: 16.0,
                        endIndent: 16.0,
                        height: 1,
                        color: AppTheme.greyColor2,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('vehicle here: $vehicle');
                      },
                      child: FareDetailRow(
                        title: 'per_kilometer',
                        currency: currency,
                        value: vehicle.fareStructure != null
                            ? vehicle.fareStructure!.farePerKm?.toDouble() ?? 0
                            : _getDeliveryChargeValues('distance_fare'),
                      ),
                    ),
                    if (serviceType == HomeServiceIndex.ride)
                      FareDetailRow(
                        title: 'per_minute',
                        currency: currency,
                        value: vehicle.fareStructure != null
                            ? vehicle.fareStructure!.farePerMin?.toDouble() ?? 0
                            : 0,
                      ),
                    FareDetailRow(
                      title: serviceType == HomeServiceIndex.ride
                          ? 'congestion_charges'
                          : 'delivery_fare'.tr,
                      currency: currency,
                      value: vehicle.fareStructure != null
                          ? vehicle.fareStructure!.farePerWaitingMin
                                  ?.toDouble() ??
                              0
                          : _getDeliveryChargeValues('delivery_fare'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            RoundedButton(text: 'close'.tr, onPressed: () => Get.back())
          ],
        ),
      ),
    );
  }

  double _getDeliveryChargeValues(String chargeType) {
    if (vehicle.deliveryCharge == null) return 0;
    switch (chargeType) {
      case 'base_fare':
        String? baseFare = vehicle.deliveryCharge!.deliveryChargesInst
            ?.firstWhere(
                (element) => element.containsKey('Base Fare'))['Base Fare'];
        return double.parse(baseFare ?? '0');
      case 'distance_fare':
        String? distanceFare = vehicle.deliveryCharge!.deliveryChargesInst
                ?.firstWhere((element) => element.containsKey('Distance Fare'))[
            'Distance Fare'];
        return double.parse(distanceFare ?? '0');
      case 'delivery_fare':
        String? deliveryFare = vehicle.deliveryCharge!.deliveryChargesInst
                ?.firstWhere((element) => element.containsKey('Delivery Fare'))[
            'Delivery Fare'];
        return double.parse(deliveryFare ?? '0');
      default:
        return 0;
    }
  }
}

class FareDetailRow extends StatelessWidget {
  const FareDetailRow({
    Key? key,
    this.type = 'data',
    required this.title,
    required this.value,
    required this.currency,
  }) : super(key: key);

  final String type; // value ether data or title
  final String title;
  final double value;
  final String currency;

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
            value.toStringAsFixed(2) + ''.tr + ' $currency',
            style: type == 'title'
                ? AppTheme.title.copyWith(fontSize: 14.0)
                : AppTheme.body,
          )
        ],
      ),
    );
  }
}
