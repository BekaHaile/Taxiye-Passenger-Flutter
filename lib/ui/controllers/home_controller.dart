import 'dart:async';
import 'dart:developer';
import 'dart:isolate';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geocoding/geocoding.dart';
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
import 'package:taxiye_passenger/utils/functions.dart';
import 'package:uuid/uuid.dart';
import 'dart:math' show cos, sqrt, asin;

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

  final _selectedVehicle = Vehicle().obs;
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
  final _tripStep = TripStep.whereTo.obs;
  get tripStep => _tripStep.value;
  set tripStep(value) => _tripStep.value = value;

  final _locationSuggestions = List<Suggestion>.empty(growable: true).obs;
  get locationSuggestions => _locationSuggestions.value;
  set locationSuggestions(value) => _locationSuggestions.assignAll(value);

  final _driverOnRouteCounter = 0.obs;
  get driverOnRouteCounter => _driverOnRouteCounter.value;
  set driverOnRouteCounter(value) => _driverOnRouteCounter.value = value;

  final _markers = <Marker>{}.obs;
  get markers => _markers.value;
  set markers(value) => _markers.value = value;

  final _polyLines = <Polyline>{}.obs;
  get polyLines => _polyLines.value;
  set polyLines(value) => _polyLines.value = value;

  final _locationSearch = ''.obs;
  get locationSearch => _locationSearch.value;
  set locationSearch(value) => _locationSearch.value = value;

  final _searchLoading = false.obs;
  get searchLoading => _searchLoading.value;
  set searchLoading(value) => _searchLoading.value = value;

  final searchController = TextEditingController();

  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor destinationIcon = BitmapDescriptor.defaultMarker;
  late GoogleMapController mapController;

  // mock data
  Driver driver = Driver(userName: 'Cameron Williamson');
  Vehicle driverVehicle = Vehicle();

  // Location search
  Position? currentLocation;
  Placemark? currentLocationPlace;
  // Getu commercial
  LatLng testLocation = const LatLng(9.003432689703812, 38.769641840207235);

  // yemeru senay
  // LatLng testLocation = const LatLng(9.003620646534136, 38.80093371322263);

  // LatLng testLocation = const LatLng(8.985193131157347, 38.74934949834666);

  // LatLng testLocation = const LatLng(9.065387872139096, 38.67130131804619);

  // LatLng testLocation = const LatLng(37.4220371, -122.0841212);

  late String sessionToken;
  // trip started variables
  int? sessionId;
  int? engagementId;
  // trid end variables
  RideDetail? rideDetail;

  Place? pickedLocation;
  int paymentMode = 0;
  Timer? debounce;
  late Timer _resendTimer;

  String feedbackComment = '';
  double driverRating = 0;

  ReceivePort _port = ReceivePort();

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.
    super.onInit();

    repository.registerFCM(onMessageRecieved: onMessageRescieved);

    IsolateNameServer.registerPortWithName(
        _port.sendPort, 'background_ride_notification');
    _port.listen((dynamic notificationMessage) {
      print('data from background notifcation: $notificationMessage');
      // onMessageRescieved(notificationMessage);
    });

    // Todo: uncomment this for current location
    currentLocation = authController.currentLocation;
    print('current location here: $currentLocation');

    _findDrivers();
    _setPinIcons();
    getVehicles();
    getPaymentMethods();
  }

  @override
  void onDetached() {}

  @override
  void onInactive() {}

  @override
  void onPaused() {}

  @override
  void onResumed() {}

  _startTimer() {
    driverOnRouteCounter = 150; // in seconds
    const oneSec = Duration(seconds: 1);
    _resendTimer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (driverOnRouteCounter < 1) {
          timer.cancel();
        } else {
          driverOnRouteCounter--;
        }
      },
    );
  }

  onMessageRescieved(NotificationMessage notificationMessage) {
    log("message recieved here $notificationMessage");

    switch (SuccessFlagsExtension.getsuccessKey(notificationMessage.flag)) {
      case SuccessFlags.rideAccepted:
        // Ride accepted with driver payload
        // set driver and driver detail
        // Todo: set driver name here
        driver = Driver(
          userName: 'Cameron Williamson',
          driverId: notificationMessage.driverId,
          phoneNo: notificationMessage.phoneNo,
          vehicleNo: notificationMessage.driverCarNo,
          driverImage: notificationMessage.userImage,
          rating: notificationMessage.rating,
        );

        driverVehicle = Vehicle(
          vehicleType: notificationMessage.vehicleType,
          regionName: notificationMessage.vehicleName,
          images: VehicleImage(tabNormal: notificationMessage.driverCarImage),
          vehicleNumber: notificationMessage.driverCarNo,
        );

        // set session and engagement ids
        sessionId = notificationMessage.sessionId;
        engagementId = int.tryParse(notificationMessage.engagementId ?? '0');

        // change ride step to waiting driver
        tripStep = TripStep.driverDetail;
        _startTimer();
        break;
      case SuccessFlags.rideStarted:
        // Ride started
        tripStep = TripStep.tripStarted;
        break;
      case SuccessFlags.rideEnd:
        // Ride ended
        // set ride details
        rideDetail = RideDetail(
          fare: double.parse(notificationMessage.fare ?? '0'),
          discount: double.parse(notificationMessage.discount ?? '0'),
          toPay: double.parse(notificationMessage.toPay ?? '0'),
          distanceTraveled:
              double.parse(notificationMessage.distanceTravelled ?? '0'),
          rideTime: int.parse(notificationMessage.rideTime ?? '0'),
          distanceUnit: notificationMessage.distanceUnit,
          paidUsingWallet:
              double.parse(notificationMessage.paidUsingWallet ?? '0'),
        );
        tripStep = TripStep.tripDetail;
        break;
      case SuccessFlags.driversBusy:
        resetValues();
        break;

      default:
    }
  }

  _findDrivers({LatLng? destination, double? routeDistance}) async {
    Map<String, dynamic> findDriversPayload = {
      'latitude': '${testLocation.latitude}',
      'longitude': '${testLocation.longitude}',
    };

    if (destination != null) {
      findDriversPayload.addAll({
        "op_drop_latitude": destination.latitude,
        "op_drop_longitude": destination.longitude,
        "ride_distance": routeDistance
      });
    }

    await repository.findDrivers(findDriversPayload).then((findDriverResponse) {
      if (findDriverResponse.flag == SuccessFlags.findDriver.successCode) {
        if (destination == null && findDriverResponse.drivers != null) {
          drivers = findDriverResponse.drivers;
          _addDriversMarker();
        }

        if (findDriverResponse.regions != null) {
          // add vehicles filteredby ride_type, show O || 2
          final allwoedVehicleRideTyes = [0, 2];
          vehicles = findDriverResponse.regions?.where(
              (vehicle) => allwoedVehicleRideTyes.contains(vehicle.rideType));
        }
      } else {
        print(findDriverResponse.error);
        toast('error', findDriverResponse.error ?? '');
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
      Vehicle(regionName: 'Taxiye - Sedan', regionFare: VehicleFare(fare: 128)),
      Vehicle(regionName: 'Taxiye - Mini', regionFare: VehicleFare(fare: 121)),
      Vehicle(regionName: 'Taxiye - Mini', regionFare: VehicleFare(fare: 126)),
      Vehicle(regionName: 'Taxiye - Mini', regionFare: VehicleFare(fare: 208)),
      Vehicle(regionName: 'Taxiye - Mini', regionFare: VehicleFare(fare: 24)),
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

  onPickLocationFromSearch(Suggestion placeSuggetion) {
    // find place with place Id
    if (placeSuggetion.placeId.isNotEmpty) {
      repository
          .getPlaceDetailFromId(placeSuggetion.placeId, sessionToken)
          .then((place) => onLocationPicked(place),
              onError: (error) => log('Place detail error: $error'));
    }
  }

  onPickLocationFromMap(LatLng position) async {
    searchLoading = true;
    getPlaceNameFromCordinate(position).then((value) {
      // print(value);
      searchLoading = false;
      Place place = Place(
          placeName:
              '${value.name ?? ''}, ${value.subLocality ?? ''}, ${value.locality ?? ''}',
          location: position);
      searchController.text = place.placeName ?? '';
      pickedLocation = place;
    }, onError: (error) {
      print(error);
      searchLoading = false;
    });
  }

  confirmPickedLocation() {
    if (pickedLocation == null) {
      Get.snackbar('error', 'destination_error');
    } else {
      onLocationPicked(pickedLocation!);
    }
  }

  onLocationPicked(Place place) {
    // get vehicle Fare estimations
    _findDrivers(destination: place.location);
    pickedLocation = place;
    Get.back();
    tripStep = TripStep.pickVehicle;

    // set the polylines
    if (currentLocation != null) {
      // final origin = PointLatLng(
      //     currentLocation!.latitude, currentLocation!.longitude);
      // final origin = PointLatLng(
      //     currentLocation!.latitude, currentLocation!.longitude);
      final origin = PointLatLng(testLocation.latitude, testLocation.longitude);
      final destination =
          PointLatLng(place.location!.latitude, place.location!.longitude);

      // set origin and destination markers

      _setMapPins(testLocation, place.location!);

      // Get & set the polyLines
      repository.getRoutePolylines(origin, destination).then(
          (polylineCoordinates) {
        // get vehicles fare calculation
        _findDrivers(
            destination: place.location,
            routeDistance: getRouteDistance(polylineCoordinates));

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
  }

  double getRouteDistance(List<LatLng> polylineCoordinates) {
    double totalDistance = 0.0;

// Calculating the total distance by adding the distance
// between small segments
    for (int i = 0; i < polylineCoordinates.length - 1; i++) {
      totalDistance += _coordinateDistance(
        polylineCoordinates[i].latitude,
        polylineCoordinates[i].longitude,
        polylineCoordinates[i + 1].latitude,
        polylineCoordinates[i + 1].longitude,
      );
    }

    return totalDistance;
  }

  double _coordinateDistance(lat1, lon1, lat2, lon2) {
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 -
        c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
    return 12742 * asin(sqrt(a));
  }

  onCancelRide() {
    // Todo: cancell ride based on current ride step

    Map<String, dynamic> cancelPayload = tripStep == TripStep.lookingDrivers
        ? {'session_id': '$sessionId'}
        : {'reasons': ''};

    status(Status.loading);
    repository.cancelRide(cancelPayload, tripStep).then(
      (basicResponse) {
        status(Status.success);
        Get.snackbar('success', 'ride_cancel_success'.tr);
        // back to ride first step
        resetValues();
      },
      onError: (err) {
        print('Cancel Ride request error: $err');
        status(Status.error);
      },
    );
  }

  onPaymentProcessed() {
    // Todo: o payment processed
    tripStep = TripStep.tripFeedback;
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
      }
    }
  }

  bookRide() {
    // check if destination and vehicle is picked first
    if (pickedLocation == null) {
      Get.snackbar('error', 'destination_error');
    } else if (selectedVehicle.regionId == null) {
      Get.snackbar('error'.tr, 'vehicle_select_error'.tr);
    } else {
      Map<String, dynamic> ridePayload = {
        'latitude': '${testLocation.latitude}',
        'longitude': '${testLocation.longitude}',
        'current_latitude': '${testLocation.latitude}',
        'current_longitude': '${testLocation.longitude}',
        'op_drop_latitude': '${pickedLocation?.location?.latitude}',
        'op_drop_longitude': '${pickedLocation?.location?.longitude}',
        'duplicate_flag': '0',
        'preferred_payment_mode': '$paymentMode',
        'vehicle_type': '${selectedVehicle.vehicleType}',
        'region_id': '${selectedVehicle.regionId}',
        'reverse_bid': '0',
        'driver_fare_factor': '1.0',
        'location_accuracy': '24.9',
        'customer_fare_factor': '1.0',
        'pickup_location_address': currentLocationPlace?.name ?? '',
        'drop_location_address': '${pickedLocation?.placeName}',
        'coupon_to_apply': '-1',
        'is_bluetooth_tracker': '0',
      };

      status(Status.loading);
      repository.requestRide(ridePayload).then((requestRideResponse) {
        if (requestRideResponse.flag == SuccessFlags.requestRide.successCode) {
          print('requestRide success here $requestRideResponse');
          status(Status.success);

          sessionId = requestRideResponse.sessionId;
          // Go to looking for drivers step
          tripStep = TripStep.lookingDrivers;
        } else {
          status(Status.error);
          toast(
              'error',
              requestRideResponse.error ??
                  requestRideResponse.log ??
                  requestRideResponse.message ??
                  '');
        }
      }, onError: (error) {
        status(Status.error);
      });
    }
  }

  submitFeedback() {
    final Map<String, dynamic> rateDriverPayload = {
      'given_rating': '$driverRating',
      'engagement_id': '$engagementId',
      'driver_id': '${driver.driverId}',
      'feedback': feedbackComment,
      'feedback_reasons': 'performance'
    };

    status(Status.loading);
    repository.rateDriver(rateDriverPayload).then((rateDriverResponse) {
      if (rateDriverResponse.flag == SuccessFlags.rateDriver.successCode) {
        status(Status.success);
        Get.snackbar('succes'.tr, 'rate_driver_success'.tr);
        resetValues();
      } else {
        print(rateDriverResponse.error ?? '');
        status(Status.error);
        toast(
            'error',
            rateDriverResponse.error ??
                rateDriverResponse.log ??
                rateDriverResponse.message ??
                '');
      }
    }, onError: (error) {
      status(Status.error);
      print('Rate driver error: $error');
    });
  }

  resetValues() {
    // Reset all values to there initial values

    sessionId = null;
    engagementId = null;
    _polyLines.clear();

    driver = Driver(userName: 'Cameron Williamson');
    driverVehicle = Vehicle();

    feedbackComment = '';
    driverRating = 0;
    tripStep = TripStep.whereTo;

    pickedLocation = null;
  }
}
