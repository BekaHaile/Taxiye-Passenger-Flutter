enum DrawerIndex {
  home,
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

enum TripStep {
  whereTo,
  pickOnMap,
  pickVehicle,
  lookingDrivers,
  driverDetail,
  tripStarted,
  tripDetail,
  tripFeedback,
  addPlace,
  confirmPlace,
  scheduleDetail,
}

enum LocationType {
  pickUp,
  dropOff,
}

enum EmergencyStatus {
  enable,
  disable,
}
