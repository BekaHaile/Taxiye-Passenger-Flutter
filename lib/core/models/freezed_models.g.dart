// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    json['user_name'] as String,
    flag: json['flag'] as int?,
    erorr: json['erorr'] as String?,
    gender: json['gender'] as int?,
    email: json['user_email'] as String?,
    userImage: json['user_image'] as String?,
    countryCode: _countryCodeConverter(json['country_code']),
    phoneNo: json['phone_no'] as String?,
    dateOfBirth: json['date_of_birth'] as String?,
    authKey: json['auth_key'] as String?,
    emailVerificationStatus: json['email_verification_status'] as int?,
    operatorId: json['operator_id'] as int?,
    city: json['city'] as String?,
    cityId: json['city_id'] as int?,
    referralCode: json['referral_code'] as String?,
    userId: json['user_id'] as int?,
    defaultClientId: json['default_client_id'] as String?,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'user_name': instance.userName,
      'flag': instance.flag,
      'erorr': instance.erorr,
      'gender': instance.gender,
      'user_email': instance.email,
      'user_image': instance.userImage,
      'country_code': instance.countryCode,
      'phone_no': instance.phoneNo,
      'date_of_birth': instance.dateOfBirth,
      'auth_key': instance.authKey,
      'email_verification_status': instance.emailVerificationStatus,
      'operator_id': instance.operatorId,
      'city': instance.city,
      'city_id': instance.cityId,
      'referral_code': instance.referralCode,
      'user_id': instance.userId,
      'default_client_id': instance.defaultClientId,
    };

