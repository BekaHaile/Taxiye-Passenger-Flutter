import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/core/models/map_models.dart';
import 'package:taxiye_passenger/core/services/api/api_client.dart';
import 'package:taxiye_passenger/core/services/map_service.dart';

/*
  Implementation for Home api requests
*/
class HomeRepository implements IHomeRepository {
  final ApiClient apiClient;
  final MapService mapService;

  HomeRepository({
    required this.apiClient,
    required this.mapService,
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

  // server requests
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
}
