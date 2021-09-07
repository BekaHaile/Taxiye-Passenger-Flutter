import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/core/models/map_models.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:uuid/uuid.dart';

/*
  Handles any business logic and data binding with Home flow
  any home api requests are made here
*/
class HomeController extends GetxService {
  final IHomeRepository repository;
  HomeController({required this.repository});

  final status = Status.success.obs;
  final AuthController authController = Get.find();

  final _selectedService = HomeServiceIndex.ride.obs;
  get selectedService => _selectedService.value;
  set selectedService(value) => _selectedService.value = value;

  // vehicles
  final _vehicleType = VehicleType.normal.obs;
  get vehicleType => _vehicleType.value;
  set vehicleType(value) => _vehicleType.value = value;

  final _vehicles = List<Vehicle>.empty(growable: true).obs;
  get vehicles => _vehicles.value;
  set vehicles(value) => _vehicles.assignAll(value);

  final _drivers = List<Driver>.empty(growable: true).obs;
  get drivers => _drivers.value;
  set drivers(value) => _drivers.value = value;

  final _selectedVehicle = Vehicle(name: 'Taxiye - Sedan', price: 128.0).obs;
  get selectedVehicle => _selectedVehicle.value;
  set selectedVehicle(value) => _selectedVehicle.value = value;

  // payments
  final _paymentMethods = List<Payment>.empty(growable: true).obs;
  get paymentMethods => _paymentMethods.value;
  set paymentMethods(value) => _paymentMethods.assignAll(value);

  final _selectedPayment = Payment(name: 'cash_payment').obs;
  get selectedPayment => _selectedPayment.value;
  set selectedPayment(value) => _selectedPayment.value = value;

  // Trip step
  final _tripStep = TripStep.locationSearch.obs;
  get tripStep => _tripStep.value;
  set tripStep(value) => _tripStep.value = value;

  // mock datas
  Driver driver = Driver(userName: 'Cameron Williamson', rating: 4.9);
  Vehicle vehicle =
      Vehicle(name: 'Taxiye - Sedan', liscensePlate: 'B12345', price: 128.0);

  // Location search
  Position? currentLocation;
  LatLng testLocation = const LatLng(9.0035674, 38.8013713);
  late String sessionToken;

  final _locationSearch = ''.obs;
  get locationSearch => _locationSearch.value;
  set locationSearch(value) => _locationSearch.value = value;

  final _locationSuggestions = List<Suggestion>.empty(growable: true).obs;
  get locationSuggestions => _locationSuggestions.value;
  set locationSuggestions(value) => _locationSuggestions.assignAll(value);

  final _pickedLocation = Place().obs;
  get pickedLocation => _pickedLocation.value;
  set pickedLocation(value) => _pickedLocation.value = value;

  final _markers = <Marker>{}.obs;
  get markers => _markers.value;
  set markers(value) => _markers.value = value;

  final _polyLines = <Polyline>{}.obs;
  get polyLines => _polyLines.value;
  set polyLines(value) => _polyLines.value = value;

  Timer? debounce;
  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor destinationIcon = BitmapDescriptor.defaultMarker;

  late GoogleMapController mapController;

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.
    super.onInit();
    // Todo: uncomment this for current location
    currentLocation = authController.currentLocation;
    // print('current location here: $currentLocation');

