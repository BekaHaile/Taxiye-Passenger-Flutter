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
    locale: json['locale'] as String?,
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
      'locale': instance.locale,
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
    latitude: (json['latitude'] as num?)?.toDouble(),
    longitude: (json['longitude'] as num?)?.toDouble(),
    rating: (json['rating'] as num?)?.toDouble(),
    type: json['type'] as int?,
    distance: (json['distance'] as num?)?.toDouble(),
    driverId: json['driver_id'] as int?,
    userName: json['user_name'] as String?,
    driverName: json['driver_name'] as String?,
    phoneNo: json['phone_no'] as String?,
    avgRating: (json['avg_rating'] as num?)?.toDouble(),
    cityId: json['city_id'] as int?,
    driverImage: json['driver_image'] as String?,
    vehicleNo: json['vehicle_no'] as String?,
    vehicleType: json['vehicle_type'] as int?,
    vehicleBrand: json['vehicle_brand'] as String?,
    vehicleName: json['vehicle_name'] as String?,
  );
}

Map<String, dynamic> _$_$_DriverToJson(_$_Driver instance) => <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'rating': instance.rating,
      'type': instance.type,
      'distance': instance.distance,
      'driver_id': instance.driverId,
      'user_name': instance.userName,
      'driver_name': instance.driverName,
      'phone_no': instance.phoneNo,
      'avg_rating': instance.avgRating,
      'city_id': instance.cityId,
      'driver_image': instance.driverImage,
      'vehicle_no': instance.vehicleNo,
      'vehicle_type': instance.vehicleType,
      'vehicle_brand': instance.vehicleBrand,
      'vehicle_name': instance.vehicleName,
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
    bearing: (json['bearing'] as num?)?.toDouble(),
    timeTillDisplay: json['timeTillDisplay'] as String?,
    discount: json['discount'] as String?,
    log: json['log'] as String?,
    error: json['error'] as String?,
    phoneNo: json['phone_no'] as String?,
    driverId: json['driver_id'] as int?,
    driverCarNo: json['driver_car_no'] as String?,
    vehicleName: json['vehicle_name'] as String?,
    userName: json['user_name'] as String?,
    vehicleModel: json['vehicle_model'] as String?,
    userImage: json['user_image'] as String?,
    titleIos: json['title_ios'] as String?,
    messageIos: json['message_ios'] as String?,
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
    currentLocationLatitude:
        (json['current_location_latitude'] as num?)?.toDouble(),
    currentLocationLongitude:
        (json['current_location_longitude'] as num?)?.toDouble(),
    isCorporateRide: json['is_corporate_ride'] as int?,
    markerIcon: json['marker_icon'] as String?,
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
      'bearing': instance.bearing,
      'timeTillDisplay': instance.timeTillDisplay,
      'discount': instance.discount,
      'log': instance.log,
      'error': instance.error,
      'phone_no': instance.phoneNo,
      'driver_id': instance.driverId,
      'driver_car_no': instance.driverCarNo,
      'vehicle_name': instance.vehicleName,
      'user_name': instance.userName,
      'vehicle_model': instance.vehicleModel,
      'user_image': instance.userImage,
      'title_ios': instance.titleIos,
      'message_ios': instance.messageIos,
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
      'current_location_latitude': instance.currentLocationLatitude,
      'current_location_longitude': instance.currentLocationLongitude,
      'is_corporate_ride': instance.isCorporateRide,
      'marker_icon': instance.markerIcon,
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

_$_Address _$_$_AddressFromJson(Map<String, dynamic> json) {
  return _$_Address(
    type: json['type'] as String?,
    id: json['id'] as int?,
    instr: json['instr'] as String?,
    addressName: json['addr'] as String?,
    latitude: json['lat'] as String?,
    longitude: json['lng'] as String?,
    frequency: json['freq'] as int?,
    googlePlaceId: json['google_place_id'] as String?,
    isConfirmed: json['is_confirmed'] as int?,
  );
}

Map<String, dynamic> _$_$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'instr': instance.instr,
      'addr': instance.addressName,
      'lat': instance.latitude,
      'lng': instance.longitude,
      'freq': instance.frequency,
      'google_place_id': instance.googlePlaceId,
      'is_confirmed': instance.isConfirmed,
    };

