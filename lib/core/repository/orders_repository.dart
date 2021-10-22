import 'dart:developer';

import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/core/services/api/api_client.dart';
import 'package:taxiye_passenger/core/services/google_map_service.dart';

/*
  Implementation for orders api requests
*/
class OrdersRepository implements IOrdersRepository {
  final ApiClient apiClient;
  final GoogleMapService mapService;

  OrdersRepository({
    required this.apiClient,
    required this.mapService,
  });
  // Todo: Add orders api requests here.
  @override
  Future<RideListResponse<ScheduledRide>> getScheduledRides() async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/show_pickup_schedules',
      data: {},
    );
    return RideListResponse<ScheduledRide>.fromJson(response);
  }

  @override
  Future<RideListResponse<RideHistory>> getRideHistory() async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/autos_integrated_order_history',
      data: {
        'start_from': '0',
        'show_custom_fields': '1',
      },
    );
    return RideListResponse<RideHistory>.fromJson(response);
  }

  @override
  Future<List<LatLng>> getRoutePolylines(
      PointLatLng origin, PointLatLng destination) async {
    return await mapService.getRoutePolylines(origin, destination);
  }
}