    _findDrivers();
    _setPinIcons();
    getVehicles();
    getPaymentMethods();
  }

  _findDrivers() async {
    await repository.findDrivers({
      'latitude': '${testLocation.latitude}',
      'longitude': '${testLocation.longitude}',
    }).then((findDriverResponse) {
      // set drivers

      if (findDriverResponse.drivers != null) {
        drivers = findDriverResponse.drivers;
        _addDriversMarker();
      }
    }, onError: (error) => print('Find Drivers error: $error'));
  }

  _setPinIcons() async {
    sourceIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(devicePixelRatio: 2.5),
        'assets/icons/source_location.png');
    destinationIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(devicePixelRatio: 2.5),
        'assets/icons/dest_location.png');
  }

  onRoutePickLocation() {
    // Generate new sessionToken for place search
    sessionToken = const Uuid().v4();
    locationSearch = '';
    _locationSuggestions.clear();
    Get.toNamed(Routes.pickLocation);
  }

  // For location search
  getPlaceSugestions(String input) {
    locationSearch = input;
    if (locationSearch.isNotEmpty) {
      // use 250 millisoconds as debouncing for throttling.
      if (debounce?.isActive ?? false) debounce?.cancel();
      debounce = Timer(const Duration(milliseconds: 250), () {
        repository
            .getPlaceSugestions(locationSearch,
                Get.locale?.languageCode ?? 'en', 'et', sessionToken)
            .then((placeSuggestions) {
          locationSuggestions = placeSuggestions;
        }, onError: (error) => log('location Suggetion error: $error'));
      });
    } else {
      _locationSuggestions.clear();
    }
  }

  Future<List<LatLng>> getRoutePolylines(
      PointLatLng origin, PointLatLng destination) async {
    return await repository.getRoutePolylines(origin, destination);
  }

  getVehicles() {
    //Todo: Get vehicles
    vehicles = [
      Vehicle(name: 'Taxiye - Sedan', price: 128.0),
      Vehicle(name: 'Taxiye - Mini', price: 121.0),
      Vehicle(name: 'Taxiye - Mini', price: 128.0),
      Vehicle(name: 'Taxiye - Mini', price: 134.0),
      Vehicle(name: 'Taxiye - Mini', price: 126.0),
    ];
  }

  getPaymentMethods() {
    //Todo: Get payment Methods
    paymentMethods = [
      Payment(name: 'cash'),
      Payment(name: 'cbe'),
      Payment(name: 'mpessa'),
      Payment(name: 'telebirr'),
    ];
  }

  // trip step methods
  onLocationPicked(Suggestion placeSuggetion) {
    // find place with place Id
    if (placeSuggetion.placeId.isNotEmpty) {
      repository
          .getPlaceDetailFromId(placeSuggetion.placeId, sessionToken)
          .then((place) {
        print('picked location here $place');
        pickedLocation = place;
        Get.back();
        tripStep = TripStep.pickVehicle;

        // set the polylines
        if (currentLocation != null) {
          // final origin = PointLatLng(
          //     currentLocation!.latitude, currentLocation!.longitude);
          // final origin = PointLatLng(
          //     currentLocation!.latitude, currentLocation!.longitude);
          final origin =
              PointLatLng(testLocation.latitude, testLocation.longitude);
          final destination =
              PointLatLng(place.location!.latitude, place.location!.longitude);

          // set origin and destination markers

          _setMapPins(testLocation, place.location!);

          // Get & set the polyLines
          repository.getRoutePolylines(origin, destination).then(
              (polylineCoordinates) {
            Polyline polyline = Polyline(
                polylineId: const PolylineId("poly"),
                color: AppTheme.primaryColor,
                width: 3,
                points: polylineCoordinates);

            _polyLines.add(polyline);

            // animate camera to destination
            mapController.animateCamera(
              CameraUpdate.newCameraPosition(CameraPosition(
                target: place.location!,
                zoom: 13,
              )),
            );
          }, onError: (error) => log('Poly line error: $error'));
        }
      }, onError: (error) => log('Place detail error: $error'));
    }
  }

  bookNow() {
    // Todo: add logic here
    tripStep = TripStep.lookingDrivers;
  }

  onDriverFound() {
    // Todo: add logic here
    tripStep = TripStep.driverDetail;
  }

  onCancelDriverSearch() {
    // Todo: on cancell loooking for drivers
  }

  onCancelDriver() {
    // Todo: on cancell driver
  }

  onDriverApproved() {
    // Todo: on driver approved
    tripStep = TripStep.tripStarted;
  }

  onTripEnded() {
    // Todo: on trip ended
    tripStep = TripStep.tripDetail;
  }

  onPaymentProcessed() {
    // Todo: o payment processed
    tripStep = TripStep.tripFeedback;
  }

  submitFeedBack() {
    // Todo: on submit feed back
    tripStep = TripStep.locationSearch;
  }

  _setMapPins(LatLng origin, LatLng destination) async {
    // _markers.add(Marker(
    //     markerId: const MarkerId('sourcePin'),
    //     position: origin,
    //     icon: sourceIcon));
    _markers.add(Marker(
        markerId: const MarkerId('destinationPin'),
        position: destination,
        icon: destinationIcon));
  }

  _addDriversMarker() async {
    // final Uint8List? currentLocationIcon =
    //     await getBytesFromAsset('assets/icons/current_location_sm.png', 50);
    final yellowCarIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(devicePixelRatio: 2.5),
        'assets/icons/yellow_car.png');
    final whiteCarIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(devicePixelRatio: 2.5),
        'assets/icons/white_car.png');

    markers.clear();

    // add driver markers
    for (Driver driver in drivers) {
      if (driver.latitude != null && driver.longitude != null) {
        _markers.add(
          Marker(
            markerId: const MarkerId('yellow_car'),
            infoWindow: InfoWindow(title: driver.userName),
            icon: yellowCarIcon,
            position: LatLng(driver.latitude!, driver.longitude!),
          ),
        );

        print('lat: ${driver.latitude} lng: ${driver.longitude}');
      }
    }

    // markers.addAll({
    //   Marker(
    //     markerId: const MarkerId('yellow_car'),
    //     infoWindow: const InfoWindow(title: 'Yellow Car'),
    //     icon: yellowCarIcon,
    //     position: const LatLng(8.982, 38.76),
    //   ),
    //   Marker(
    //     markerId: const MarkerId('white_car'),
    //     infoWindow: const InfoWindow(title: 'White Car'),
    //     icon: whiteCarIcon,
    //     position: const LatLng(8.9801, 38.756),
    //   ),
    // });
  }
}