_$_Files _$_$_FilesFromJson(Map<String, dynamic> json) {
  return _$_Files(
    json['_id'] as String,
    json['userId'] as String,
    json['url'] as String,
    name: json['name'] as String?,
    originalName: json['originalName'] as String?,
    contentType: json['contentType'] as String?,
    size: json['size'] as int?,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$_$_FilesToJson(_$_Files instance) => <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'url': instance.url,
      'name': instance.name,
      'originalName': instance.originalName,
      'contentType': instance.contentType,
      'size': instance.size,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$_Vehicle _$_$_VehicleFromJson(Map<String, dynamic> json) {
  return _$_Vehicle(
    regionId: json['region_id'] as int?,
    operatorId: json['operator_id'] as int?,
    regionName: json['region_name'] as String?,
    vehicleType: json['vehicle_type'] as int?,
    iconSet: json['icon_set'] as String?,
    rideType: json['ride_type'] as int?,
    maxPeople: json['max_people'] as int?,
    regionFare: json['region_fare'] == null
        ? null
        : VehicleFare.fromJson(json['region_fare'] as Map<String, dynamic>),
    images: json['images'] == null
        ? null
        : VehicleImage.fromJson(json['images'] as Map<String, dynamic>),
    vehicleNumber: json['vehicleNumber'] as String?,
  );
}

Map<String, dynamic> _$_$_VehicleToJson(_$_Vehicle instance) =>
    <String, dynamic>{
      'region_id': instance.regionId,
      'operator_id': instance.operatorId,
      'region_name': instance.regionName,
      'vehicle_type': instance.vehicleType,
      'icon_set': instance.iconSet,
      'ride_type': instance.rideType,
      'max_people': instance.maxPeople,
      'region_fare': instance.regionFare,
      'images': instance.images,
      'vehicleNumber': instance.vehicleNumber,
    };

_$_VehicleFare _$_$_VehicleFareFromJson(Map<String, dynamic> json) {
  return _$_VehicleFare(
    fare: json['fare'] as int?,
    minFare: json['min_fare'] as int?,
    maxFare: json['max_fare'] as int?,
    originalFare: json['original_fare'] as int?,
    rideDistance: (json['ride_distance'] as num?)?.toDouble(),
    currency: json['currency'] as String?,
    currencySymbol: json['currency_symbol'] as String?,
    fareText: json['fare_text'] as String?,
    distanceUnit: json['distance_unit'] as String?,
  );
}

Map<String, dynamic> _$_$_VehicleFareToJson(_$_VehicleFare instance) =>
    <String, dynamic>{
      'fare': instance.fare,
      'min_fare': instance.minFare,
      'max_fare': instance.maxFare,
      'original_fare': instance.originalFare,
      'ride_distance': instance.rideDistance,
      'currency': instance.currency,
      'currency_symbol': instance.currencySymbol,
      'fare_text': instance.fareText,
      'distance_unit': instance.distanceUnit,
    };

_$_VehicleImage _$_$_VehicleImageFromJson(Map<String, dynamic> json) {
  return _$_VehicleImage(
    tabNormal: json['tab_normal'] as String?,
    tabHighlighted: json['tab_highlighted'] as String?,
    rideNowNormal: json['ride_now_normal'] as String?,
    driverIcon: json['driver_icon'] as String?,
  );
}

Map<String, dynamic> _$_$_VehicleImageToJson(_$_VehicleImage instance) =>
    <String, dynamic>{
      'tab_normal': instance.tabNormal,
      'tab_highlighted': instance.tabHighlighted,
      'ride_now_normal': instance.rideNowNormal,
      'driver_icon': instance.driverIcon,
    };

_$_Driver _$_$_DriverFromJson(Map<String, dynamic> json) {
  return _$_Driver(
    driverId: json['driver_id'] as int?,
    userName: json['user_name'] as String?,
    phoneNo: json['phone_no'] as String?,
    latitude: (json['latitude'] as num?)?.toDouble(),
    longitude: (json['longitude'] as num?)?.toDouble(),
    rating: (json['rating'] as num?)?.toDouble(),
    cityId: json['city_id'] as int?,
    driverImage: json['driver_image'] as String?,
    vehicleNo: json['vehicle_no'] as String?,
  );
}

Map<String, dynamic> _$_$_DriverToJson(_$_Driver instance) => <String, dynamic>{
      'driver_id': instance.driverId,
      'user_name': instance.userName,
      'phone_no': instance.phoneNo,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'rating': instance.rating,
      'city_id': instance.cityId,
      'driver_image': instance.driverImage,
      'vehicle_no': instance.vehicleNo,
    };

_$_Order _$_$_OrderFromJson(Map<String, dynamic> json) {
  return _$_Order(
    driver: json['driver'] == null
        ? null
        : Driver.fromJson(json['driver'] as Map<String, dynamic>),
    amount: (json['amount'] as num?)?.toDouble(),
    orderTime: json['orderTime'] == null
        ? null
        : DateTime.parse(json['orderTime'] as String),
  );
}

Map<String, dynamic> _$_$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'driver': instance.driver,
      'amount': instance.amount,
      'orderTime': instance.orderTime?.toIso8601String(),
    };

_$_Payment _$_$_PaymentFromJson(Map<String, dynamic> json) {
  return _$_Payment(
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$_$_PaymentToJson(_$_Payment instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_Transaction _$_$_TransactionFromJson(Map<String, dynamic> json) {
  return _$_Transaction(
    transactionId: json['txn_id'] as int?,
    type: json['txn_type'] as String?,
    amount: json['amount'] as int?,
    transactionDate: json['txn_date'] as String?,
    transactionTime: json['txn_time'] as String?,
    loggedOn: json['logged_on'] as String?,
    walletTxn: json['wallet_txn'] as int?,
    paytm: json['paytm'] as int?,
    mobikwik: json['mobikwik'] as int?,
    freeCharge: json['freecharge'] as int?,
    referenceId: json['reference_id'] as int?,
    event: json['event'] as int?,
    comment: json['comment'] as String?,
  );
}

Map<String, dynamic> _$_$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'txn_id': instance.transactionId,
      'txn_type': instance.type,
      'amount': instance.amount,
      'txn_date': instance.transactionDate,
      'txn_time': instance.transactionTime,
      'logged_on': instance.loggedOn,
      'wallet_txn': instance.walletTxn,
      'paytm': instance.paytm,
      'mobikwik': instance.mobikwik,
      'freecharge': instance.freeCharge,
      'reference_id': instance.referenceId,
      'event': instance.event,
      'comment': instance.comment,
    };

_$_Coupon _$_$_CouponFromJson(Map<String, dynamic> json) {
  return _$_Coupon(
    name: json['name'] as String?,
    point: json['point'] as int?,
    expireDate: json['expireDate'] == null
        ? null
        : DateTime.parse(json['expireDate'] as String),
  );
}

Map<String, dynamic> _$_$_CouponToJson(_$_Coupon instance) => <String, dynamic>{
      'name': instance.name,
      'point': instance.point,
      'expireDate': instance.expireDate?.toIso8601String(),
    };

_$_NotificationMessage _$_$_NotificationMessageFromJson(
    Map<String, dynamic> json) {
  return _$_NotificationMessage(
    json['flag'] as int,
    title: json['title'] as String?,
    message: json['message'] as String?,
    rating: (json['rating'] as num?)?.toDouble(),
    fare: json['fare'] as String?,
    log: json['log'] as String?,
    error: json['error'] as String?,
    phoneNo: json['phone_no'] as String?,
    driverId: json['driver_id'] as int?,
    driverCarNo: json['driver_car_no'] as String?,
    userImage: json['user_image'] as String?,
    titleIos: json['title_ios'] as String?,
    messageIos: json['message_ios'] as String?,
    vehicleName: json['vehicle_name'] as String?,
    vehicleType: json['vehicle_type'] as int?,
    sessionId: json['session_id'] as int?,
    engagementId: json['engagement_id'] as String?,
    driverCarImage: json['driver_car_image'] as String?,
    toPay: json['to_pay'] as String?,
    paymentMode: json['payment_mode'] as int?,
    distanceTravelled: json['distance_travelled'] as String?,
    rideTime: json['ride_time'] as String?,
    distanceUnit: json['distance_unit'] as String?,
    paidUsingWallet: json['paid_using_wallet'] as String?,
    discount: json['discount'] as String?,
  );
}

Map<String, dynamic> _$_$_NotificationMessageToJson(
        _$_NotificationMessage instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'title': instance.title,
      'message': instance.message,
      'rating': instance.rating,
      'fare': instance.fare,
      'log': instance.log,
      'error': instance.error,
      'phone_no': instance.phoneNo,
      'driver_id': instance.driverId,
      'driver_car_no': instance.driverCarNo,
      'user_image': instance.userImage,
      'title_ios': instance.titleIos,
      'message_ios': instance.messageIos,
      'vehicle_name': instance.vehicleName,
      'vehicle_type': instance.vehicleType,
      'session_id': instance.sessionId,
      'engagement_id': instance.engagementId,
      'driver_car_image': instance.driverCarImage,
      'to_pay': instance.toPay,
      'payment_mode': instance.paymentMode,
      'distance_travelled': instance.distanceTravelled,
      'ride_time': instance.rideTime,
      'distance_unit': instance.distanceUnit,
      'paid_using_wallet': instance.paidUsingWallet,
      'discount': instance.discount,
    };

_$_RideDetail _$_$_RideDetailFromJson(Map<String, dynamic> json) {
  return _$_RideDetail(
    fare: (json['fare'] as num?)?.toDouble(),
    paymentMode: json['paymentMode'] as int?,
    distanceTraveled: (json['distanceTraveled'] as num?)?.toDouble(),
    discount: (json['discount'] as num?)?.toDouble(),
    paidUsingWallet: (json['paidUsingWallet'] as num?)?.toDouble(),
    rideTime: json['rideTime'] as int?,
    distanceUnit: json['distanceUnit'] as String?,
    toPay: (json['toPay'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_RideDetailToJson(_$_RideDetail instance) =>
    <String, dynamic>{
      'fare': instance.fare,
      'paymentMode': instance.paymentMode,
      'distanceTraveled': instance.distanceTraveled,
      'discount': instance.discount,
      'paidUsingWallet': instance.paidUsingWallet,
      'rideTime': instance.rideTime,
      'distanceUnit': instance.distanceUnit,
      'toPay': instance.toPay,
    };

_$_BasicResponse _$_$_BasicResponseFromJson(Map<String, dynamic> json) {
  return _$_BasicResponse(
    json['flag'] as int,
    message: json['message'] as String?,
    error: json['error'] as String?,
    log: json['log'] as String?,
  );
}

Map<String, dynamic> _$_$_BasicResponseToJson(_$_BasicResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'error': instance.error,
      'log': instance.log,
    };

_$_SignUpResponse _$_$_SignUpResponseFromJson(Map<String, dynamic> json) {
  return _$_SignUpResponse(
    json['flag'] as int,
    message: json['message'] as String?,
    otpLength: json['otp_length'] as int?,
  );
}

Map<String, dynamic> _$_$_SignUpResponseToJson(_$_SignUpResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'otp_length': instance.otpLength,
    };

_$_VerifyResponse _$_$_VerifyResponseFromJson(Map<String, dynamic> json) {
  return _$_VerifyResponse(
    json['flag'] as int,
    message: json['message'] as String?,
    userData: json['user_data'] == null
        ? null
        : User.fromJson(json['user_data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_VerifyResponseToJson(_$_VerifyResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'user_data': instance.userData,
    };

_$_FindDriversResponse _$_$_FindDriversResponseFromJson(
    Map<String, dynamic> json) {
  return _$_FindDriversResponse(
    json['flag'] as int,
    error: json['error'] as String?,
    drivers: (json['drivers'] as List<dynamic>?)
        ?.map((e) => Driver.fromJson(e as Map<String, dynamic>))
        .toList(),
    regions: (json['regions'] as List<dynamic>?)
        ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_FindDriversResponseToJson(
        _$_FindDriversResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'error': instance.error,
      'drivers': instance.drivers,
      'regions': instance.regions,
    };

_$_RequestRideResponse _$_$_RequestRideResponseFromJson(
    Map<String, dynamic> json) {
  return _$_RequestRideResponse(
    json['flag'] as int,
    error: json['error'] as String?,
    message: json['message'] as String?,
    log: json['log'] as String?,
    orderId: json['order_id'] as int?,
    sessionId: json['session_id'] as int?,
    pickupLocationAddress: json['pickup_location_address'] as String?,
    dropLocationAddress: json['drop_location_address'] as String?,
    startTime: json['start_time'] as String?,
    latitude: (json['latitude'] as num?)?.toDouble(),
    longitude: (json['longitude'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_RequestRideResponseToJson(
        _$_RequestRideResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'error': instance.error,
      'message': instance.message,
      'log': instance.log,
      'order_id': instance.orderId,
      'session_id': instance.sessionId,
      'pickup_location_address': instance.pickupLocationAddress,
      'drop_location_address': instance.dropLocationAddress,
      'start_time': instance.startTime,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$_WalletResponse _$_$_WalletResponseFromJson(Map<String, dynamic> json) {
  return _$_WalletResponse(
    json['flag'] as int,
    message: json['message'] as String?,
    error: json['error'] as String?,
    walletBalance: (json['jugnoo_balance'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_WalletResponseToJson(_$_WalletResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'error': instance.error,
      'jugnoo_balance': instance.walletBalance,
    };

_$_TransactionHistoryResponse _$_$_TransactionHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return _$_TransactionHistoryResponse(
    json['flag'] as int,
    message: json['message'] as String?,
    error: json['error'] as String?,
    transactions: (json['transactions'] as List<dynamic>?)
        ?.map((e) => Transaction.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_TransactionHistoryResponseToJson(
        _$_TransactionHistoryResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'error': instance.error,
      'transactions': instance.transactions,
    };

_$_TransferResponse _$_$_TransferResponseFromJson(Map<String, dynamic> json) {
  return _$_TransferResponse(
    json['flag'] as int,
    message: json['message'] as String?,
    error: json['error'] as String?,
    walletBalance: (json['credit_balance'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_TransferResponseToJson(
        _$_TransferResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'error': instance.error,
      'credit_balance': instance.walletBalance,
    };
