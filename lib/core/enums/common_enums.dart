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
  male,
  female,
}

enum SuccessFlags {
  signUp,
  verify,
  updateProfile,
  findDriver,
  requestRide,
  rideAccepted,
  rideStarted,
  rideEnd,
  cancelRide,
  fetchWalletBalance,
  getTransactionHistory,
  transfer,
  dummy
}

extension SuccessFlagsExtension on SuccessFlags {
  static const Map<SuccessFlags, int> successCodes = {
    SuccessFlags.signUp: 143,
    SuccessFlags.verify: 407,
    SuccessFlags.updateProfile: 416,
    SuccessFlags.findDriver: 175,
    SuccessFlags.requestRide: 105,
    SuccessFlags.rideAccepted: 5,
    SuccessFlags.rideStarted: 3,
    SuccessFlags.rideEnd: 4,
    SuccessFlags.cancelRide: 118,
    SuccessFlags.dummy: -1,
    SuccessFlags.fetchWalletBalance: 143,
    SuccessFlags.getTransactionHistory: 423,
    SuccessFlags.transfer: 143,
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
