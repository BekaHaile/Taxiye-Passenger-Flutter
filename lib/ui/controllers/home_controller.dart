import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:taxiye_passenger/utils/functions.dart';

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

  final _locationSearch = ''.obs;
  get locationSearch => _locationSearch.value;
  set locationSearch(value) => _locationSearch.value = value;

  // vehicles
  final _vehicleType = VehicleType.normal.obs;
  get vehicleType => _vehicleType.value;
  set vehicleType(value) => _vehicleType.value = value;

  final _vehicles = List<Vehicle>.empty(growable: true).obs;
  get vehicles => _vehicles.value;
  set vehicles(value) => _vehicles.assignAll(value);

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
  Driver driver = Driver(name: 'Cameron Williamson', rating: 4.9);
  Vehicle vehicle =
      Vehicle(name: 'Taxiye - Sedan', liscensePlate: 'B12345', price: 128.0);

  // late Position currentLocation;

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.

    getVehicles();
    getPaymentMethods();
    super.onInit();
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
  onLocationPicked() {
    // Todo: add logic here;
    Get.back();
    tripStep = TripStep.pickVehicle;
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
}
