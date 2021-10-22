import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/orders_controller.dart';
import 'package:taxiye_passenger/ui/widgets/profile_avatar.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:taxiye_passenger/utils/functions.dart';
import 'package:get/get.dart';

class OrderTile extends StatefulWidget {
  const OrderTile({
    Key? key,
    this.order,
    this.schedule,
    required this.onTap,
  }) : super(key: key);

  final RideHistory? order;
  final ScheduledRide? schedule;
  final VoidCallback onTap;

  @override
  State<OrderTile> createState() => _OrderTileState();
}

class _OrderTileState extends State<OrderTile> {
  late GoogleMapController mapController;
  OrdersController ordersController = Get.find();
  Set<Polyline> _polylines = {};
  Set<Marker> _markers = {};

  _onMapCreated(GoogleMapController mpController) async {
    mapController = mpController;

    if (widget.order != null) {
      if (widget.order!.pickupLatitude != null &&
          widget.order!.pickupLongitude != null &&
          widget.order!.dropLatitude != null &&
          widget.order!.dropLatitude != 0.0 &&
          widget.order!.dropLongitude != null &&
          widget.order!.dropLongitude != 0.0) {
        PointLatLng origin = PointLatLng(
            widget.order!.pickupLatitude!, widget.order!.pickupLongitude!);
        PointLatLng destination = PointLatLng(
            widget.order!.dropLatitude!, widget.order!.dropLongitude!);
        _setMapValues(origin, destination);
      }
    } else if (widget.schedule != null &&
        widget.schedule!.latitude != null &&
        widget.schedule!.longitude != null &&
        widget.schedule!.opDropLatitude != null &&
        widget.schedule!.opDropLongitude != null) {
      PointLatLng origin =
          PointLatLng(widget.schedule!.latitude!, widget.schedule!.longitude!);
      PointLatLng destination = PointLatLng(
          widget.schedule!.opDropLatitude!, widget.schedule!.opDropLongitude!);
      _setMapValues(origin, destination);
    }
  }

  _setMapValues(PointLatLng origin, PointLatLng destination) {
    _setCameraPosition(origin, destination);
    _setMapPins(LatLng(origin.latitude, origin.longitude),
        LatLng(destination.latitude, destination.longitude));
    _setPolylines(origin, destination);
  }

  _setMapPins(LatLng origin, LatLng destination) async {
    setState(() {
      _markers.add(Marker(
          markerId: const MarkerId('sourcePin'),
          position: origin,
          icon: ordersController.sourceIcon));
      _markers.add(Marker(
          markerId: const MarkerId('destinationPin'),
          position: destination,
          icon: ordersController.destinationIcon));
    });
  }

  _setCameraPosition(PointLatLng origin, PointLatLng destination) {
    // animate camera to mid point between origin and destination
    LatLng midPoint = LatLng((origin.latitude + destination.latitude) / 2,
        (origin.longitude + destination.longitude) / 2);
    mapController.animateCamera(
      CameraUpdate.newCameraPosition(CameraPosition(
        target: midPoint,
        zoom: 13,
      )),
    );
  }

  _setPolylines(PointLatLng origin, PointLatLng destination) async {
    final orderPolyline =
        await ordersController.getRoutePolyline(origin, destination);
    setState(() {
      _polylines.add(orderPolyline);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: widget.onTap,
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
                      widget.order?.date ??
                          formatDate(
                              widget.schedule?.pickupTime ?? DateTime.now(),
                              showTime: true),
                      style: AppTheme.title.copyWith(fontSize: 14.0),
                    ),
                    if (widget.order != null)
                      Text(
                          widget.order?.isCancelledRide == 0
                              ? '${widget.order?.amount} ${widget.order?.currency}'
                              : 'canceled'.tr,
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                            color: AppTheme.primaryColor,
                          ))
                  ],
                ),
                const SizedBox(height: 10.0),
                // Image.asset('assets/images/order_map.png'),
                SizedBox(
                  height: Get.height * 0.3,
                  child: GoogleMap(
                    initialCameraPosition: const CameraPosition(
                      target: kInitialPosition,
                      zoom: kCameraZoom,
                    ),
                    onMapCreated: (controller) => _onMapCreated(controller),
                    myLocationButtonEnabled: false,
                    zoomControlsEnabled: false,
                    compassEnabled: false,
                    liteModeEnabled: true,
                    markers: _markers,
                    polylines: _polylines,
                  ),
                ),
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
                                    text: widget.order?.pickupAddress ??
                                        widget.schedule?.pickupLocationAddress,
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
                                      text: widget.order?.dropAddress ??
                                          widget.schedule?.dropLocationAddress),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      if (widget.order?.isCancelledRide == 0)
                        const VerticalDivider(
                          thickness: 1,
                          width: 20,
                          color: AppTheme.greyColor3,
                        ),
                      if (widget.order?.isCancelledRide == 0)
                        Flexible(
                          flex: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    'Driver Name',
                                    style:
                                        AppTheme.body.copyWith(fontSize: 12.0),
                                    textAlign: TextAlign.end,
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: AppTheme.primaryColor),
                                ),
                                child: const ProfileAvatar(
                                  canEdit: false,
                                  radius: 20.0,
                                  name: '',
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
}