_$_ScheduledRide _$_$_ScheduledRideFromJson(Map<String, dynamic> json) {
  return _$_ScheduledRide(
    latitude: (json['latitude'] as num?)?.toDouble(),
    longitude: (json['longitude'] as num?)?.toDouble(),
    status: json['status'] as int?,
    modifiable: json['modifiable'] as int?,
    opDropLatitude: (json['op_drop_latitude'] as num?)?.toDouble(),
    opDropLongitude: (json['op_drop_longitude'] as num?)?.toDouble(),
    pickupId: json['pickup_id'] as int?,
    preferredPaymentMode: json['preferred_payment_mode'] as int?,
    pickupLocationAddress: json['pickup_location_address'] as String?,
    dropLocationAddress: json['drop_location_address'] as String?,
    pickupTime: json['pickup_time'] == null
        ? null
        : DateTime.parse(json['pickup_time'] as String),
    vehicleName: json['vehicle_name'] as String?,
    rideType: json['ride_type'] as int?,
  );
}

Map<String, dynamic> _$_$_ScheduledRideToJson(_$_ScheduledRide instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'status': instance.status,
      'modifiable': instance.modifiable,
      'op_drop_latitude': instance.opDropLatitude,
      'op_drop_longitude': instance.opDropLongitude,
      'pickup_id': instance.pickupId,
      'preferred_payment_mode': instance.preferredPaymentMode,
      'pickup_location_address': instance.pickupLocationAddress,
      'drop_location_address': instance.dropLocationAddress,
      'pickup_time': instance.pickupTime?.toIso8601String(),
      'vehicle_name': instance.vehicleName,
      'ride_type': instance.rideType,
    };

_$_RideHistory _$_$_RideHistoryFromJson(Map<String, dynamic> json) {
  return _$_RideHistory(
    distance: (json['distance'] as num?)?.toDouble(),
    longitude: (json['longitude'] as num?)?.toDouble(),
    status: json['status'] as int?,
    modifiable: json['modifiable'] as int?,
    amount: json['amount'] as int?,
    currency: json['currency'] as String?,
    date: json['date'] as String?,
    pickupAddress: json['pickup_address'] as String?,
    pickupLatitude: (json['pickup_latitude'] as num?)?.toDouble(),
    pickupLongitude: (json['pickup_longitude'] as num?)?.toDouble(),
    dropLatitude: (json['drop_latitude'] as num?)?.toDouble(),
    dropLongitude: (json['drop_longitude'] as num?)?.toDouble(),
    dropAddress: json['drop_address'] as String?,
    rideType: json['ride_type'] as int?,
    isCancelledRide: json['is_cancelled_ride'] as int?,
    rideTime: json['ride_time'] as int?,
    vehicleType: json['vehicle_type'] as int?,
    driverId: json['driver_id'] as int?,
    driverRating: json['driver_rating'] as int?,
    regionName: json['region_name'] as String?,
    engagementId: json['engagement_id'] as int?,
    userId: json['user_id'] as int?,
    manuallyEdited: json['manually_edited'] as int?,
    waitTime: json['wait_time'] as int?,
    autosStatusText: json['autos_status_text'] as String?,
    distanceUnit: json['distance_unit'] as String?,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
  );
}

Map<String, dynamic> _$_$_RideHistoryToJson(_$_RideHistory instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'longitude': instance.longitude,
      'status': instance.status,
      'modifiable': instance.modifiable,
      'amount': instance.amount,
      'currency': instance.currency,
      'date': instance.date,
      'pickup_address': instance.pickupAddress,
      'pickup_latitude': instance.pickupLatitude,
      'pickup_longitude': instance.pickupLongitude,
      'drop_latitude': instance.dropLatitude,
      'drop_longitude': instance.dropLongitude,
      'drop_address': instance.dropAddress,
      'ride_type': instance.rideType,
      'is_cancelled_ride': instance.isCancelledRide,
      'ride_time': instance.rideTime,
      'vehicle_type': instance.vehicleType,
      'driver_id': instance.driverId,
      'driver_rating': instance.driverRating,
      'region_name': instance.regionName,
      'engagement_id': instance.engagementId,
      'user_id': instance.userId,
      'manually_edited': instance.manuallyEdited,
      'wait_time': instance.waitTime,
      'autos_status_text': instance.autosStatusText,
      'distance_unit': instance.distanceUnit,
      'created_at': instance.createdAt?.toIso8601String(),
    };

_$_Corporate _$_$_CorporateFromJson(Map<String, dynamic> json) {
  return _$_Corporate(
    businessId: json['business_id'] as int?,
    partnerName: json['partner_name'] as String?,
    restrictedSubRegions: json['restricted_sub_regions'] as String?,
  );
}

