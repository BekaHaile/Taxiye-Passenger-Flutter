import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/orders_controller.dart';
import 'package:taxiye_passenger/ui/pages/orders/components/map_tile.dart';
import 'package:taxiye_passenger/ui/widgets/profile_avatar.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/functions.dart';

class OrderDetailsPage extends GetView<OrdersController> {
  const OrderDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: const WhiteAppBar(),
          body: Obx(
            () => controller.rideSummary.flag ==
                    SuccessFlags.rideSummary.successCode
                ? SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'order_details'.tr,
                            style: AppTheme.body.copyWith(fontSize: 24.0),
                          ),
                          const SizedBox(height: 20.0),
                          ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10.0)),
                            child: MapTile(
                                height: Get.height * 0.24,
                                locations: _getLocations(),
                                sourceIcon: controller.sourceIcon,
                                destinationIcon: controller.destinationIcon,
                                getRoutePolyline: (origin, destination) =>
                                    controller.getRoutePolyline(
                                        origin, destination)),
                          ),
                          const SizedBox(height: 24.0),
                          Container(
                            decoration: BoxDecoration(
                              color: AppTheme.lightSilverColor,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      ProfileAvatar(
                                        canEdit: false,
                                        radius: 35.0,
                                        name:
                                            controller.rideSummary.driverName ??
                                                '',
                                        imageUrl:
                                            controller.rideSummary.driverImage,
                                      ),
                                      const SizedBox(width: 10.0),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              controller
                                                      .rideSummary.driverName ??
                                                  '',
                                              style: AppTheme.body),
                                          RichText(
                                            text: TextSpan(
                                              style: AppTheme.body
                                                  .copyWith(fontSize: 12.0),
                                              children: [
                                                TextSpan(
                                                    text:
                                                        '${controller.rideSummary.driverRating ?? 0}'),
                                                const WidgetSpan(
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 4.0),
                                                    child: Icon(
                                                        Icons.star_outline,
                                                        size: 17.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '${controller.rideSummary.fare} ${controller.rideSummary.currency}',
                                        style: AppTheme.title2
                                            .copyWith(fontSize: 18.0),
                                      ),
                                      Text(
                                          controller.rideSummary.rideDate ?? '',
                                          style: AppTheme.body
                                              .copyWith(fontSize: 12.0))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 24.0),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppTheme.lightSilverColor,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      children: [
                                        Text('distance'.tr,
                                            style: AppTheme.body),
                                        Text(
                                            '${controller.rideSummary.distance} ${controller.rideSummary.distanceUnit}',
                                            style: AppTheme.title2
                                                .copyWith(fontSize: 18.0))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16.0),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppTheme.lightSilverColor,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      children: [
                                        Text('time'.tr, style: AppTheme.body),
                                        Text(
                                            getDisplayTimeFromSeconds(controller
                                                    .rideSummary.rideTime ??
                                                0),
                                            style: AppTheme.title2
                                                .copyWith(fontSize: 18.0))
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 24.0),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12.0)),
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
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('locations'.tr.toUpperCase(),
                                      style: AppTheme.title2
                                          .copyWith(fontSize: 12.0)),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 16.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 12.0),
                                          child: Column(
                                            children: [
                                              const Icon(Icons.place,
                                                  color: AppTheme.greenColor),
                                              SvgPicture.asset(
                                                'assets/images/dots_arrow.svg',
                                              ),
                                              const Icon(Icons.flag,
                                                  color: AppTheme.primaryColor),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 12.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'pick_up'.tr,
                                                  style: AppTheme.subtitle
                                                      .copyWith(fontSize: 12.0),
                                                ),
                                                const SizedBox(height: 4.0),
                                                Text(
                                                  '${controller.rideSummary.pickupAddress}',
                                                  style: AppTheme.title2
                                                      .copyWith(fontSize: 14.0),
                                                ),
                                                const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 12.0),
                                                  child: Divider(
                                                    height: 2,
                                                    color: AppTheme.greyColor2,
                                                  ),
                                                ),
                                                Text(
                                                  'drop_off'.tr,
                                                  style: AppTheme.subtitle
                                                      .copyWith(fontSize: 12.0),
                                                ),
                                                const SizedBox(height: 4.0),
                                                Text(
                                                  '${controller.rideSummary.dropAddress}',
                                                  style: AppTheme.title2
                                                      .copyWith(fontSize: 14.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 24.0),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12.0)),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('payments'.tr.toUpperCase(),
                                      style: AppTheme.title2
                                          .copyWith(fontSize: 12.0)),
                                  const SizedBox(height: 16.0),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'base_fare'.tr,
                                        style: AppTheme.title2
                                            .copyWith(fontSize: 12.0),
                                      ),
                                      Text(
                                        '${controller.rideSummary.baseFare} ${controller.rideSummary.currency}',
                                        style: AppTheme.title2
                                            .copyWith(fontSize: 12.0),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 8.0),
                                  const Divider(
                                    height: 2,
                                    color: AppTheme.greyColor2,
                                  ),
                                  const SizedBox(height: 16.0),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'distance'.tr,
                                        style: AppTheme.title2
                                            .copyWith(fontSize: 12.0),
                                      ),
                                      Text(
                                        '${controller.rideSummary.distance} ${controller.rideSummary.distanceUnit}',
                                        style: AppTheme.title2
                                            .copyWith(fontSize: 12.0),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 8.0),
                                  const Divider(
                                    height: 2,
                                    color: AppTheme.greyColor2,
                                  ),
                                  const SizedBox(height: 16.0),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'time'.tr,
                                        style: AppTheme.title2
                                            .copyWith(fontSize: 12.0),
                                      ),
                                      Text(
                                        getDisplayTimeFromSeconds(
                                            controller.rideSummary.rideTime ??
                                                0),
                                        style: AppTheme.title2
                                            .copyWith(fontSize: 12.0),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 8.0),
                                  const Divider(
                                    height: 2,
                                    color: AppTheme.greyColor2,
                                  ),
                                  const SizedBox(height: 16.0),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'total'.tr,
                                        style: AppTheme.title2
                                            .copyWith(fontSize: 12.0),
                                      ),
                                      Text(
                                        '${controller.rideSummary.fare} ${controller.rideSummary.currency}',
                                        style: AppTheme.title2
                                            .copyWith(fontSize: 12.0),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 8.0),
                                  const Divider(
                                    height: 2,
                                    color: AppTheme.greyColor2,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                : controller.status.value == Status.error
                    ? Center(
                        child: Text(
                          'fetch_ride_summary_error'.tr,
                          style: AppTheme.subtitle.copyWith(fontSize: 16.0),
                        ),
                      )
                    : const SizedBox(),
          ),
        ),
        Obx(() => ModalProgressHUD(
              child: const SizedBox(),
              inAsyncCall: controller.status.value == Status.loading,
            )),
      ],
    );
  }

  Map<String, PointLatLng> _getLocations() {
    Map<String, PointLatLng> locations = {};

    if (controller.rideSummary.pickupLatitude != null &&
        controller.rideSummary.pickupLongitude != null &&
        controller.rideSummary.dropLatitude != null &&
        controller.rideSummary.dropLatitude != 0.0 &&
        controller.rideSummary.dropLongitude != null &&
        controller.rideSummary.dropLongitude != 0.0) {
      locations.addAll({
        'origin': PointLatLng(controller.rideSummary.pickupLatitude!,
            controller.rideSummary.pickupLongitude!),
        'destination': PointLatLng(controller.rideSummary.dropLatitude!,
            controller.rideSummary.dropLongitude!),
      });
    }

    return locations;
  }
}
