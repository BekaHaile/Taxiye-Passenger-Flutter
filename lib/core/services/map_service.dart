/*
  Handles map api requests
*/
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:get/state_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxiye_passenger/core/models/map_models.dart';
import 'package:taxiye_passenger/core/services/api/dio_client.dart';
import 'package:taxiye_passenger/core/services/api/network_exceptions.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:taxiye_passenger/utils/functions.dart';

class MapService {
  late DioClient dioClient;
  late Map<String, dynamic> defaultParams;

  final apiKey = dotenv.env['GOOGLE_MAP_KEY'];

  MapService() {
    dioClient = DioClient(Dio(), baseUrl: kGooglePlacesUrl);
  }

  Future<List<Suggestion>> getPlaceSugestions(
      String input, String lang, String country, String sessionToken) async {
    final locationQueryParams = {
      'input': input,
      'language': lang,
      'components': 'country:$country',
      'key': apiKey,
      'sessiontoken': sessionToken,
    };
    try {
      final response = await dioClient.get('/autocomplete/json',
          queryParameters: locationQueryParams);

      if (response['status'] == 'OK') {
        // log('$response');
        // compose suggestions in a list
        return response['predictions']
            .map<Suggestion>((p) => Suggestion(p['place_id'], p['description']))
            .toList();
      }
      if (response['status'] == 'ZERO_RESULTS') {
        return [];
      }
      throw Exception(response['error_message']);
    } on DioError catch (e) {
      final errorMessage = NetworkExceptions.getErrorMessage(
          NetworkExceptions.getDioException(e));
      log('Api Error: $errorMessage');
      toast('error', e.response?.data['message']);
      return Future.error(errorMessage);
    }
  }

  Future<Place> getPlaceDetailFromId(
      String placeId, String sessionToken) async {
    try {
      final placeQueryParams = {
        'place_id': placeId,
        'fields': 'formatted_address,geometry',
        'key': apiKey,
        'sessiontoken': sessionToken,
      };

      final response = await dioClient.get('/details/json',
          queryParameters: placeQueryParams);

      if (response['status'] == 'OK') {
        // log('place detail here $response');
        // build result
        final place = Place();
        place.placeName = response['result']['formatted_address'];
        place.location = LatLng(
            response['result']['geometry']['location']['lat'],
            response['result']['geometry']['location']['lng']);

        return place;
      }
      throw Exception(response['error_message']);
    } on DioError catch (e) {
      final errorMessage = NetworkExceptions.getErrorMessage(
          NetworkExceptions.getDioException(e));
      log('Api Error: $errorMessage');
      toast('error', e.response?.data['message']);
      return Future.error(errorMessage);
    }
  }

  Future<List<LatLng>> getRoutePolylines(
      PointLatLng origin, PointLatLng destination) async {
    // this will hold each polyline coordinate as Lat and Lng pairs
    List<LatLng> polylineCoordinates = [];
    // this is the key object - the PolylinePoints
    // which generates every polyline between start and finish

    PolylinePoints polylinePoints = PolylinePoints();

    final result = await polylinePoints.getRouteBetweenCoordinates(
        apiKey ?? '', origin, destination);
    if (result.points.isNotEmpty) {
      // loop through all PointLatLng points and convert them
      // to a list of LatLng, required by the Polyline
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }
    return polylineCoordinates;
  }
}
