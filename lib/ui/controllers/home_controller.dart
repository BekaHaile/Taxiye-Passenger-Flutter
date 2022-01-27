import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
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
import 'package:taxiye_passenger/ui/pages/common/confirm_dialog.dart';
import 'package:taxiye_passenger/ui/pages/home/components/vehicle_detail.dart';
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
  final IFileRepository fileRepository;
  HomeController({required this.repository, required this.fileRepository});

  final status = Status.success.obs;
  final fareLoading = Status.success.obs;
  final AuthController authController = Get.find();
  ProfileController? profileController;

  final _selectedService = HomeServiceIndex.ride.obs;
  get selectedService => _selectedService.value;
  set selectedService(value) => _selectedService.value = value;

  List<Vehicle>? allVehicles;

  // final _allVehicles = List<Vehicle>.empty(growable: true).obs;
  // get allVehicles => _allVehicles.value;
  // set allVehicles(value) => _allVehicles.value = value;

  final _vehicles = List<Vehicle>.empty(growable: true).obs;
  get vehicles => _vehicles.value;
  set vehicles(value) => _vehicles.assignAll(value);

  final _deliveryVehicles = List<Vehicle>.empty(growable: true).obs;
  get deliveryVehicles => _deliveryVehicles.value;
  set deliveryVehicles(value) => _deliveryVehicles.assignAll(value);

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

  final _currency = 'ETB'.obs;
  get currency => _currency.value;
  set currency(value) => _currency.value = value;

  final _userCorporates = List<Corporate>.empty(growable: true).obs;
  get userCorporates => _userCorporates.value;
  set userCorporates(value) => _userCorporates.assignAll(value);

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

  final _driver = Driver().obs;
  get driver => _driver.value;
  set driver(value) => _driver.value = value;

  final _driverVehicle = Vehicle().obs;
  get driverVehicle => _driverVehicle.value;
  set driverVehicle(value) => _driverVehicle.value = value;

  final pickUpSearchController = TextEditingController();
  final dropOffSearchController = TextEditingController();

  final _searchLoading = false.obs;
  get searchLoading => _searchLoading.value;
  set searchLoading(value) => _searchLoading.value = value;

  final _rideType = 0.obs;
  get rideType => _rideType.value;
  set rideType(value) => _rideType.value = value;

  // delivery
  final _deliveryImages = List<File>.empty(growable: true).obs;
  get deliveryImages => _deliveryImages.value;
  set deliveryImages(value) => _deliveryImages.assignAll(value);

  List<String> rideCancellReasons = [];
  String rideNote = '';

  final _cancelOrderReasons = List<String>.empty(growable: true).obs;
  get cancelOrderReasons => _cancelOrderReasons.value;
  set cancelOrderReasons(value) => _cancelOrderReasons.value = value;

  final _paymentMode = 0.obs;
  get paymentMode => _paymentMode.value;
  set paymentMode(value) => _paymentMode.value = value;

  final _selectedCorporate = Corporate().obs;
  get selectedCorporate => _selectedCorporate.value;
  set selectedCorporate(value) => _selectedCorporate.value = value;

  final _selectedOutstationType = OutStationType.oneWay.obs;
  get selectedOutstationType => _selectedOutstationType.value;
  set selectedOutstationType(value) => _selectedOutstationType.value = value;

  final _selectedPackage = FareStructure().obs;
  get selectedPackage => _selectedPackage.value;
  set selectedPackage(value) => _selectedPackage.value = value;

  int? orderId;
  int? deliveryId;
  String orderText = '';
  String? deliveryRecieverPhone;
  String? deliveryCountryCode;
  Polyline? ridePolyline;

  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor destinationIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor yellowCarIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor whiteCarIcon = BitmapDescriptor.defaultMarker;
  late GoogleMapController mapController;

  // Location search
  LatLng currentLocation = kInitialPosition;
  Placemark? currentLocationPlace;
  String callCenterNumber = kTaxiyePhoneNumber;

  String sessionToken = const Uuid().v4();
  // trip started variables
  int? sessionId;
  String? engagementId;
  double routeDistance = 0.0;
  double routeDuration = 0.0;

  RideDetail? rideDetail;
  Place? pickupLocation;
  Place? dropOffLocation;
  Timer? debounce;

  String feedbackComment = '';
  double driverRating = 0;
  VehicleFare? originalVehicleFare;

  final GetStorage _storage = GetStorage();
  late SharedPreferences prefs;
  StreamSubscription<Position>? positionStream;

  // For ride schedule
  DateTime? scheduleDate;
  TimeOfDay? scheduleTime;
  String updateFrom = 'home';
  EmergencyStatus emergencyStatus = EmergencyStatus.disable;

  Coupon? selectedCoupon;
  Promotion? selectedPromotion;
  Country country = kCountries.first;

  List<FareStructure>? fareStructures;
  DateTime? currentBackPressTime;

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.
    super.onInit();

    scheduleDate = DateTime.now();
    scheduleTime = TimeOfDay.now();
    prefs = await SharedPreferences.getInstance();

    currentLocation = LatLng(authController.currentLocation.latitude,
        authController.currentLocation.longitude);
    rideCancellReasons = authController.rideCancellationReasons;
    callCenterNumber = authController.callCenterNumber;
    country = authController.user.countryCode != null
        ? kCountries.firstWhere(
            (element) => element.code == authController.user.countryCode,
            orElse: () => kCountries.first)
        : kCountries.first;

    getPlaceNameFromCordinate(currentLocation).then((value) {
      Place place = Place(
          placeName:
              '${value.name ?? ''}, ${value.subLocality ?? ''}, ${value.locality ?? ''}',
          location: currentLocation);
      pickUpLocationSearch = place.placeName ?? '';
      pickupLocation = place;
    });

    // register for notification message listner
    repository.registerFCM(onMessageRecieved: onMessageRescieved);

    _findDrivers();
    _setPinIcons();
    _getUserCorporates();
    getPaymentTypes();
    _getSavedPlaces();
    _updateHomePayments();
  }

  onAppStateChange(AppLifecycleState appState) async {
    // print('current app state: $appState');
    // check if ride state has been changed while app is in background
    if (appState == AppLifecycleState.resumed) {
      // use sharedPreference for the ability of refreshing values changed in
      // background.
      mapController.setMapStyle("[]");
      await prefs.reload();
      final storedNotification = prefs.getString('rideNotification');

      // check for notification message
      if (storedNotification?.isNotEmpty ?? false) {
        NotificationMessage notificationMessage =
            NotificationMessage.fromJson(jsonDecode(storedNotification!));
        onMessageRescieved(notificationMessage);

        // check if ride started while app is on background
        if (notificationMessage.flag == 3) {
          final rideStartedTime = prefs.getString('rideStartedTime');
          if (rideStartedTime?.isNotEmpty ?? false) {
            rideCounter = DateTime.now()
                .difference(DateTime.parse(rideStartedTime!))
                .inSeconds;
          }
        }

        final storedRideAccepted = prefs.getString('rideAcceptedNotification');
        if (storedRideAccepted?.isNotEmpty ?? false) {
          NotificationMessage rideAcceptedMessage =
              NotificationMessage.fromJson(jsonDecode(storedRideAccepted!));

          _setRideDriverInfo(rideAcceptedMessage);
          // engagementId = int.tryParse(rideAcceptedMessage.engagementId ?? '0');
          engagementId = notificationMessage.engagementId;
          prefs.setString('rideAcceptedNotification', '');
        }

        // clear rideNotification from shared preference
        prefs.setString('rideNotification', '');
        prefs.setString('rideStartedTime', '');
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

  onServiceSelected(HomeServiceIndex service) {
    selectedService = service;
    getPaymentTypes();

    // filter vehicles
    if (selectedService == HomeServiceIndex.outStation) {
      filterVehicles(7);
    } else {
      filterVehicles(0);
    }
  }

  _findDrivers({LatLng? destination, double? routeDistance}) async {
    Map<String, dynamic> findDriversPayload = {
      'latitude':
          '${pickupLocation?.location?.latitude ?? currentLocation.latitude}',
      'longitude':
          '${pickupLocation?.location?.longitude ?? currentLocation.longitude}',
    };

    if (destination != null) {
      findDriversPayload.addAll({
        "op_drop_latitude": destination.latitude,
        "op_drop_longitude": destination.longitude,
        "ride_distance": routeDistance
      });
    }

    if (selectedCoupon != null) {
      findDriversPayload['coupon_to_apply'] = '${selectedCoupon?.accountId}';
    }
    if (selectedPromotion != null) {
      findDriversPayload['promo_to_apply'] = '${selectedPromotion?.promoId}';
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
          currency = findDriverResponse.currency;
          fareStructures = findDriverResponse.fareStructure;
          _setVehiclesFareStructures(findDriverResponse.fareStructure);

          // filter vehicles based on selected service and ride type
          switch (selectedService) {
            case HomeServiceIndex.outStation:
              filterVehicles(7);
              break;
            default:
              filterVehicles(0);
          }

          _setPromoTags();
        }
      } else {
        print(findDriverResponse.error);
        toast('error', findDriverResponse.error ?? '');
      }
    }, onError: (error) => print('Find Drivers error: $error'));
  }

  _setVehiclesFareStructures(List<FareStructure>? fareStructures) {
    if ((allVehicles?.isNotEmpty ?? false) &&
        (fareStructures?.isNotEmpty ?? false)) {
      // set fare structure for each vehicle
      for (Vehicle vehicle in allVehicles!) {
        if (vehicle.regionFare != null || vehicle.rideType == 7) {
          allVehicles![allVehicles!.indexOf(vehicle)] = vehicle.copyWith(
              fareStructure: fareStructures!.firstWhere(
                  (element) => element.vehicleType == vehicle.vehicleType));
        }
      }
    }
  }

  _startDriverOnRouteTimer() {
    const oneSec = Duration(seconds: 1);
    Timer.periodic(
      oneSec,
      (Timer timer) {
        if (tripStep == TripStep.driverDetail) {
          if (driverOnRouteCounter > 0) {
            driverOnRouteCounter--;
          }
        } else {
          timer.cancel();
        }
      },
    );
  }

  _startRideTimer() {
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (tripStep == TripStep.tripStarted) {
        rideCounter++;
      } else {
        timer.cancel();
        rideCounter = 0;
      }
    });
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
          fare: notificationMessage.fare != null
              ? double.parse(notificationMessage.fare ?? '0')
              : null,
          discount: double.parse(notificationMessage.discount ?? '0'),
          toPay: notificationMessage.toPay != null
              ? double.parse(notificationMessage.toPay ?? '0')
              : null,
          distanceTraveled:
              double.parse(notificationMessage.distanceTravelled ?? '0'),
          rideTime: int.parse(notificationMessage.rideTime ?? '0'),
          distanceUnit: notificationMessage.distanceUnit,
          paidUsingWallet:
              double.parse(notificationMessage.paidUsingWallet ?? '0'),
          toPayText: notificationMessage.message,
        );
        tripStep = TripStep.tripDetail;
        break;
      case SuccessFlags.driverCancelRide:
        Get.dialog(ConfirmDialog(
          title: 'ride_cancelled'.tr,
          content: 'driver_canceled_ride'.tr,
          showCancel: false,
          actionCallback: () => Get.back(),
        ));
        resetValues();
        break;
      case SuccessFlags.driversBusy:
        resetValues();
        break;
      case SuccessFlags.delivery:
        // change steps based on order status
        _getOrderHistory();
        break;
      case SuccessFlags.payWithMpesa:
        if (tripStep == TripStep.tripDetail) {
          tripStep = TripStep.tripFeedback;
          Get.snackbar('error'.tr, 'mpesa_pay_fail'.tr);
        }
        break;
      case SuccessFlags.payWithMpesaFailed:
        if (tripStep == TripStep.tripDetail) {
          status(Status.error);
          Get.snackbar('success'.tr, 'mpesa_pay_success'.tr);
        }
        break;
      default:
    }
  }

  _updateHomePayments() {
    PaymentController paymentController = Get.find();
  }

  _onRideAccepted(NotificationMessage notificationMessage) {
    // Ride accepted with driver payload
    _setRideDriverInfo(notificationMessage);
    // set session and engagement ids
    sessionId = notificationMessage.sessionId;
    //engagementId = int.tryParse(notificationMessage.engagementId ?? '0');
    engagementId = notificationMessage.engagementId;

    // change ride step to waiting driver
    tripStep = TripStep.driverDetail;

    // set driver route
    // set origin to drivers current location
    final origin = PointLatLng(
        notificationMessage.currentLocationLatitude ??
            pickupLocation?.location?.latitude ??
            currentLocation.latitude,
        notificationMessage.currentLocationLongitude ??
            pickupLocation?.location?.longitude ??
            currentLocation.longitude);
    final destination = PointLatLng(
        pickupLocation?.location?.latitude ?? currentLocation.latitude,
        pickupLocation?.location?.longitude ?? currentLocation.longitude);
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

    _updateDriverLocation();
    _startDriverOnRouteTimer();
  }

  _setRideDriverInfo(NotificationMessage notificationMessage) {
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
  }

  _onRideStarted() {
    tripStep = TripStep.tripStarted;
    if (pickupLocation != null && dropOffLocation != null) {
      _setMapPins(pickupLocation?.location ?? currentLocation,
          dropOffLocation!.location!);
      if (ridePolyline != null) {
        _polyLines.clear();
        _polyLines.add(ridePolyline!);

        final origin = PointLatLng(
            pickupLocation?.location?.latitude ?? currentLocation.latitude,
            pickupLocation?.location?.longitude ?? currentLocation.longitude);
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
    }

    _startRideTimer();
    liveTrackTrip();
  }

  onVehicleSelected(Vehicle vehicle) {
    // var fareS = controller.fareStructures?.firstWhere(
    //     (element) =>
    //         element.vehicleType ==
    //         selectedVehice.vehicleType);
    // log('selcted fare structures: $fareS');
    // log('vehicle type: ${selectedVehice.vehicleType}');
    // log('vehicle region fare: ${selectedVehice.regionFare}');

    // show vehicle detail with fare estimation
    if (selectedVehicle == vehicle) {
      if (rideType == 7 &&
          selectedVehicle.regionId == selectedPackage.regionId) {
        vehicle = vehicle.copyWith(fareStructure: selectedPackage);
      }

      Get.bottomSheet(
          VehicleDetail(
            vehicle: vehicle,
            currency: currency,
            serviceType: selectedService,
          ),
          isScrollControlled: true);
    } else {
      selectedVehicle = vehicle;
      if (rideType == 7) {
        selectedPackage = FareStructure();
        // replace the previously selected vehicle with it's orignal fare(without package)
        if (originalVehicleFare != null) {
          int vehicleIndex = _vehicles.indexWhere(
              (element) => element.regionId == originalVehicleFare?.regionId);
          if (vehicleIndex != -1) {
            _vehicles[vehicleIndex] = _vehicles[vehicleIndex]
                .copyWith(regionFare: originalVehicleFare);
          }
        }
      }
    }
  }

  onPackageSelected(FareStructure package) {
    if (selectedPackage != package) {
      selectedPackage = package;
      // log('packgeId ${selectedPackage.packageId}');
      getVehiclesFareEstimates(packageId: selectedPackage.packageId);
    }
  }

  filterVehicles(int rideType) {
    // filter vehicles based on rideType
    // 0 - normal
    // 2 - shared
    // 1 - corporate
    // 7 - outstation
    this.rideType = rideType;
    if (allVehicles?.isNotEmpty ?? false) {
      if (rideType == 1) {
        // case for corporate
        selectedCorporate = selectedCorporate ?? userCorporates[0];
        List<String>? coporateRestrictedVehicles =
            selectedCorporate?.restrictedSubRegions?.split(',');
        if (coporateRestrictedVehicles?.isNotEmpty ?? false) {
          // filter from Normal vehicles, instead of all vehicles
          final List<Vehicle> temVehicles = [];
          temVehicles.assignAll(vehicles);
          final corporateVehicles = temVehicles.where((vehicle) =>
              !coporateRestrictedVehicles!.contains('${vehicle.regionId}'));
          vehicles = corporateVehicles;
        }
      } else {
        vehicles =
            allVehicles?.where((vehicle) => vehicle.rideType == rideType);

        // get estimated fares for outstation cars (this required since the backend is not
        // returnig region fares for outstation cars unlike the others on find drivers)
        if (rideType == 7) {
          getVehiclesFareEstimates();
        }

        // set the first vehicle as the selected one.
        if (vehicles.isNotEmpty) {
          selectedVehicle = vehicles[0];
        }
      }
    }
  }

  getVehiclesFareEstimates({int? packageId}) {
    if (dropOffLocation != null) {
      final Map<String, dynamic> getFareEstimatePayload = {
        'is_pooled': '0',
        'ride_type': rideType,
        'start_latitude': '${pickupLocation?.location?.latitude}',
        'start_longitude': '${pickupLocation?.location?.longitude}',
        'drop_latitude': '${dropOffLocation?.location?.latitude}',
        'drop_longitude': '${dropOffLocation?.location?.longitude}',
        'is_round_trip':
            selectedOutstationType == OutStationType.roundTrip ? '1' : '0',
      };

      repository
          .getRouteDistanceInfo(
              pickupLocation!.location!, dropOffLocation!.location!)
          .then((routeInfo) {
        // change distance in km
        routeDistance = (routeInfo.distance ?? 0) / 1000;
        // change duration into seconds
        routeDuration = (routeInfo.duration ?? 0) / 60;

        getFareEstimatePayload.addAll({
          'ride_distance': routeDistance,
          'ride_time': routeDuration,
        });

        // log('get vehicle estimation payload here: $getFareEstimatePayload');

        // If package id is provided get fare estiomatio for the selected car with
        // the package id else get fare estimate for all outstation cars
        if (packageId != null && selectedVehicle.regionId != null) {
          getFareEstimatePayload.addAll({
            'region_id': '${selectedVehicle.regionId}',
            'package_id': '$packageId',
            'vehicle_type': '${selectedVehicle.vehicleType}',
          });
          fareRequest(selectedVehicle, getFareEstimatePayload,
              setOriginalFare: true);
        } else {
          for (Vehicle vehicle in vehicles) {
            getFareEstimatePayload.addAll({
              'region_id': '${vehicle.regionId}',
              'vehicle_type': '${vehicle.vehicleType}',
            });
            fareRequest(vehicle, getFareEstimatePayload);
          }
        }
      }, onError: (e) => print('get route distance info error $e'));
    }
  }

  fareRequest(Vehicle vehicle, Map<String, dynamic> getFareEstimatePayload,
      {bool setOriginalFare = false}) {
    //log('fare request: $getFareEstimatePayload');
    fareLoading(Status.loading);
    repository.getFareEstimate(getFareEstimatePayload).then((fareResponse) {
      if (fareResponse.flag == SuccessFlags.basicSuccess.successCode) {
        fareLoading(Status.success);
        int vehicleIndex = _vehicles
            .indexWhere((element) => element.regionId == vehicle.regionId);
        if (vehicleIndex != -1) {
          _vehicles[vehicleIndex] = vehicle.copyWith(regionFare: fareResponse);
          if (selectedVehicle.regionId == vehicle.regionId) {
            selectedVehicle = _vehicles[vehicleIndex];
          }
          if (setOriginalFare) {
            originalVehicleFare =
                vehicle.regionFare?.copyWith(regionId: vehicle.regionId);
          }
        }
      } else {
        fareLoading(Status.error);
      }
    }, onError: (error) {
      print('Get Fare estimate error:  $error');
      fareLoading(Status.error);
    });
  }

  _setPromoTags() {
    // if promotion and coupon is selected, tag those cars where the selected
    // promo is available.
    if (selectedPromotion?.allowedVehicles?.isNotEmpty ?? false) {
      for (Vehicle vehicle in vehicles) {
        _vehicles[vehicles.indexOf(vehicle)] = vehicle.copyWith(
            hasPromoCoupon:
                selectedPromotion?.allowedVehicles?.contains(vehicle.regionId));
      }
    } else if (selectedCoupon?.allowedVehicles?.isNotEmpty ?? false) {
      for (Vehicle vehicle in vehicles) {
        _vehicles[vehicles.indexOf(vehicle)] = vehicle.copyWith(
            hasPromoCoupon:
                selectedCoupon?.allowedVehicles?.contains(vehicle.regionId));
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

    if (selectedService == HomeServiceIndex.delivery) {
      Get.toNamed(Routes.deliveryDetail);
    } else {
      Get.toNamed(Routes.pickLocation);
    }
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
            .getPlaceSugestions(input, Get.locale?.languageCode ?? 'en',
                country.isoCode, sessionToken)
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
          selectedCorporate = userCorporates.first;
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

  getPaymentTypes() {
    paymentTypes = [
      PaymentType(
        paymentMode: 0,
        text: 'cash'.tr,
        icon: CustomIcons.payment,
        iconColor: AppTheme.greenColor,
      ),
      PaymentType(
        paymentMode: 1,
        text: 'offers'.tr,
        icon: CustomIcons.offer,
        iconColor: AppTheme.primaryColor,
      ),
      const PaymentType(
        paymentMode: 2,
        text: 'notes',
        icon: CustomIcons.notes,
        iconColor: AppTheme.yellowColor,
      )
    ];

    // update supported payment types based on selected service
    switch (selectedService) {
      case HomeServiceIndex.delivery:
        _paymentTypes.removeRange(1, 3);
        break;
      default:
    }
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
          if (selectedService == HomeServiceIndex.delivery) {
            _onDeliveryLocationPicked();
          }
        } else {
          dropOffLocation = place;
          dropOffLocationSearch = place.placeName;
          dropOffSearchController.text = place.placeName ?? '';

          locationSuggestions.clear();
          if (!(tripStep == TripStep.addPlace ||
              tripStep == TripStep.confirmPlace)) {
            if (selectedService == HomeServiceIndex.delivery) {
              _onDeliveryLocationPicked();
            } else {
              onLocationPicked();
            }
          }
        }

        _locationSuggestions.clear();
      }, onError: (error) => log('Place detail error: $error'));
    }
  }

  onPickLocationFromMap(LatLng position) async {
    searchLoading = true;

    // set marker and focus onPicked location
    _markers.add(Marker(
        markerId: const MarkerId('destinationPin'),
        position: position,
        icon: BitmapDescriptor.defaultMarker));

    mapController.animateCamera(
      CameraUpdate.newCameraPosition(CameraPosition(
        target: position,
        zoom: 15,
      )),
    );

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
    if (selectedService == HomeServiceIndex.delivery) {
      _onDeliveryLocationPicked();
    } else {
      onLocationPicked();
    }
  }

  confirmPickedLocation() {
    if (dropOffLocation == null) {
      Get.snackbar('error', 'destination_error');
    } else {
      if (selectedService == HomeServiceIndex.delivery) {
        _onDeliveryLocationPicked();
      } else {
        onLocationPicked();
      }
    }
  }

  onLocationPicked() {
    // get vehicle Fare estimations
    if (selectedService == HomeServiceIndex.ride ||
        selectedService == HomeServiceIndex.outStation) {
      _findDrivers(destination: dropOffLocation!.location);
    } else if (selectedService == HomeServiceIndex.delivery) {
      Get.back();
    }

    Get.back();
    tripStep = TripStep.pickVehicle;

    // set the polylines

    final origin = PointLatLng(
        pickupLocation?.location?.latitude ?? currentLocation.latitude,
        pickupLocation?.location?.longitude ?? currentLocation.longitude);
    final destination = PointLatLng(dropOffLocation!.location!.latitude,
        dropOffLocation!.location!.longitude);

    // set origin and destination markers
    _setMapPins(pickupLocation?.location ?? currentLocation,
        dropOffLocation!.location!);

    // Get & set the polyLines
    repository.getRoutePolylines(origin, destination).then(
        (polylineCoordinates) {
      // get vehicles fare calculation
      if (selectedService == HomeServiceIndex.ride ||
          selectedService == HomeServiceIndex.outStation) {
        routeDistance = getRouteDistance(polylineCoordinates);
        _findDrivers(
            destination: dropOffLocation!.location,
            routeDistance: routeDistance);
      }

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

  onCancelRide({String? reason}) {
    // cancell ride based on current ride step
    Map<String, dynamic> cancelPayload = tripStep == TripStep.lookingDrivers
        ? {'session_id': '$sessionId'}
        : {'reasons': reason ?? ''};

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

  _onDeliveryLocationPicked() async {
    // actions/requests made when delivery pickup, drop locations picked

    if (focusedSearchLocation == LocationType.pickUp) {
      await _getDeliveryAgents();
      if (dropOffLocation != null) {
        _addDeliveryVehiclesChargeDetails();
      }
    } else {
      _addDeliveryVehiclesChargeDetails();
    }
  }

  _addDeliveryVehiclesChargeDetails() {
    // add charge details for each vehicle
    for (Vehicle vehicle in deliveryVehicles) {
      _getDeliveryDetail(vehicle);
    }

    onLocationPicked();
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
    _markers.removeWhere(
        (marker) => marker.markerId.value.contains('available_drivers'));
    markers.clear();
    // add driver markers
    for (Driver driver in drivers) {
      if (driver.latitude != null && driver.longitude != null) {
        _markers.add(
          Marker(
            markerId: MarkerId('available_drivers_${driver.driverId}'),
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
        'preferred_payment_mode': '0',
        'vehicle_type': '${selectedVehicle.vehicleType}',
        'region_id': '${selectedVehicle.regionId}',
        'reverse_bid': '0',
        'driver_fare_factor': '1.0',
        'location_accuracy': '24.9',
        'customer_fare_factor': '1.0',
        'pickup_location_address': '${pickupLocation?.placeName}',
        'drop_location_address': '${dropOffLocation?.placeName}',
        'coupon_to_apply':
            selectedCoupon != null && (selectedVehicle.hasPromoCoupon ?? false)
                ? '${selectedCoupon?.accountId}'
                : '-1',
        'promo_to_apply': selectedPromotion != null &&
                (selectedVehicle.hasPromoCoupon ?? false)
            ? '${selectedPromotion?.promoId}'
            : '-1',
        'is_bluetooth_tracker': '0',
        'customer_note': rideNote,
      };

      // check if ride type is corporate
      if (rideType == 1 && selectedCorporate.businessId != null) {
        ridePayload['is_manual'] = selectedCorporate.businessId;
      }

      if (rideType == 7 && selectedPackage.packageId != null) {
        ridePayload.addAll({
          'package_id': selectedPackage.packageId,
          'location_accuracy': '5.156'
        });
        ridePayload['package_id'] = selectedPackage.packageId;
      }

      //log('book ride request: $ridePayload');

      status(Status.loading);
      repository.requestRide(ridePayload).then((requestRideResponse) {
        if (requestRideResponse.flag == SuccessFlags.requestRide.successCode) {
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
      'engagement_id': engagementId,
      'driver_id': '${driver?.driverId}',
      'feedback': feedbackComment,
      'feedback_reasons': 'performance'
    };

    //log('payload: $rateDriverPayload');

    status(Status.loading);
    repository.rateDriver(rateDriverPayload).then((rateDriverResponse) {
      log('response here: $rateDriverPayload');
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

  submitDeliveryFeedback() {
    final Map<String, dynamic> feedbackPayload = {
      'rating': '$driverRating',
      'rating_type': '1',
      'feedback_order_id': '$orderId',
      'review_desc': feedbackComment,
      'integrated': '1'
    };

    status(Status.loading);
    repository.submitDeliveryFeedBack(feedbackPayload).then((feedbackResponse) {
      if (feedbackResponse.flag == SuccessFlags.basicSuccess.successCode) {
        status(Status.success);
        Get.snackbar('succes'.tr, 'delivery_feedback_success'.tr);
        resetValues();
      } else {
        print(feedbackResponse.error ?? '');
        status(Status.error);
        toast(
            'error',
            feedbackResponse.error ??
                feedbackResponse.log ??
                feedbackResponse.message ??
                '');
      }
    }, onError: (error) {
      status(Status.error);
      print('Delivery feedback error: $error');
    });
  }

  addFavouriteDriver() {
    // add driver in to favourites
    if (driver?.driverId != null && engagementId != null) {
      final Map<String, dynamic> favouriteDriverPayload = {
        'driver_id': '${driver?.driverId}',
        'engagement_id': engagementId,
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
    driver = Driver();
    driverVehicle = Vehicle();

    feedbackComment = '';
    driverRating = 0;
    tripStep = TripStep.whereTo;

    driverOnRouteCounter = 0;
    rideCounter = 0;
    rideType = 0;

    dropOffLocation = null;
    _polyLines.clear();
    _markers.clear();

    scheduleDate = null;
    scheduleTime = null;
    updateFrom = 'home';

    selectedSavedPlace = Address();
    selectedVehicle = Vehicle();

    orderId = null;
    deliveryId = null;
    orderText = '';
    deliveryRecieverPhone = null;
    deliveryCountryCode = null;
    deliveryImages.clear();

    paymentMode = 0;
    selectedCorporate = Corporate();
    selectedCoupon = null;
    selectedPromotion = null;

    routeDistance = 0.0;
    rideNote = '';
    originalVehicleFare = null;

    refreshCurrentLocation();
    _findDrivers();
  }

  refreshCurrentLocation() {
    getCurrentLocation().then((value) {
      currentLocation = LatLng(value.latitude, value.longitude);

      mapController.animateCamera(
        CameraUpdate.newCameraPosition(CameraPosition(
          target: currentLocation,
          zoom: kCameraZoom,
        )),
      );

      getPlaceNameFromCordinate(currentLocation).then((value) {
        Place place = Place(
            placeName:
                '${value.name ?? ''}, ${value.subLocality ?? ''}, ${value.locality ?? ''}',
            location: currentLocation);
        pickUpLocationSearch = place.placeName ?? '';
        pickupLocation = place;
      });
      _storage.write('latitude', value.latitude);
      _storage.write('longitude', value.longitude);
    });
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

  _updateDriverLocation() async {
    // update drivers marker while arriving towards the user
    // this is called every 10 sec to update drivers' location
    // untill trip starts
    _getDriverLocation();
    Timer.periodic(const Duration(seconds: 10), (timer) {
      if (tripStep == TripStep.driverDetail) {
        _getDriverLocation();
      } else {
        timer.cancel();
      }
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
          if (driverLocationResponse.eta != null) {
            // update driver waiting time
            driverOnRouteCounter = driverLocationResponse.eta! * 60;
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

  _updateDriverMarker(double latitude, double longitude, {double? bearing}) {
    _markers.removeWhere((m) =>
        m.markerId.value == 'driver_current_location' ||
        m.markerId.value == 'available_drivers');
    _markers.add(Marker(
        markerId: const MarkerId('driver_current_location'),
        position: LatLng(latitude, longitude),
        icon: yellowCarIcon,
        rotation: bearing ?? 0.0));
  }

  liveTrackTrip() {
    positionStream = Geolocator.getPositionStream(
            intervalDuration: const Duration(seconds: 5))
        .listen((Position? position) {
      if (tripStep == TripStep.tripStarted && position != null) {
        _updateDriverMarker(
          position.latitude,
          position.longitude,
        );
      }
    });
  }

  updateEmergencyStatus() async {
    // enable and disable emergency(status)
    final Map<String, dynamic> emergencyPayload = {
      'engagement_id': engagementId,
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

  // delivery
  void getImage(ImageSource imageSource) async {
    try {
      final pickedFile = await fileRepository.getMedia(
        imageSource,
        'image',
      );

      _deliveryImages.add(pickedFile);
    } on Exception catch (e) {
      // print(Future.error(e.toString()));
    }
  }

  // Delivery
  removeDeliveryImage(File image) {
    _deliveryImages.remove(image);
  }

  onContinueToDeliveryLocation() {
    Get.toNamed(Routes.pickLocation);
    _getDeliveryAgents();
  }

  _getDeliveryAgents() {
    // Get Delivery vehicles
    final Map<String, dynamic> getAgentsParams = {
      'latitude':
          pickupLocation?.location?.latitude ?? currentLocation.latitude,
      'longitude':
          pickupLocation?.location?.longitude ?? currentLocation.longitude,
    };

    status(Status.loading);
    repository.getDeliveryAgents(getAgentsParams).then((deliveryAgentResponse) {
      if (deliveryAgentResponse.flag == SuccessFlags.basicSuccess.successCode) {
        status(Status.success);
        // set delivery vehicles
        if (deliveryAgentResponse.vehiclesInfo?.isNotEmpty ?? false) {
          deliveryVehicles = deliveryAgentResponse.vehiclesInfo;
        }
        currency = deliveryAgentResponse.currency;
      } else {
        print(deliveryAgentResponse.error ?? '');
        status(Status.error);
      }
    }, onError: (error) {
      status(Status.error);
      print('Get delivery agents error: $error');
    });
  }

  _getDeliveryDetail(Vehicle vehicle) {
    // get delivery detail, charges based on location and vehicle

    final Map<String, dynamic> detailParams = {
      'region_id': vehicle.regionId,
      'vehicle_type': vehicle.type,
      'ride_type': vehicle.rideType,
      'from_latitude':
          pickupLocation?.location?.latitude ?? currentLocation.latitude,
      'from_longitude':
          pickupLocation?.location?.longitude ?? currentLocation.longitude,
      'to_latitude': dropOffLocation?.location?.latitude,
      'to_longitude': dropOffLocation?.location?.longitude,
    };

    // Todo check deliveries param

    repository.getDeliveryDetail(detailParams).then((deliveryDetailResponse) {
      if (deliveryDetailResponse.flag ==
          SuccessFlags.basicSuccess.successCode) {
        // set delivery charge detail for the vehicle
        if (deliveryDetailResponse.deliveryCharges != null) {
          int vehicleIndex = deliveryVehicles.indexOf(vehicle);
          //List<Vehicle> tempVehicles = deliveryVehicles;
          if (vehicleIndex != -1) {
            _deliveryVehicles[vehicleIndex] = deliveryVehicles[vehicleIndex]
                .copyWith(
                    deliveryCharge: deliveryDetailResponse.deliveryCharges);
          }
        }
      } else {
        print(deliveryDetailResponse.error ?? '');
      }
    }, onError: (error) {
      print('Get delivery detail error: $error');
    });
  }

  _getOrderHistory() {
    // type can be statusChange or just liveTracking
    // type can be either statusChange or liveTracking
    final Map<String, dynamic> orderHistoryPayload = {
      'order_id': orderId,
      'integrated': '1',
    };

    // Todo check deliveries param
    repository.getOrderHistory(orderHistoryPayload).then(
        (orderHistoryResponse) {
      // log('order history here: $orderHistoryResponse');
      if (orderHistoryResponse.flag == SuccessFlags.basicSuccess.successCode) {
        // Todo: set order History
        if (orderHistoryResponse.orderHistory?.isNotEmpty ?? false) {
          // if trip step is on driver detail, then order history is used just for live tracking
          // othere wise it's status change
          OrderHistory orderHistory = orderHistoryResponse.orderHistory![0];
          //log('orderHistory here: $orderHistory');
          deliveryId = orderHistory.deliveryId;
          _onDeliveryStatusChange(orderHistory);
        }
      } else {
        print(orderHistoryResponse.error ?? '');
      }
    }, onError: (error) {
      print('Get Order History error: $error');
    });
  }

  _onDeliveryStatusChange(OrderHistory orderHistory) {
    switch (orderHistory.status) {
      case 1:
        // change ride step to waiting driver
        _setDriverInfo(orderHistory);
        tripStep = TripStep.driverDetail;
        _liveDeliveryTracking(drawDriverPolyline: true);
        _updateDeliveryLocation();
        break;
      case 2:
        _setDriverInfo(orderHistory);
        _onRideStarted();
        break;
      case 3:
        _setDriverInfo(orderHistory);
        // Delivery ended
        positionStream?.cancel();
        // set Delivery details
        tripStep = TripStep.tripDetail;
        rideDetail = RideDetail(
          fare: orderHistory.amount ?? 0,
          toPay: orderHistory.amount ?? 0,
          distanceTraveled: orderHistory.totalDistance,
          rideTime: orderHistory.totalTime,
          distanceUnit: 'km',
        );
        break;
      default:
    }
  }

  _setDriverInfo(OrderHistory orderHistory) {
    // set driver and vehicle detail
    driver = Driver(
      userName: orderHistory.driverName ?? '',
      driverId: orderHistory.liveTracking?.driverId ?? 0,
      phoneNo: orderHistory.driverPhoneNo,
      driverImage: orderHistory.liveTracking?.driverImage ?? '',
      rating: orderHistory.driverInfo?.rating ?? 0,
      vehicleNo: orderHistory.driverInfo?.vehicleNo ?? '',
    );

    driverVehicle = Vehicle(
      vehicleType: orderHistory.vehicleType,
      regionName: '',
      vehicleNumber: orderHistory.driverInfo?.vehicleNo ?? '',
    );
  }

  _updateDeliveryLocation() async {
    // update drivers marker while arriving towards the delivery
    // this is called every 10 sec to update drivers' location
    // untill trip starts
    Timer.periodic(const Duration(seconds: 10), (timer) {
      if (tripStep == TripStep.driverDetail) {
        _liveDeliveryTracking();
      } else {
        timer.cancel();
      }
    });
  }

  _getCancelOrderReasons() {
    // Get Cancellation order Reasons
    if (orderId != null) {
      final Map<String, dynamic> reasonsParams = {
        'order_id': orderId,
        'product_type': "7",
      };

      // Todo: check where product id comes from
      repository.getCancelDeliveryOrderReasons(reasonsParams).then(
          (cancelReasonsResponse) {
        if (cancelReasonsResponse.flag ==
            SuccessFlags.basicSuccess.successCode) {
          // set cancell reasons
          if (cancelReasonsResponse.cancelOptions?.isNotEmpty ?? false) {
            cancelOrderReasons = cancelReasonsResponse.cancelOptions;
          }
        } else {
          print(cancelReasonsResponse.error ?? '');
        }
      }, onError: (error) {
        print('Get cancell reasons error: $error');
      });
    }
  }

  cancelDelivery(String cancelReason) {
    // cancel Delivery order
    if (orderId != null) {
      final Map<String, dynamic> cancelPayload = {
        'reasons': cancelReason,
        'addn_reason': '',
        'order_id': orderId,
        'integrated': '1',
      };

      status(Status.loading);
      repository.cancelDelivery(cancelPayload).then((basicResponse) {
        if (basicResponse.flag == SuccessFlags.basicSuccess.successCode) {
          status(Status.success);
          Get.snackbar('success'.tr, 'cancel_order_success'.tr);
          resetValues();
        } else {
          print(basicResponse.error ?? '');
          toast('error', basicResponse.error ?? basicResponse.message ?? '');
          status(Status.error);
        }
      }, onError: (error) {
        status(Status.error);
        print('Cancel delivery order error: $error');
      });
    }
  }

  _liveDeliveryTracking({bool? drawDriverPolyline}) {
    // live track delivery status
    // called every $ome time while delivery is in progress
    if (deliveryId != null) {
      repository.liveDeliveryTracking('$deliveryId').then((trackingResponse) {
        if (trackingResponse.flag == SuccessFlags.basicSuccess.successCode) {
          // Todo: update delivery status
          // since there is no data on how far/long the driver is away for the delivery
          // we'll not show estimated time for the driver to delivery
          // potentially we can calculate this fronm the distance difference on the frontend
          // update driver marker.

          if (trackingResponse.latitude != null &&
              trackingResponse.longitude != null) {
            _updateDriverMarker(
                trackingResponse.latitude!, trackingResponse.longitude!,
                bearing: trackingResponse.bearing);

            if (drawDriverPolyline ?? false) {
              _drawDeliveryDriverOnRoutePolyLine(PointLatLng(
                  trackingResponse.latitude!, trackingResponse.longitude!));
            }
          }
        } else {
          print(trackingResponse.error ?? '');
        }
      }, onError: (error) {
        print('Delivery live tracking error: $error');
      });
    }
  }

  _drawDeliveryDriverOnRoutePolyLine(PointLatLng origin) {
    // take the destination to be the pickup location
    // set driver route
    final destination = PointLatLng(
        pickupLocation?.location?.latitude ?? currentLocation.latitude,
        pickupLocation?.location?.longitude ?? currentLocation.longitude);
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
  }

  orderDelivery() {
    // place delivery order
    // these will be form data

    if (_isRideInputValid()) {
      // check for delivery images
      final Map<String, dynamic> orderPayload = {
        'details': orderText,
        'from_address': pickupLocation?.placeName,
        'from_latitude': pickupLocation?.location?.latitude,
        'from_longitude': pickupLocation?.location?.longitude,
        'region_id': selectedVehicle.regionId,
        'ride_type': selectedVehicle.rideType,
        'vehicle_type': selectedVehicle.type,
        'phone_no': deliveryRecieverPhone != null
            ? '$deliveryCountryCode$deliveryRecieverPhone'
            : authController.user.phoneNo,
        'user_identifier': authController.user.userIdentifier,
        'is_immediate': '1',
        'payment_mode': '1',
        'deliveries': [
          {
            'latitude': dropOffLocation?.location?.latitude,
            'longitude': dropOffLocation?.location?.longitude,
            'address': dropOffLocation?.placeName,
          }
        ]
      };

      //Todo: for scheduled delivery add 'delivery_time' field

      status(Status.loading);
      repository.orderDelivery(orderPayload, deliveryImages).then(
          (orderResponse) {
        if (orderResponse.flag == SuccessFlags.basicSuccess.successCode) {
          status(Status.success);
          Get.snackbar('success'.tr, 'order_delivery_succes'.tr);
          // Go to looking for drivers step
          orderId = orderResponse.orderId;
          tripStep = TripStep.lookingDrivers;
          _getCancelOrderReasons();
        } else {
          print(orderResponse.error ?? '');
          toast('error', orderResponse.error ?? orderResponse.message ?? '');
          status(Status.error);
        }
      }, onError: (error) {
        status(Status.error);
        print('Order delivery order error: $error');
      });
    }
  }

  onPromoCouponSelected({Coupon? coupon, Promotion? promotion}) {
    selectedCoupon = coupon;
    selectedPromotion = promotion;
    _setPromoTags();
    _findDrivers(
        destination: dropOffLocation?.location, routeDistance: routeDistance);
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
        DateTime now = DateTime.now();
        if (currentBackPressTime == null ||
            now.difference(currentBackPressTime!) >
                const Duration(seconds: 2)) {
          currentBackPressTime = now;
          Get.snackbar('', 'exit_warning'.tr);
          return Future.value(false);
        }
    }

    return Future.value(true);
  }

  @override
  void onClose() {
    positionStream?.cancel();
    super.onClose();
  }

  onHelloCashSelected() {
    if (driver?.driverId != null) {
      PaymentController paymentController = Get.find();
      paymentController.onHelloCashSelected(
          hellocash: selectedPayment,
          amount: '${rideDetail?.toPay?.round()}',
          driverId: '${driver?.driverId}');
    }
  }

  onMpesaSelected() async {
    if (driver?.driverId != null && engagementId != null) {
      PaymentController paymentController = Get.find();
      status(Status.loading);
      Get.snackbar('', 'payment_pending'.tr);
      paymentController.payWithMpesa(engagementId!);

      await Future<dynamic>.delayed(const Duration(seconds: 40));
      if (status.value == Status.loading) {
        status(Status.error);
        toast('error', 'mpesa_pay_fail');
      }
    }
  }
}
