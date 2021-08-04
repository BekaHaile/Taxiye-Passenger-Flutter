import 'package:flutter/material.dart';

enum DrawerIndex {
  myWallet,
  promotions,
  myOrders,
  myDrivers,
  paymentMethod,
  settings,
  legals,
}

enum HomeServiceIndex {
  ride,
  delivery,
  rental,
  outStation,
}

enum VehicleType {
  normal,
  shared,
  corporate,
}

enum TripStep {
  locationSearch,
  pickVehicle,
  lookingDrivers,
  driverDetail,
  tripStarted,
  tripDetail,
  tripFeedback,
}
