enum RequestType {
  get,
  post,
  patch,
  put,
  delete,
}

enum Status {
  loading,
  success,
  error,
}

enum UpdateOption {
  edit,
  remove,
  setDefault,
}

enum UpdateMode {
  add,
  edit,
  delete,
}

enum DriverPreference {
  favourite,
  blocked,
}

enum OrderStatus {
  completed,
  canceled,
  scheduled,
}

enum TransactionType {
  debited,
  credited,
}

enum WalletTransferTo {
  driver,
  customer,
}

enum ExchangePointOption {
  mobileCard,
  transfer,
  bookRide,
  donate,
}

enum Gender {
  male, // 1
  female, // 2
  other, // 3
}

enum SuccessFlags {
  basicSuccess,
  login,
  signUp,
  verify,
  updateProfile,
  findDriver,
  requestRide,
  rideAccepted,
  rideStarted,
  rideEnd,
  cancelRide,
  driverCancelRide,
  driversBusy,
  rateDriver,
  fetchWalletBalance,
  payWithHelloCash,
  getTransactionHistory,
  transfer,
  reloadProfile,
  getSavedPlaces,
  addNewPlace,
  driverLocation,
  rideHistory,
  rideSummary,
  emergencyContacts,
  logout,
  dummy,
  payWithMpesa,
  payWithMpesaFailed
}

extension SuccessFlagsExtension on SuccessFlags {
  static const Map<SuccessFlags, int> successCodes = {
    SuccessFlags.basicSuccess: 143,
    SuccessFlags.login: 407,
    SuccessFlags.signUp: 143,
    SuccessFlags.verify: 407,
    SuccessFlags.updateProfile: 416,
    SuccessFlags.findDriver: 175,
    SuccessFlags.requestRide: 105,
    SuccessFlags.rideAccepted: 5,
    SuccessFlags.rideStarted: 3,
    SuccessFlags.rideEnd: 4,
    SuccessFlags.cancelRide: 118,
    SuccessFlags.driverCancelRide: 7,
    SuccessFlags.driversBusy: 8,
    SuccessFlags.rateDriver: 143,
    SuccessFlags.dummy: -1,
    SuccessFlags.fetchWalletBalance: 143,
    SuccessFlags.getTransactionHistory: 423,
    SuccessFlags.transfer: 143,
    SuccessFlags.reloadProfile: 416,
    SuccessFlags.getSavedPlaces: 143,
    SuccessFlags.addNewPlace: 143,
    SuccessFlags.driverLocation: 117,
    SuccessFlags.rideHistory: 173,
    SuccessFlags.rideSummary: 115,
    SuccessFlags.emergencyContacts: 450,
    SuccessFlags.logout: 409,
    SuccessFlags.payWithHelloCash: 143,
    SuccessFlags.payWithMpesa: 93,
    SuccessFlags.payWithMpesaFailed: 94,
  };

  int get successCode => successCodes[this]!;

  static SuccessFlags getsuccessKey(int successCode) {
    try {
      return successCodes.entries
          .firstWhere((element) => element.value == successCode)
          .key;
    } catch (error) {
      print('successFlag error: $error');
      return SuccessFlags.dummy;
    }
  }
}
