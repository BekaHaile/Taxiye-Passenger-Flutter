import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/pages/common/confirm_dialog.dart';
import 'package:taxiye_passenger/ui/pages/orders/components/map_tile.dart';
import 'package:taxiye_passenger/ui/widgets/profile_avatar.dart';
import 'package:taxiye_passenger/utils/functions.dart';
import 'package:get/get.dart';

class OrderTile extends StatelessWidget {
  const OrderTile({
    Key? key,
    this.order,
    this.schedule,
    required this.onTap,
    required this.getRoutePolyline,
    this.onCancelSchedule,
    this.sourceIcon = BitmapDescriptor.defaultMarker,
    this.destinationIcon = BitmapDescriptor.defaultMarker,
  }) : super(key: key);

  final RideHistory? order;
  final ScheduledRide? schedule;
  final VoidCallback onTap;
  final VoidCallback? onCancelSchedule;

  final BitmapDescriptor sourceIcon;
  final BitmapDescriptor destinationIcon;
  final Function(PointLatLng origin, PointLatLng destination) getRoutePolyline;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
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
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      order?.date ??
                          formatDate(schedule?.pickupTime ?? DateTime.now(),
                              showTime: true),
                      style: AppTheme.title.copyWith(fontSize: 14.0),
                    ),
                    if (order != null)
                      Text(
                          order?.isCancelledRide == 0
                              ? '${order?.amount} ${order?.currency}'
                              : 'canceled'.tr,
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                            color: AppTheme.primaryColor,
                          )),
                    if (schedule != null)
                      schedule?.status == 0
                          ? GestureDetector(
                              onTap: () {
                                // show confirmation dialog
                                Get.dialog(ConfirmDialog(
                                  title: 'cancel_scheduled_ride'.tr,
                                  content: 'cancel_scheduled_ride_info'.tr,
                                  actionCallback: onCancelSchedule,
                                  actionText: 'yes',
                                  cancelText: 'no',
                                ));
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Icon(
                                  Icons.delete,
                                  color: AppTheme.primaryColor,
                                ),
                              ),
                            )
                          : Text(
                              schedule?.status == 2
                                  ? 'processed'.tr
                                  : schedule?.status == 3
                                      ? 'cancelled'.tr
                                      : '',
                              style: const TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                                color: AppTheme.primaryColor,
                              )),
                  ],
                ),
                const SizedBox(height: 10.0),
                MapTile(
                    height: Get.height * 0.24,
                    locations: _getLocations(),
                    sourceIcon: sourceIcon,
                    destinationIcon: destinationIcon,
                    getRoutePolyline: getRoutePolyline),
                const SizedBox(height: 10.0),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              overflow: TextOverflow.ellipsis,
                              text: TextSpan(
                                style: AppTheme.body.copyWith(fontSize: 12.0),
                                children: [
                                  const WidgetSpan(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 4.0),
                                      child: Icon(
                                        Icons.location_on,
                                        size: 15.0,
                                        color: AppTheme.greenColor,
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: order?.pickupAddress ??
                                        schedule?.pickupLocationAddress,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5.0),
                            RichText(
                              overflow: TextOverflow.ellipsis,
                              text: TextSpan(
                                style: AppTheme.body.copyWith(fontSize: 12.0),
                                children: [
                                  const WidgetSpan(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 4.0),
                                      child: Icon(
                                        Icons.flag,
                                        size: 15.0,
                                        color: AppTheme.primaryColor,
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                      text: order?.dropAddress ??
                                          schedule?.dropLocationAddress),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      if (order?.isCancelledRide == 0)
                        const VerticalDivider(
                          thickness: 1,
                          width: 5,
                          color: AppTheme.greyColor3,
                        ),
                      if (order?.isCancelledRide == 0)
                        Flexible(
                          flex: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  child: Text(
                                    order?.driverName ?? '',
                                    style:
                                        AppTheme.body.copyWith(fontSize: 12.0),
                                    textAlign: TextAlign.end,
                                  ),
                                ),
                              ),
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: AppTheme.primaryColor),
                                ),
                                child: ProfileAvatar(
                                  canEdit: false,
                                  radius: 18.0,
                                  name: '',
                                  imageUrl: order?.driverImage,
                                  iconSize: 25.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Map<String, PointLatLng> _getLocations() {
    Map<String, PointLatLng> locations = {};

    if (order != null) {
      if (order!.pickupLatitude != null &&
          order!.pickupLongitude != null &&
          order!.dropLatitude != null &&
          order!.dropLatitude != 0.0 &&
          order!.dropLongitude != null &&
          order!.dropLongitude != 0.0) {
        locations.addAll({
          'origin':
              PointLatLng(order!.pickupLatitude!, order!.pickupLongitude!),
          'destination':
              PointLatLng(order!.dropLatitude!, order!.dropLongitude!),
        });
      }
    } else if (schedule != null &&
        schedule!.latitude != null &&
        schedule!.longitude != null &&
        schedule!.opDropLatitude != null &&
        schedule!.opDropLongitude != null) {
      locations.addAll({
        'origin': PointLatLng(schedule!.latitude!, schedule!.longitude!),
        'destination':
            PointLatLng(schedule!.opDropLatitude!, schedule!.opDropLongitude!),
      });
    }

    return locations;
  }
}
