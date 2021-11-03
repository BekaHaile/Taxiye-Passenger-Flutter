import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/utils/functions.dart';

/*
  Handles any business logic and data binding with orders flow
  any orders api requests are made here
*/
class OrdersController extends GetxController {
  final IOrdersRepository repository;
  OrdersController({required this.repository});

  final status = Status.success.obs;

  final _orderStatus = OrderStatus.completed.obs;
  get orderStatus => _orderStatus.value;
  set orderStatus(value) => _orderStatus.value = value;

  final _rideHistories = List<RideHistory>.empty(growable: true).obs;
  get rideHistories => _rideHistories.value;
  set rideHistories(value) => _rideHistories.assignAll(value);

  final _completedRides = List<RideHistory>.empty(growable: true).obs;
  get completedRides => _completedRides.value;
  set completedRides(value) => _completedRides.assignAll(value);

  final _cancelledRides = List<RideHistory>.empty(growable: true).obs;
  get cancelledRides => _cancelledRides.value;
  set cancelledRides(value) => _cancelledRides.assignAll(value);

  final _scheduledRides = List<ScheduledRide>.empty(growable: true).obs;
  get scheduledRides => _scheduledRides.value;
  set scheduledRides(value) => _scheduledRides.assignAll(value);

  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor destinationIcon = BitmapDescriptor.defaultMarker;

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.
    super.onInit();
    _setPinIcons();
    getScheduledRides();
    getRideHistory();
  }

  getRideHistory() {
    status(Status.loading);
    repository.getRideHistory().then((rideHistoryResponse) {
      if (rideHistoryResponse.flag == SuccessFlags.rideHistory.successCode) {
        status(Status.success);
        if (rideHistoryResponse.data != null) {
          rideHistories = rideHistoryResponse.data;
          // set completed and cancelled ride history based on isCancelledRide
          // "is_cancelled_ride": 0, Ride completed
          // "is_cancelled_ride": 1, Ride cancelled
          completedRides = rideHistories
              .where((rideHistory) => rideHistory.isCancelledRide == 0)
              .toList();

          cancelledRides = rideHistories
              .where((rideHistory) => rideHistory.isCancelledRide == 1)
              .toList();
        }
      } else {
        print(rideHistoryResponse.error ?? '');
        status(Status.error);
        toast(
            'error',
            rideHistoryResponse.error ??
                rideHistoryResponse.log ??
                rideHistoryResponse.message ??
                '');
      }
    }, onError: (error) {
      status(Status.error);
      print('Get ride history error: $error');
    });
  }

  getScheduledRides() {
    status(Status.loading);
    repository.getScheduledRides().then((scheduledRideResponse) {
      if (scheduledRideResponse.flag == SuccessFlags.basicSuccess.successCode) {
        status(Status.success);
        if (scheduledRideResponse.data != null) {
          scheduledRides = scheduledRideResponse.data;
        }
      } else {
        print(scheduledRideResponse.error ?? '');
        status(Status.error);
        toast(
            'error',
            scheduledRideResponse.error ??
                scheduledRideResponse.log ??
                scheduledRideResponse.message ??
                '');
      }
    }, onError: (error) {
      status(Status.error);
      print('Get scheduled rides error: $error');
    });
  }

  cancelRideSchedule(String pickupId) {
    final Map<String, dynamic> cancelSchedulePayload = {'pickup_id': pickupId};
    status(Status.loading);
    repository.cancelRideSchedule(cancelSchedulePayload).then(
        (cancelScheduleResponse) {
      if (cancelScheduleResponse.flag ==
          SuccessFlags.basicSuccess.successCode) {
        status(Status.success);
        Get.snackbar('success'.tr, 'cancel_schedule_success'.tr);
        // Refresh scheduled ride history
        getScheduledRides();
      } else {
        print(cancelScheduleResponse.error ?? '');
        status(Status.error);
        toast(
            'error',
            cancelScheduleResponse.error ??
                cancelScheduleResponse.log ??
                cancelScheduleResponse.message ??
                '');
      }
    }, onError: (error) {
      status(Status.error);
      print('Cancel scheduled ride error: $error');
    });
  }

  Future<Polyline> getRoutePolyline(
      PointLatLng origin, PointLatLng destination) async {
    // Get & set the polyLines
    final polylineCoordinates =
        await repository.getRoutePolylines(origin, destination);

    return Polyline(
        polylineId: const PolylineId("poly"),
        color: AppTheme.primaryColor,
        width: 3,
        points: polylineCoordinates);
  }

  _setPinIcons() async {
    sourceIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(devicePixelRatio: 2.5),
        'assets/icons/source_location.png');
    destinationIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(devicePixelRatio: 2.5),
        'assets/icons/dest_location.png');
  }
}
