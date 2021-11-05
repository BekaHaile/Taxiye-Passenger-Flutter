import 'dart:developer';

import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/core/models/map_models.dart';
import 'package:taxiye_passenger/core/services/api/api_client.dart';
import 'package:taxiye_passenger/core/services/google_map_service.dart';
import 'package:taxiye_passenger/core/services/notification_service.dart';

/*
  Implementation for Home api requests
*/
class HomeRepository implements IHomeRepository {
  final ApiClient apiClient;
  final GoogleMapService mapService;
  final NotificationService notificationService;

  HomeRepository({
    required this.apiClient,
    required this.mapService,
    required this.notificationService,
  });

  // Google requests
  @override
  Future<List<Suggestion>> getPlaceSugestions(
      String input, String lang, String country, String sessionToken) async {
    return await mapService.getPlaceSugestions(
        input, lang, country, sessionToken);
  }

  @override
  Future<Place> getPlaceDetailFromId(
      String placeId, String sessionToken) async {
    return mapService.getPlaceDetailFromId(placeId, sessionToken);
  }

  @override
  Future<List<LatLng>> getRoutePolylines(
      PointLatLng origin, PointLatLng destination) async {
    return await mapService.getRoutePolylines(origin, destination);
  }

  // notification requests
  @override
  registerFCM(
      {required Function(NotificationMessage notificationMessage)
          onMessageRecieved}) {
    notificationService.registerFCM(onMessageRecieved: onMessageRecieved);
  }

  // server requests

  // Ride requests
  @override
  Future<FindDriversResponse> findDrivers(
      Map<String, dynamic> findDriversPayload) async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/v2/customer/find_a_driver',
      data: findDriversPayload,
    );
    return FindDriversResponse.fromJson(response);
  }

  @override
  Future<RequestRideResponse> requestRide(
      Map<String, dynamic> requestRidePayload) async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/request_ride',
      data: requestRidePayload,
    );
    return RequestRideResponse.fromJson(response);
  }

  @override
  Future<BasicResponse> scheduleRide(
      Map<String, dynamic> scheduleRidePayload) async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/insert_pickup_schedule',
      data: scheduleRidePayload,
    );
    return BasicResponse.fromJson(response);
  }

  @override
  Future<BasicResponse> cancelRide(
      Map<String, dynamic> cancelPayload, TripStep tripStep) async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: tripStep == TripStep.lookingDrivers
          ? '/cancel_the_request'
          : '/cancel_ride_by_customer',
      data: cancelPayload,
    );
    return BasicResponse.fromJson(response);
  }

  @override
  Future<DriverLocationResponse> getCurrentDriverLocation(
      String driverId) async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/get_driver_current_location',
      data: {'driver_id': driverId},
    );
    return DriverLocationResponse.fromJson(response);
  }

  @override
  Future<BasicResponse> rateDriver(
      Map<String, dynamic> rateDriverPayload) async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/rate_the_driver',
      data: rateDriverPayload,
    );
    return BasicResponse.fromJson(response);
  }

  @override
  Future<BasicResponse> addFavouriteDriver(
      Map<String, dynamic> favouriteDriverPayload) async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/customer/add_user_driver_mapping',
      data: favouriteDriverPayload,
    );
    return BasicResponse.fromJson(response);
  }

  @override
  Future<SavedPlacesResponse> getSavedPlaces() async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/customer/fetch_user_address',
      data: {},
    );
    return SavedPlacesResponse.fromJson(response);
  }

  @override
  Future<SavedPlacesResponse> updateSavedPlaces(
      Map<String, dynamic> addressPayload) async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/v2/add_home_and_work_address',
      data: addressPayload,
    );
    return SavedPlacesResponse.fromJson(response);
  }

  @override
  Future<ListResponse<Corporate>> getUserCorporates() async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/fetch_corporates_for_user',
      data: {},
    );
    return ListResponse<Corporate>.fromJson(response);
  }
}
