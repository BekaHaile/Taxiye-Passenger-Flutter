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
  withdrawal,
  deposit,
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
}

extension SuccessFlagsExtension on SuccessFlags {
  static const successCodes = {
    SuccessFlags.signUp: 143,
    SuccessFlags.verify: 407,
    SuccessFlags.updateProfile: 416,
  };

  int? get successCode => successCodes[this];
}