Map<String, dynamic> _$_$_CorporateToJson(_$_Corporate instance) =>
    <String, dynamic>{
      'business_id': instance.businessId,
      'partner_name': instance.partnerName,
      'restricted_sub_regions': instance.restrictedSubRegions,
    };

_$_EmergencyContact _$_$_EmergencyContactFromJson(Map<String, dynamic> json) {
  return _$_EmergencyContact(
    id: json['id'] as int?,
    name: json['name'] as String?,
    email: json['email'] as String?,
    userId: json['user_id'] as int?,
    phoneNo: json['phone_no'] as String?,
    countryCode: json['country_code'] as String?,
    requestedOn: json['requested_on'] == null
        ? null
        : DateTime.parse(json['requested_on'] as String),
    verificationStatus: json['verification_status'] as int?,
  );
}

Map<String, dynamic> _$_$_EmergencyContactToJson(
        _$_EmergencyContact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'user_id': instance.userId,
      'phone_no': instance.phoneNo,
      'country_code': instance.countryCode,
      'requested_on': instance.requestedOn?.toIso8601String(),
      'verification_status': instance.verificationStatus,
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
    latitude: (json['latitude'] as num?)?.toDouble(),
    longitude: (json['longitude'] as num?)?.toDouble(),
    orderId: json['order_id'] as int?,
    sessionId: json['session_id'] as int?,
    pickupLocationAddress: json['pickup_location_address'] as String?,
    dropLocationAddress: json['drop_location_address'] as String?,
    startTime: json['start_time'] as String?,
  );
}

Map<String, dynamic> _$_$_RequestRideResponseToJson(
        _$_RequestRideResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'error': instance.error,
      'message': instance.message,
      'log': instance.log,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'order_id': instance.orderId,
      'session_id': instance.sessionId,
      'pickup_location_address': instance.pickupLocationAddress,
      'drop_location_address': instance.dropLocationAddress,
      'start_time': instance.startTime,
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

_$_SavedPlacesResponse _$_$_SavedPlacesResponseFromJson(
    Map<String, dynamic> json) {
  return _$_SavedPlacesResponse(
    json['flag'] as int,
    message: json['message'] as String?,
    error: json['error'] as String?,
    addresses: (json['addresses'] as List<dynamic>?)
        ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_SavedPlacesResponseToJson(
        _$_SavedPlacesResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'error': instance.error,
      'addresses': instance.addresses,
    };

_$_DriverLocationResponse _$_$_DriverLocationResponseFromJson(
    Map<String, dynamic> json) {
  return _$_DriverLocationResponse(
    json['flag'] as int,
    latitude: (json['latitude'] as num?)?.toDouble(),
    longitude: (json['longitude'] as num?)?.toDouble(),
    eta: json['eta'] as int?,
    bearing: json['bearing'] as int?,
  );
}

Map<String, dynamic> _$_$_DriverLocationResponseToJson(
        _$_DriverLocationResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'eta': instance.eta,
      'bearing': instance.bearing,
    };

_$_EmergencyContactsResponse _$_$_EmergencyContactsResponseFromJson(
    Map<String, dynamic> json) {
  return _$_EmergencyContactsResponse(
    json['flag'] as int,
    message: json['message'] as String?,
    error: json['error'] as String?,
    log: json['log'] as String?,
    emergencyContacts: (json['emergency_contacts'] as List<dynamic>?)
        ?.map((e) => EmergencyContact.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_EmergencyContactsResponseToJson(
        _$_EmergencyContactsResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'error': instance.error,
      'log': instance.log,
      'emergency_contacts': instance.emergencyContacts,
    };

_$_RideListResponse<T> _$_$_RideListResponseFromJson<T>(
    Map<String, dynamic> json) {
  return _$_RideListResponse<T>(
    json['flag'] as int,
    data: (json['data'] as List<dynamic>?)
        ?.map(DataConverter<T>().fromJson)
        .toList(),
    message: json['message'] as String?,
    error: json['error'] as String?,
    log: json['log'] as String?,
  );
}

Map<String, dynamic> _$_$_RideListResponseToJson<T>(
        _$_RideListResponse<T> instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'data': instance.data?.map(DataConverter<T>().toJson).toList(),
      'message': instance.message,
      'error': instance.error,
      'log': instance.log,
    };
