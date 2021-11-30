import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/core/models/map_models.dart';
import 'package:taxiye_passenger/shared/custom_icons.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:taxiye_passenger/ui/controllers/payment_controller.dart';
import 'package:taxiye_passenger/ui/controllers/profile_controller.dart';
import 'package:taxiye_passenger/utils/constants.dart';
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
  ProfileController? profileController;

  final _selectedService = HomeServiceIndex.ride.obs;
  get selectedService => _selectedService.value;
  set selectedService(value) => _selectedService.value = value;

  List<Vehicle>? allVehicles;

  final _vehicles = List<Vehicle>.empty(growable: true).obs;
  get vehicles => _vehicles.value;
  set vehicles(value) => _vehicles.assignAll(value);

  final _drivers = List<Driver>.empty(growable: true).obs;
  get drivers => _drivers.value;
  set drivers(value) => _drivers.value = value;

  final _savedPlaces = List<Address>.empty(growable: true).obs;
  get savedPlaces => _savedPlaces.value;
  set savedPlaces(value) => _savedPlaces.value = value;

  final _selectedSavedPlace = Address().obs;
  get selectedSavedPlace => _selectedSavedPlace.value;
  set selectedSavedPlace(value) => _selectedSavedPlace.value = value;

  final _recentLocations = List<Address>.empty(growable: true).obs;
  get recentLocations => _recentLocations.value;
  set recentLocations(value) => _recentLocations.value = value;

  final _selectedVehicle = Vehicle().obs;
  get selectedVehicle => _selectedVehicle.value;
  set selectedVehicle(value) => _selectedVehicle.value = value;

  // payments
  final _paymentMethods = List<Payment>.empty(growable: true).obs;
  get paymentMethods => _paymentMethods.value;
  set paymentMethods(value) => _paymentMethods.assignAll(value);

  final _paymentTypes = List<PaymentType>.empty(growable: true).obs;
  get paymentTypes => _paymentTypes.value;
  set paymentTypes(value) => _paymentTypes.assignAll(value);

  final _selectedPayment = Payment(name: 'cash_payment').obs;
  get selectedPayment => _selectedPayment.value;
  set selectedPayment(value) => _selectedPayment.value = value;

  final _userCorporates = List<Corporate>.empty(growable: true).obs;
  get userCorporates => _userCorporates.value;
  set userCorporates(value) => _userCorporates.assignAll(value);

  Corporate? selectedCorporate;

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

  final _rideCounter = 0.obs;
  get rideCounter => _rideCounter.value;
  set rideCounter(value) => _rideCounter.value = value;

  final _markers = <Marker>{}.obs;
  get markers => _markers.value;
  set markers(value) => _markers.value = value;

  final _polyLines = <Polyline>{}.obs;
  get polyLines => _polyLines.value;
  set polyLines(value) => _polyLines.value = value;

  final _focusedSearchLocation = LocationType.dropOff.obs;
  get focusedSearchLocation => _focusedSearchLocation.value;
  set focusedSearchLocation(value) => _focusedSearchLocation.value = value;

  final _pickUpLocationSearch = ''.obs;
  get pickUpLocationSearch => _pickUpLocationSearch.value;
  set pickUpLocationSearch(value) => _pickUpLocationSearch.value = value;

  final _dropOffLocationSearch = ''.obs;
  get dropOffLocationSearch => _dropOffLocationSearch.value;
  set dropOffLocationSearch(value) => _dropOffLocationSearch.value = value;

  final pickUpSearchController = TextEditingController();
  final dropOffSearchController = TextEditingController();

  final _searchLoading = false.obs;
  get searchLoading => _searchLoading.value;
  set searchLoading(value) => _searchLoading.value = value;

  final _rideType = 0.obs;
  get rideType => _rideType.value;
  set rideType(value) => _rideType.value = value;

  // final searchController = TextEditingController();
  Polyline? ridePolyline;

  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor destinationIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor yellowCarIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor whiteCarIcon = BitmapDescriptor.defaultMarker;

  late GoogleMapController mapController;
  Driver? driver;
  Vehicle driverVehicle = Vehicle();

  // Location search
  LatLng currentLocation = kInitialPosition;
  Placemark? currentLocationPlace;
  // Getu commercial
  // LatLng testLocation = const LatLng(9.003432689703812, 38.769641840207235);
  // yemeru senay
  // LatLng testLocation = const LatLng(9.003620646534136, 38.80093371322263);
  // LatLng testLocation = const LatLng(9.065387872139096, 38.67130131804619);
  // LatLng testLocation = const LatLng(9.051552111443572, 38.72762157250847);
  // LatLng testLocation = const LatLng(37.4220371, -122.0841212);

  String sessionToken = const Uuid().v4();
  // trip started variables
  int? sessionId;
  int? engagementId;

  RideDetail? rideDetail;
  Place? pickupLocation;
  Place? dropOffLocation;
  int paymentMode = 0;
  Timer? debounce;

  late Timer _resendTimer;
  String feedbackComment = '';
  double driverRating = 0;

  final GetStorage _storage = GetStorage();
  late SharedPreferences prefs;
  StreamSubscription<Position>? positionStream;

  // For ride schedule
  DateTime? scheduleDate;
  TimeOfDay? scheduleTime;
  String updateFrom = 'home';
  EmergencyStatus emergencyStatus = EmergencyStatus.disable;

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.
    super.onInit();

    scheduleDate = DateTime.now();
    scheduleTime = TimeOfDay.now();
    prefs = await SharedPreferences.getInstance();
    // Todo: uncomment this for current location
    // set current location
    currentLocation = LatLng(authController.currentLocation.latitude,
        authController.currentLocation.longitude);
    getPlaceNameFromCordinate(currentLocation).then((value) {
      Place place = Place(
          placeName:
              '${value.name ?? ''}, ${value.subLocality ?? ''}, ${value.locality ?? ''}',
          location: currentLocation);
      pickUpLocationSearch = place.placeName ?? '';
      pickupLocation = place;
    });
    print('current location here: $currentLocation');

    // register for notification message listner
    repository.registerFCM(onMessageRecieved: onMessageRescieved);

    _findDrivers();
    _setPinIcons();
    _getUserCorporates();
  //  _getPaymentMethods();
    _getPaymentTypes();
    _getSavedPlaces();
    _updateHomePayments();
  }

  onAppStateChange(AppLifecycleState appState) async {
    // print('current app state: $appState');
    // check if ride state has been changed while app is in background
    if (appState == AppLifecycleState.resumed) {
      // use sharedPreference for the ability of refreshing values changed in
      // background.
      await prefs.reload();
      final storedNotification = prefs.getString('rideNotification');

      // check for notification message
      if (storedNotification?.isNotEmpty ?? false) {
        NotificationMessage notificationMessage =
            NotificationMessage.fromJson(jsonDecode(storedNotification!));
        onMessageRescieved(notificationMessage);
        // clear rideNotification from shared preference
        prefs.setString('rideNotification', '');
      }
    }
  }

  // FCM background isolate communication
  // fcmIsolateCommunication() {
  //   ReceivePort _port = ReceivePort();
  //   IsolateNameServer.registerPortWithName(
  //       _port.sendPort, 'background_ride_notification');
  //   _port.listen((dynamic notificationMessage) {
  //     print('data from background notifcation: $notificationMessage');
  //     // onMessageRescieved(notificationMessage);
  //   });
  // }

  _findDrivers({LatLng? destination, double? routeDistance}) async {
    Map<String, dynamic> findDriversPayload = {
      'latitude': '${currentLocation.latitude}',
      'longitude': '${currentLocation.longitude}',
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
          allVehicles = findDriverResponse.regions;

          filterVehicles(0);
        }
      } else {
        print(findDriverResponse.error);
        toast('error', findDriverResponse.error ?? '');
      }
    }, onError: (error) => print('Find Drivers error: $error'));
  }

  _startDriverOnRouteTimer(int mins) {
    if ((mins * 60) != driverOnRouteCounter) {
      driverOnRouteCounter = mins * 60; // in seconds
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
  }

  _startRideTimer() {
    Timer.periodic(const Duration(seconds: 1), (Timer timer) => rideCounter++);
  }

  onMessageRescieved(NotificationMessage notificationMessage) {
    log("message recieved here $notificationMessage");

    switch (SuccessFlagsExtension.getsuccessKey(notificationMessage.flag)) {
      case SuccessFlags.rideAccepted:
        _onRideAccepted(notificationMessage);
        break;
      case SuccessFlags.rideStarted:
        // Ride started
        _onRideStarted();
        break;
      case SuccessFlags.rideEnd:
        // Ride ended
        positionStream?.cancel();
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
      case SuccessFlags.driverCancelRide:
      case SuccessFlags.driversBusy:
        resetValues();
        break;
      case SuccessFlags.payWithMpesa:
        if(tripStep == TripStep.tripDetail){
          tripStep = TripStep.tripFeedback;
        }
        break;
      case SuccessFlags.payWithMpesaFailed:
        if(tripStep == TripStep.tripDetail){
          status(Status.error);
        }
        break;
      default:
    }
  }

  _updateHomePayments(){
    PaymentController paymentController = Get.find();
  }

  _onRideAccepted(NotificationMessage notificationMessage) {
    // Ride accepted with driver payload
    // set driver and driver detail
    driver = Driver(
      userName: notificationMessage.userName ?? '',
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
    // engagementId = notificationMessage.engagementId;

    // change ride step to waiting driver
    tripStep = TripStep.driverDetail;

    // set driver route
    // set origin to drivers current location
    final origin = PointLatLng(
        notificationMessage.currentLocationLatitude ?? currentLocation.latitude,
        notificationMessage.currentLocationLongitude ??
            currentLocation.longitude);
    final destination =
        PointLatLng(currentLocation.latitude, currentLocation.longitude);
    // Get & set the polyLines
    repository.getRoutePolylines(origin, destination).then(
        (polylineCoordinates) {
      Polyline polyline = Polyline(
          polylineId: const PolylineId("poly"),
          color: AppTheme.primaryColor,
          width: 3,
          points: polylineCoordinates);

      _polyLines.clear();
      _polyLines.add(polyline);

      // animate camera to mid point between origin and destination
      LatLng midPoint = LatLng((origin.latitude + destination.latitude) / 2,
          (origin.longitude + destination.longitude) / 2);
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(CameraPosition(
          target: midPoint,
          zoom: 15,
        )),
      );
    }, onError: (error) => log('Poly line error: $error'));

    updateDriverLocation();
  }

  _onRideStarted() {
    tripStep = TripStep.tripStarted;
    _setMapPins(currentLocation, dropOffLocation!.location!);
    if (ridePolyline != null) {
      _polyLines.clear();
      _polyLines.add(ridePolyline!);

      final origin =
          PointLatLng(currentLocation.latitude, currentLocation.longitude);
      final destination = PointLatLng(dropOffLocation!.location!.latitude,
          dropOffLocation!.location!.longitude);

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
    _startRideTimer();
    liveTrackTrip();
  }

  filterVehicles(int rideType) {
    // filter vehicles based on rideType
    // 0 - normal
    // 2 - shared
    // 1 - corporate
    this.rideType = rideType;
    if (allVehicles?.isNotEmpty ?? false) {
      if (rideType == 1) {
        // case for corporate
        selectedCorporate = selectedCorporate ?? userCorporates[0];
        List<String>? coporateRestrictedVehicles =
            selectedCorporate?.restrictedSubRegions?.split(',');
        if (coporateRestrictedVehicles?.isNotEmpty ?? false) {
          vehicles = allVehicles?.where((vehicle) =>
              !coporateRestrictedVehicles!.contains('${vehicle.regionId}'));
        }
      } else {
        vehicles =
            allVehicles?.where((vehicle) => vehicle.rideType == rideType);
      }
    }
  }

  _setPinIcons() async {
    sourceIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(devicePixelRatio: 2.5),
        'assets/icons/source_location.png');
    destinationIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(devicePixelRatio: 2.5),
        'assets/icons/dest_location.png');
    yellowCarIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(devicePixelRatio: 2.5),
        'assets/icons/yellow_car.png');

    whiteCarIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(devicePixelRatio: 2.5),
        'assets/icons/white_car.png');
  }

  onRoutePickLocation({bool isSchedule = false}) {
    // Generate new sessionToken for place search
    sessionToken = const Uuid().v4();
    dropOffLocationSearch = '';

    if (!isSchedule) {
      scheduleDate = null;
      scheduleTime = null;
    }

    _locationSuggestions.clear();
    Get.toNamed(Routes.pickLocation);
  }

  // For location search
  getPlaceSugestions(String input) {
    String? searchedPlaceName = '';
    if (focusedSearchLocation == LocationType.pickUp) {
      pickUpLocationSearch = input;
      searchedPlaceName = pickupLocation?.placeName;
    } else {
      dropOffLocationSearch = input;
      searchedPlaceName = dropOffLocation?.placeName;
    }

    if (input.isNotEmpty && input != searchedPlaceName) {
      // use 250 millisoconds as debouncing for throttling.
      if (debounce?.isActive ?? false) debounce?.cancel();
      debounce = Timer(const Duration(milliseconds: 250), () {
        repository
            .getPlaceSugestions(
                input, Get.locale?.languageCode ?? 'en', 'et', sessionToken)
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

  _getUserCorporates() {
    repository.getUserCorporates().then((userCorporatesResponse) {
      if (userCorporatesResponse.flag ==
          SuccessFlags.basicSuccess.successCode) {
        if (userCorporatesResponse.data?.isNotEmpty ?? false) {
          userCorporates = userCorporatesResponse.data;
        }
      } else {
        print(userCorporatesResponse.error ??
            userCorporatesResponse.message ??
            '');
      }
    }, onError: (error) {
      print('Get user corporates error:  $error');
    });
  }

  _getPaymentMethods() {
    //Todo: Get payment Methods
    paymentMethods = [
      Payment(name: 'cash'),
      Payment(name: 'cbe'),
      Payment(name: 'mpessa'),
      Payment(name: 'telebirr'),
    ];
  }

  _getPaymentTypes() {
    //Todo: Get payment Types
    paymentTypes = [
      PaymentType(
        text: 'cash'.tr,
        icon: CustomIcons.payment,
        iconColor: AppTheme.greenColor,
      ),
      PaymentType(
        text: 'offers'.tr,
        icon: CustomIcons.offer,
        iconColor: AppTheme.primaryColor,
      ),
      const PaymentType(
        text: 'notes',
        icon: CustomIcons.notes,
        iconColor: AppTheme.yellowColor,
      )
    ];
  }

  _getSavedPlaces() {
    repository.getSavedPlaces().then((getPlacesResponse) {
      if (getPlacesResponse.flag == SuccessFlags.getSavedPlaces.successCode) {
        if (getPlacesResponse.addresses?.isNotEmpty ?? false) {
          // filter saved places which are confirmed and has type
          savedPlaces = getPlacesResponse.addresses
              ?.where((address) =>
                  address.isConfirmed == 1 &&
                  (address.type?.isNotEmpty ?? false))
              .toList();

          recentLocations = getPlacesResponse.addresses
              ?.where((element) => element.type == null)
              .toList();

          _storage.write('savedPlacesCount', savedPlaces.length);
        }
      } else {
        toast('error',
            getPlacesResponse.error ?? getPlacesResponse.message ?? '');
      }
    }, onError: (error) {
      print('Fetch savedplaces error:  $error');
    });
  }

  onPickLocationFromSearch(Suggestion placeSuggetion) {
    // find place with place Id
    if (placeSuggetion.placeId.isNotEmpty) {
      repository
          .getPlaceDetailFromId(placeSuggetion.placeId, sessionToken)
          .then((place) {
        // use the suggestion description for place name, instead of the one
        // returned using the placeId
        place.placeName = placeSuggetion.description;
        if (focusedSearchLocation == LocationType.pickUp) {
          pickupLocation = place;
          pickUpLocationSearch = place.placeName;
          pickUpSearchController.text = place.placeName ?? '';
        } else {
          dropOffLocation = place;
          dropOffLocationSearch = place.placeName;
          dropOffSearchController.text = place.placeName ?? '';

          locationSuggestions.clear();
          if (!(tripStep == TripStep.addPlace ||
              tripStep == TripStep.confirmPlace)) {
            onLocationPicked();
          }
        }

        _locationSuggestions.clear();
      }, onError: (error) => log('Place detail error: $error'));
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

      if (focusedSearchLocation == LocationType.pickUp) {
        pickUpLocationSearch = place.placeName ?? '';
        pickUpSearchController.text = place.placeName ?? '';
        pickupLocation = place;
      } else {
        dropOffLocationSearch = place.placeName ?? '';
        dropOffSearchController.text = place.placeName ?? '';
        dropOffLocation = place;
      }
    }, onError: (error) {
      print(error);
      searchLoading = false;
    });
  }

  onSavedLocationPicked(Address savedAddress) {
    dropOffLocation = Place(
        placeName: savedAddress.addressName,
        location: LatLng(double.parse(savedAddress.latitude ?? ''),
            double.parse(savedAddress.longitude ?? '')));
    onLocationPicked();
  }

  confirmPickedLocation() {
    if (dropOffLocation == null) {
      Get.snackbar('error', 'destination_error');
    } else {
      onLocationPicked();
    }
  }

  onLocationPicked() {
    // get vehicle Fare estimations
    _findDrivers(destination: dropOffLocation!.location);
    Get.back();
    tripStep = TripStep.pickVehicle;

    // set the polylines

    final origin =
        PointLatLng(currentLocation.latitude, currentLocation.longitude);
    final destination = PointLatLng(dropOffLocation!.location!.latitude,
        dropOffLocation!.location!.longitude);

    // set origin and destination markers
    _setMapPins(currentLocation, dropOffLocation!.location!);

    // Get & set the polyLines
    repository.getRoutePolylines(origin, destination).then(
        (polylineCoordinates) {
      // get vehicles fare calculation
      _findDrivers(
          destination: dropOffLocation!.location,
          routeDistance: getRouteDistance(polylineCoordinates));

      Polyline polyline = Polyline(
          polylineId: const PolylineId("ride_polyline"),
          color: AppTheme.primaryColor,
          width: 3,
          points: polylineCoordinates);

      ridePolyline = polyline;
      _polyLines.clear();
      _polyLines.add(polyline);

      // animate camera to mid point between origin and destination
      LatLng midPoint = LatLng((origin.latitude + destination.latitude) / 2,
          (origin.longitude + destination.longitude) / 2);
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(CameraPosition(
          target: midPoint,
          zoom: 13,
        )),
      );
    }, onError: (error) => log('Poly line error: $error'));
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
    // cancell ride based on current ride step
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

  _addDriversMarker() {
    // final Uint8List? currentLocationIcon =
    //     await getBytesFromAsset('assets/icons/current_location_sm.png', 50);

    // remove if previous driver marker
    _markers
        .removeWhere((marker) => marker.markerId.value == 'available_drivers');
    markers.clear();
    // add driver markers
    for (Driver driver in drivers) {
      if (driver.latitude != null && driver.longitude != null) {
        _markers.add(
          Marker(
            markerId: const MarkerId('available_drivers'),
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
    if (_isRideInputValid()) {
      Map<String, dynamic> ridePayload = {
        'latitude': '${pickupLocation?.location?.latitude}',
        'longitude': '${pickupLocation?.location?.longitude}',
        'current_latitude': '${pickupLocation?.location?.latitude}',
        'current_longitude': '${pickupLocation?.location?.longitude}',
        'op_drop_latitude': '${dropOffLocation?.location?.latitude}',
        'op_drop_longitude': '${dropOffLocation?.location?.longitude}',
        'duplicate_flag': '0',
        'preferred_payment_mode': '$paymentMode',
        'vehicle_type': '${selectedVehicle.vehicleType}',
        'region_id': '${selectedVehicle.regionId}',
        'reverse_bid': '0',
        'driver_fare_factor': '1.0',
        'location_accuracy': '24.9',
        'customer_fare_factor': '1.0',
        'pickup_location_address': '${pickupLocation?.placeName}',
        'drop_location_address': '${dropOffLocation?.placeName}',
        'coupon_to_apply': '-1',
        'is_bluetooth_tracker': '0',
      };

      log('book ride request: $ridePayload');

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

  scheduleRide() {
    // check if destination and vehicle is picked first
    if (_isRideInputValid() && scheduleDate != null && scheduleTime != null) {
      Map<String, dynamic> scheduleRidePayload = {
        'latitude': '${pickupLocation?.location?.latitude}',
        'longitude': '${pickupLocation?.location?.longitude}',
        'op_drop_latitude': '${dropOffLocation?.location?.latitude}',
        'op_drop_longitude': '${dropOffLocation?.location?.longitude}',
        'preferred_payment_mode': '$paymentMode',
        'vehicle_type': '${selectedVehicle.vehicleType}',
        'region_id': '${selectedVehicle.regionId}',
        'pickup_time':
            '${DateFormat('yyyy-MM-dd').format(scheduleDate!)} ${scheduleTime!.hour}:${scheduleTime!.minute}:00',
        "ride_type": rideType,
        'driver_fare_factor': '1.0',
        'location_accuracy': '24.9',
        'customer_fare_factor': '1.0',
        'pickup_location_address': '${pickupLocation?.placeName}',
        'drop_location_address': '${dropOffLocation?.placeName}'
      };

      status(Status.loading);
      repository.scheduleRide(scheduleRidePayload).then((scheduleRideResponse) {
        if (scheduleRideResponse.flag ==
            SuccessFlags.basicSuccess.successCode) {
          status(Status.success);
          Get.snackbar('succes'.tr, 'schedule_ride_success'.tr);
          // show schedule Ride detail
          tripStep = TripStep.scheduleDetail;
        } else {
          status(Status.error);
          toast(
              'error',
              scheduleRideResponse.error ??
                  scheduleRideResponse.log ??
                  scheduleRideResponse.message ??
                  '');
        }
      }, onError: (error) {
        status(Status.error);
      });
    }
  }

  ScheduledRide? getCurrentScheduledRide() {
    if (scheduleDate != null && scheduleTime != null) {
      return ScheduledRide(
        latitude: pickupLocation?.location?.latitude,
        longitude: pickupLocation?.location?.longitude,
        opDropLatitude: dropOffLocation?.location?.latitude,
        opDropLongitude: dropOffLocation?.location?.longitude,
        pickupTime: DateTime(scheduleDate!.year, scheduleDate!.month,
            scheduleDate!.day, scheduleTime!.hour, scheduleTime!.minute),
        pickupLocationAddress: pickupLocation?.placeName,
        dropLocationAddress: dropOffLocation?.placeName,
      );
    } else {
      return null;
    }
  }

  bool _isRideInputValid() {
    bool isValid = true;
    if (pickupLocation == null) {
      Get.snackbar('error', 'pickup_location_error');
      isValid = false;
    } else if (dropOffLocation == null) {
      Get.snackbar('error', 'destination_error');
      isValid = false;
    } else if (selectedVehicle.regionId == null) {
      Get.snackbar('error'.tr, 'vehicle_select_error'.tr);
      isValid = false;
    }

    return isValid;
  }

  submitFeedback() {
    final Map<String, dynamic> rateDriverPayload = {
      'given_rating': '$driverRating',
      'engagement_id': '$engagementId',
      'driver_id': '${driver?.driverId}',
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

  addFavouriteDriver() {
    // add driver in to favourites
    if (driver?.driverId != null && engagementId != null) {
      final Map<String, dynamic> favouriteDriverPayload = {
        'driver_id': '${driver?.driverId}',
        'engagement_id': '$engagementId',
        'action_type': '1',
        'integrated': '1',
      };

      status(Status.loading);
      repository.addFavouriteDriver(favouriteDriverPayload).then(
          (basicResponse) {
        if (basicResponse.flag == SuccessFlags.basicSuccess.successCode) {
          status(Status.success);
          Get.snackbar('succes'.tr, 'add_favourite_driver_success'.tr);
        } else {
          print(basicResponse.error ?? '');
          status(Status.error);
          toast(
              'error',
              basicResponse.error ??
                  basicResponse.log ??
                  basicResponse.message ??
                  '');
        }
      }, onError: (error) {
        status(Status.error);
        print('Add favourite driver error: $error');
      });
    }
  }

  resetValues() {
    // Reset all values to there initial values
    sessionId = null;
    engagementId = null;
    driver = null;
    driverVehicle = Vehicle();

    feedbackComment = '';
    driverRating = 0;
    tripStep = TripStep.whereTo;

    driverOnRouteCounter = 0;
    rideCounter = 0;

    dropOffLocation = null;
    _polyLines.clear();
    _markers.clear();

    scheduleDate = null;
    scheduleTime = null;
    updateFrom = 'home';

    selectedSavedPlace = Address();

    mapController.animateCamera(
      CameraUpdate.newCameraPosition(CameraPosition(
        target: currentLocation,
        zoom: kCameraZoom,
      )),
    );
  }

  updateSavedPlaces({
    String? addressLabel,
    UpdateMode updateMode = UpdateMode.add,
    Address? address,
  }) {
    Map<String, dynamic> addressPayload = {
      'is_confirmed': '1',
      'google_place_id': '',
      'keep_duplicate': '0',
    };

    // check if place is picked
    if ((updateMode == UpdateMode.add || updateMode == UpdateMode.edit) &&
        dropOffLocation == null) {
      Get.snackbar('error', 'place_not_picked_error');
      return;
    }

    switch (updateMode) {
      case UpdateMode.add:
        addressPayload.addAll({
          'address': dropOffLocation!.placeName,
          'latitude': dropOffLocation!.location?.latitude,
          'longitude': dropOffLocation!.location?.longitude,
          'type': addressLabel,
        });
        break;
      case UpdateMode.edit:
        if (selectedSavedPlace.id != null) {
          addressPayload.addAll({
            'address_id': selectedSavedPlace.id,
            'address': dropOffLocation!.placeName,
            'latitude': dropOffLocation!.location?.latitude,
            'longitude': dropOffLocation!.location?.longitude,
            'type': addressLabel,
          });
        }
        break;
      case UpdateMode.delete:
        if (address != null) {
          addressPayload.addAll({
            'address': address.addressName,
            'latitude': address.latitude,
            'longitude': address.longitude,
            'type': address.type,
            'address_id': address.id,
            'delete_flag': '1',
          });
        } else {
          return;
        }
        break;
      default:
    }

    status(Status.loading);
    repository.updateSavedPlaces(addressPayload).then((addressesResponse) {
      if (addressesResponse.flag == SuccessFlags.addNewPlace.successCode) {
        status(Status.success);
        if (addressesResponse.addresses?.isNotEmpty ?? false) {
          // filter saved places which are confirmed and has type

          savedPlaces = addressesResponse.addresses
              ?.where((address) =>
                  address.isConfirmed == 1 &&
                  (address.type?.isNotEmpty ?? false))
              .toList();
          _storage.write('savedPlacesCount', savedPlaces.length);
          if (updateFrom == 'profile' && updateMode != UpdateMode.delete) {
            Get.back();
          }
          String successMessage = 'add_place_success';
          switch (updateMode) {
            case UpdateMode.delete:
              successMessage = 'delete_place_success';
              break;
            case UpdateMode.edit:
              successMessage = 'edit_place_success';
              break;
            default:
          }
          Get.snackbar('success', successMessage.tr);
          resetValues();
        }
      } else {
        status(Status.error);
        toast('error',
            addressesResponse.error ?? addressesResponse.message ?? '');
      }
    }, onError: (error) {
      status(Status.error);
      print('Update saved place error:  $error');
    });
  }

  onEditSavedPlace(Address savedPlace) {
    selectedSavedPlace = savedPlace;
    if ((savedPlace.latitude?.isNotEmpty ?? false) &&
        (savedPlace.longitude?.isNotEmpty ?? false)) {
      dropOffLocation = Place(
          placeName: savedPlace.addressName,
          location: LatLng(double.parse(savedPlace.latitude!),
              double.parse(savedPlace.longitude!)));
      dropOffLocationSearch = savedPlace.addressName;
      dropOffSearchController.text = savedPlace.addressName ?? '';
    }
    tripStep = TripStep.addPlace;
    updateFrom = 'profile';
    Get.toNamed(Routes.home);
  }

  updateDriverLocation() async {
    // update drivers marker while arriving towards the user
    // this is called every 10 sec to update drivers' location
    // untill trip starts
    _getDriverLocation();
    Timer.periodic(const Duration(seconds: 10), (timer) {
      if (tripStep != TripStep.driverDetail) {
        timer.cancel();
      }
      _getDriverLocation();
    });
  }

  _getDriverLocation() {
    if (driver?.driverId != null) {
      // get current driver location
      repository
          .getCurrentDriverLocation('${driver?.driverId}')
          .then((driverLocationResponse) {
        if (driverLocationResponse.flag ==
            SuccessFlags.driverLocation.successCode) {
          log('driver location response: $driverLocationResponse');
          if (driverLocationResponse.eta != null) {
            _startDriverOnRouteTimer(driverLocationResponse.eta!);
          }
          // update driver marker.
          if (driverLocationResponse.latitude != null &&
              driverLocationResponse.longitude != null) {
            _updateDriverMarker(driverLocationResponse.latitude!,
                driverLocationResponse.longitude!);
          }
        }
      });
    }
  }

  _updateDriverMarker(double latitude, double longitude) {
    _markers.removeWhere((m) => m.markerId.value == 'driver_current_location');
    _markers.add(Marker(
        markerId: const MarkerId('driver_current_location'),
        position: LatLng(latitude, longitude),
        icon: yellowCarIcon));
  }

  liveTrackTrip() {
    positionStream = Geolocator.getPositionStream(
            intervalDuration: const Duration(seconds: 5))
        .listen((Position? position) {
      if (tripStep == TripStep.tripStarted && position != null) {
        _updateDriverMarker(position.latitude, position.longitude);
      }
    });
  }

  updateEmergencyStatus() async {
    // enable and disable emergency(status)
    final Map<String, dynamic> emergencyPayload = {
      'engagement_id': '$engagementId',
    };

    if (emergencyStatus == EmergencyStatus.disable) {
      // get current users location
      Position location = await getCurrentLocation();
      emergencyPayload.addAll({
        'driver_id': '${driver?.driverId}',
        "alert_type": "",
        "latitude": location.latitude,
        "longitude": location.longitude,
      });
    }

    status(Status.loading);
    repository.updateEmergency(emergencyPayload, emergencyStatus).then(
        (basicResponse) {
      if (basicResponse.flag == SuccessFlags.basicSuccess.successCode) {
        status(Status.success);
        Get.snackbar(
            'succes'.tr,
            emergencyStatus == EmergencyStatus.disable
                ? 'emrgency_enabled_success'.tr
                : 'emergency_disabled_success'.tr);
        emergencyStatus = emergencyStatus == EmergencyStatus.enable
            ? EmergencyStatus.disable
            : EmergencyStatus.enable;
      } else {
        print(basicResponse.error ?? '');
        status(Status.error);
        toast(
            'error',
            basicResponse.error ??
                basicResponse.log ??
                basicResponse.message ??
                '');
      }
    }, onError: (error) {
      status(Status.error);
      print('Update emergency error: $error');
    });
  }

  onLogout() {
    // Todo: check if there is pending operations
    if (tripStep == TripStep.whereTo) {
      status(Status.loading);
      authController.logout().then((value) {
        status(Status.success);
      }, onError: (error) => status(Status.error));
    } else {
      Get.snackbar('warning'.tr, 'check_pending_operations'.tr);
    }
  }

  Future<bool> onHomeBack() async {
    switch (tripStep) {
      case TripStep.pickVehicle:
      case TripStep.confirmPlace:
        Get.toNamed(Routes.pickLocation);
        resetValues();
        break;
      default:
        Get.back();
    }

    return false;
  }

  @override
  void onClose() {
    positionStream?.cancel();
    super.onClose();
  }

  onHelloCashSelected(){
    if(driver?.driverId != null){
      PaymentController paymentController = Get.find();
      paymentController.amount = '${rideDetail?.toPay?.round()}';
      paymentController.driverId = '${driver?.driverId}';
      Get.toNamed(Routes.hellocash);
    }
  }

  onMpesaSelected() async{
    if(driver?.driverId != null){
      PaymentController paymentController = Get.find();
      status(Status.loading);
      paymentController.payWithMpesa('$engagementId');

      await Future<dynamic>.delayed(const Duration(seconds: 40));
      status(Status.error);

    }
  }
}
