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
    userIdentifier: json['user_identifier'] as String?,
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
      'user_identifier': instance.userIdentifier,
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
    images: json['images'] == null
        ? null
        : VehicleImage.fromJson(json['images'] as Map<String, dynamic>),
    vehicleNumber: json['vehicleNumber'] as String?,
    type: json['type'] as int?,
    name: json['name'] as String?,
    fareStructure: json['fareStructure'] == null
        ? null
        : FareStructure.fromJson(json['fareStructure'] as Map<String, dynamic>),
    deliveryCharge: json['deliveryCharge'] == null
        ? null
        : DeliveryCharge.fromJson(
            json['deliveryCharge'] as Map<String, dynamic>),
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
  );
}

Map<String, dynamic> _$_$_VehicleToJson(_$_Vehicle instance) =>
    <String, dynamic>{
      'images': instance.images,
      'vehicleNumber': instance.vehicleNumber,
      'type': instance.type,
      'name': instance.name,
      'fareStructure': instance.fareStructure,
      'deliveryCharge': instance.deliveryCharge,
      'region_id': instance.regionId,
      'operator_id': instance.operatorId,
      'region_name': instance.regionName,
      'vehicle_type': instance.vehicleType,
      'icon_set': instance.iconSet,
      'ride_type': instance.rideType,
      'max_people': instance.maxPeople,
      'region_fare': instance.regionFare,
    };

_$_VehicleFare _$_$_VehicleFareFromJson(Map<String, dynamic> json) {
  return _$_VehicleFare(
    fare: json['fare'] as int?,
    minFare: json['min_fare'] as int?,
    maxFare: json['max_fare'] as int?,
    baseFare: json['base_fare'] as int?,
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
      'base_fare': instance.baseFare,
      'original_fare': instance.originalFare,
      'ride_distance': instance.rideDistance,
      'currency': instance.currency,
      'currency_symbol': instance.currencySymbol,
      'fare_text': instance.fareText,
      'distance_unit': instance.distanceUnit,
    };

_$_FareStructure _$_$_FareStructureFromJson(Map<String, dynamic> json) {
  return _$_FareStructure(
    fare: json['fare'] as int?,
    fareFixed: json['fare_fixed'] as int?,
    farePerKm: json['fare_per_km'] as int?,
    farePerMin: json['fare_per_min'] as int?,
    farePerWaitingMin: json['fare_per_waiting_min'] as int?,
    vehicleType: json['vehicle_type'] as int?,
    rideType: json['ride_type'] as int?,
  );
}

Map<String, dynamic> _$_$_FareStructureToJson(_$_FareStructure instance) =>
    <String, dynamic>{
      'fare': instance.fare,
      'fare_fixed': instance.fareFixed,
      'fare_per_km': instance.farePerKm,
      'fare_per_min': instance.farePerMin,
      'fare_per_waiting_min': instance.farePerWaitingMin,
      'vehicle_type': instance.vehicleType,
      'ride_type': instance.rideType,
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

_$_DeliveryCharge _$_$_DeliveryChargeFromJson(Map<String, dynamic> json) {
  return _$_DeliveryCharge(
    currency: json['currency'] as String?,
    tnc: json['tnc'] as String?,
    cityId: json['city_id'] as int?,
    deliveryText: json['delivery_text'] as String?,
    deliveryChargesInst: (json['delivery_charges_inst'] as List<dynamic>?)
        ?.map((e) => Map<String, String>.from(e as Map))
        .toList(),
    estimatedDistance: json['estimated_distance'] as String?,
    estimatedCharges: json['estimated_charges'] as String?,
  );
}

Map<String, dynamic> _$_$_DeliveryChargeToJson(_$_DeliveryCharge instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'tnc': instance.tnc,
      'city_id': instance.cityId,
      'delivery_text': instance.deliveryText,
      'delivery_charges_inst': instance.deliveryChargesInst,
      'estimated_distance': instance.estimatedDistance,
      'estimated_charges': instance.estimatedCharges,
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
    enabled: json['enabled'] as int?,
  );
}

Map<String, dynamic> _$_$_PaymentToJson(_$_Payment instance) =>
    <String, dynamic>{
      'name': instance.name,
      'enabled': instance.enabled,
    };

_$_Transaction _$_$_TransactionFromJson(Map<String, dynamic> json) {
  return _$_Transaction(
    transactionId: json['txn_id'] as int?,
    type: json['txn_type'] as String?,
    amount: (json['amount'] as num?)?.toDouble(),
    transactionDate: json['txn_date'] as String?,
    transactionTime: json['txn_time'] as String?,
    loggedOn: json['logged_on'] == null
        ? null
        : DateTime.parse(json['logged_on'] as String),
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
      'logged_on': instance.loggedOn?.toIso8601String(),
      'wallet_txn': instance.walletTxn,
      'paytm': instance.paytm,
      'mobikwik': instance.mobikwik,
      'freecharge': instance.freeCharge,
      'reference_id': instance.referenceId,
      'event': instance.event,
      'comment': instance.comment,
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
    orderStatus: json['order_status'] as int?,
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
      'order_status': instance.orderStatus,
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
    driverName: json['driver_name'] as String?,
    driverImage: json['driver_image'] as String?,
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
      'driver_name': instance.driverName,
      'driver_image': instance.driverImage,
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

_$_RideSummary _$_$_RideSummaryFromJson(Map<String, dynamic> json) {
  return _$_RideSummary(
    flag: json['flag'] as int?,
    distance: (json['distance'] as num?)?.toDouble(),
    status: json['status'] as int?,
    currency: json['currency'] as String?,
    fare: json['fare'] as int?,
    error: json['error'] as String?,
    message: json['message'] as String?,
    pickupAddress: json['pickup_address'] as String?,
    pickupLatitude: (json['pickup_latitude'] as num?)?.toDouble(),
    pickupLongitude: (json['pickup_longitude'] as num?)?.toDouble(),
    dropLatitude: (json['drop_latitude'] as num?)?.toDouble(),
    dropLongitude: (json['drop_longitude'] as num?)?.toDouble(),
    dropAddress: json['drop_address'] as String?,
    pickupTime: json['pickup_time'] == null
        ? null
        : DateTime.parse(json['pickup_time'] as String),
    dropTime: json['drop_time'] == null
        ? null
        : DateTime.parse(json['drop_time'] as String),
    rideDate: json['ride_date'] == null
        ? null
        : DateTime.parse(json['ride_date'] as String),
    rideType: json['ride_type'] as int?,
    toPay: json['to_pay'] as int?,
    rideTime: json['ride_time'] as int?,
    vehicleType: json['vehicle_type'] as int?,
    driverId: json['driver_id'] as int?,
    driverRating: json['driver_rating'] as int?,
    engagementId: json['engagement_id'] as int?,
    userId: json['user_id'] as int?,
    waitTime: json['wait_time'] as int?,
    distanceUnit: json['distance_unit'] as String?,
    cancellationCharges: json['cancellation_charges'] as int?,
    isCorporateRide: json['is_corporate_ride'] as int?,
    baseFare: json['base_fare'] as int?,
    fareFactor: json['fare_factor'] as int?,
    balance: json['jugnoo_balance'] as int?,
    totalRides: json['total_rides_as_user'] as int?,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
  );
}

Map<String, dynamic> _$_$_RideSummaryToJson(_$_RideSummary instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'distance': instance.distance,
      'status': instance.status,
      'currency': instance.currency,
      'fare': instance.fare,
      'error': instance.error,
      'message': instance.message,
      'pickup_address': instance.pickupAddress,
      'pickup_latitude': instance.pickupLatitude,
      'pickup_longitude': instance.pickupLongitude,
      'drop_latitude': instance.dropLatitude,
      'drop_longitude': instance.dropLongitude,
      'drop_address': instance.dropAddress,
      'pickup_time': instance.pickupTime?.toIso8601String(),
      'drop_time': instance.dropTime?.toIso8601String(),
      'ride_date': instance.rideDate?.toIso8601String(),
      'ride_type': instance.rideType,
      'to_pay': instance.toPay,
      'ride_time': instance.rideTime,
      'vehicle_type': instance.vehicleType,
      'driver_id': instance.driverId,
      'driver_rating': instance.driverRating,
      'engagement_id': instance.engagementId,
      'user_id': instance.userId,
      'wait_time': instance.waitTime,
      'distance_unit': instance.distanceUnit,
      'cancellation_charges': instance.cancellationCharges,
      'is_corporate_ride': instance.isCorporateRide,
      'base_fare': instance.baseFare,
      'fare_factor': instance.fareFactor,
      'jugnoo_balance': instance.balance,
      'total_rides_as_user': instance.totalRides,
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
    error: json['error'] as String?,
    userData: json['user_data'] == null
        ? null
        : User.fromJson(json['user_data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_VerifyResponseToJson(_$_VerifyResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'error': instance.error,
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
    currency: json['currency'] as String?,
    fareStructure: (json['fare_structure'] as List<dynamic>?)
        ?.map((e) => FareStructure.fromJson(e as Map<String, dynamic>))
        .toList(),
    distanceUnit: json['distance_unit'] as String?,
  );
}

Map<String, dynamic> _$_$_FindDriversResponseToJson(
        _$_FindDriversResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'error': instance.error,
      'drivers': instance.drivers,
      'regions': instance.regions,
      'currency': instance.currency,
      'fare_structure': instance.fareStructure,
      'distance_unit': instance.distanceUnit,
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
    paymentModes: (json['payment_mode_config_data'] as List<dynamic>?)
        ?.map((e) => Payment.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_WalletResponseToJson(_$_WalletResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'error': instance.error,
      'jugnoo_balance': instance.walletBalance,
      'payment_mode_config_data': instance.paymentModes,
    };

_$_PayWithHelloCashResponse _$_$_PayWithHelloCashResponseFromJson(
    Map<String, dynamic> json) {
  return _$_PayWithHelloCashResponse(
    json['flag'] as int,
    amount: json['amount'] as int?,
    code: json['code'] as int?,
    message: json['message'] as String?,
    currency: json['currency'] as String?,
    date: json['date'] as String?,
    description: json['description'] as String?,
    expires: json['expires'] as String?,
    from: json['from'] as String?,
    fromName: json['fromname'] as String?,
    id: json['id'] as String?,
    status: json['status'] as String?,
    statusDetail: json['statusdetail'] as String?,
    toName: json['toname'] as String?,
    to: json['to'] as String?,
    isUpcoming: json['isupcoming'] as String?,
    error: json['error'] as String?,
  );
}

Map<String, dynamic> _$_$_PayWithHelloCashResponseToJson(
        _$_PayWithHelloCashResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'amount': instance.amount,
      'code': instance.code,
      'message': instance.message,
      'currency': instance.currency,
      'date': instance.date,
      'description': instance.description,
      'expires': instance.expires,
      'from': instance.from,
      'fromname': instance.fromName,
      'id': instance.id,
      'status': instance.status,
      'statusdetail': instance.statusDetail,
      'toname': instance.toName,
      'to': instance.to,
      'isupcoming': instance.isUpcoming,
      'error': instance.error,
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
    bearing: (json['bearing'] as num?)?.toDouble(),
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

_$_DeliveryDetailResponse _$_$_DeliveryDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _$_DeliveryDetailResponse(
    json['flag'] as int,
    message: json['message'] as String?,
    error: json['error'] as String?,
    deliveryCharges: json['delivery_charges'] == null
        ? null
        : DeliveryCharge.fromJson(
            json['delivery_charges'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DeliveryDetailResponseToJson(
        _$_DeliveryDetailResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'error': instance.error,
      'delivery_charges': instance.deliveryCharges,
    };

_$_DeliveryAgentResponse _$_$_DeliveryAgentResponseFromJson(
    Map<String, dynamic> json) {
  return _$_DeliveryAgentResponse(
    json['flag'] as int,
    message: json['message'] as String?,
    error: json['error'] as String?,
    currency: json['currency'] as String?,
    vehiclesInfo: (json['vehicles_info'] as List<dynamic>?)
        ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
        .toList(),
    currencyCode: json['currency_code'] as String?,
  );
}

Map<String, dynamic> _$_$_DeliveryAgentResponseToJson(
        _$_DeliveryAgentResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'error': instance.error,
      'currency': instance.currency,
      'vehicles_info': instance.vehiclesInfo,
      'currency_code': instance.currencyCode,
    };

_$_DeliveryTrackingResponse _$_$_DeliveryTrackingResponseFromJson(
    Map<String, dynamic> json) {
  return _$_DeliveryTrackingResponse(
    json['flag'] as int,
    message: json['message'] as String?,
    error: json['error'] as String?,
    status: json['status'] as int?,
    latitude: (json['latitude'] as num?)?.toDouble(),
    longitude: (json['longitude'] as num?)?.toDouble(),
    bearing: (json['bearing'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_DeliveryTrackingResponseToJson(
        _$_DeliveryTrackingResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'error': instance.error,
      'status': instance.status,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'bearing': instance.bearing,
    };

_$_OrderHistory _$_$_OrderHistoryFromJson(Map<String, dynamic> json) {
  return _$_OrderHistory(
    status: json['status'] as int?,
    category: json['category'] as int?,
    amount: (json['amount'] as num?)?.toDouble(),
    currency: json['currency'] as String?,
    details: json['details'] as String?,
    orderId: json['order_id'] as int?,
    fromAddress: json['from_address'] as String?,
    fromLatitude: (json['from_latitude'] as num?)?.toDouble(),
    fromLongitude: (json['from_longitude'] as num?)?.toDouble(),
    toAddress: json['to_address'] as String?,
    toLatitude: (json['to_latitude'] as num?)?.toDouble(),
    toLongitude: (json['to_longitude'] as num?)?.toDouble(),
    vehicleType: json['vehicle_type'] as int?,
    isImmediate: json['is_immediate'] as int?,
    deliveryId: json['delivery_id'] as int?,
    orderStatusInt: json['order_status_int'] as int?,
    deliveryCharges: (json['delivery_charges'] as num?)?.toDouble(),
    totalDistance: (json['total_distance'] as num?)?.toDouble(),
    totalTime: json['total_time'] as int?,
    driverName: json['driver_name'] as String?,
    paymentMode: json['payment_mode'] as int?,
    cityId: json['city_id'] as int?,
    currencyCode: json['currency_code'] as String?,
    driverPhoneNo: json['driver_phone_no'] as String?,
    productType: json['product_type'] as int?,
    orderStatus: json['order_status'] as String?,
    liveTracking: json['live_tracking'] == null
        ? null
        : LiveTracking.fromJson(json['live_tracking'] as Map<String, dynamic>),
    driverInfo: json['driver_info'] == null
        ? null
        : Driver.fromJson(json['driver_info'] as Map<String, dynamic>),
    orderTime: json['order_time'] == null
        ? null
        : DateTime.parse(json['order_time'] as String),
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
  );
}

Map<String, dynamic> _$_$_OrderHistoryToJson(_$_OrderHistory instance) =>
    <String, dynamic>{
      'status': instance.status,
      'category': instance.category,
      'amount': instance.amount,
      'currency': instance.currency,
      'details': instance.details,
      'order_id': instance.orderId,
      'from_address': instance.fromAddress,
      'from_latitude': instance.fromLatitude,
      'from_longitude': instance.fromLongitude,
      'to_address': instance.toAddress,
      'to_latitude': instance.toLatitude,
      'to_longitude': instance.toLongitude,
      'vehicle_type': instance.vehicleType,
      'is_immediate': instance.isImmediate,
      'delivery_id': instance.deliveryId,
      'order_status_int': instance.orderStatusInt,
      'delivery_charges': instance.deliveryCharges,
      'total_distance': instance.totalDistance,
      'total_time': instance.totalTime,
      'driver_name': instance.driverName,
      'payment_mode': instance.paymentMode,
      'city_id': instance.cityId,
      'currency_code': instance.currencyCode,
      'driver_phone_no': instance.driverPhoneNo,
      'product_type': instance.productType,
      'order_status': instance.orderStatus,
      'live_tracking': instance.liveTracking,
      'driver_info': instance.driverInfo,
      'order_time': instance.orderTime?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
    };

_$_LiveTracking _$_$_LiveTrackingFromJson(Map<String, dynamic> json) {
  return _$_LiveTracking(
    message: json['message'] as String?,
    error: json['error'] as String?,
    status: json['status'] as int?,
    deliveryId: json['delivery_id'] as int?,
    deliveryLatitude: (json['delivery_latitude'] as num?)?.toDouble(),
    deliveryLongitude: (json['delivery_longitude'] as num?)?.toDouble(),
    pickupLatitude: (json['pickup_latitude'] as num?)?.toDouble(),
    pickupLongitude: (json['pickup_longitude'] as num?)?.toDouble(),
    driverPhoneNo: json['driver_phone_no'] as String?,
    driverName: json['driver_name'] as String?,
    driverImage: json['driver_image'] as String?,
    driverId: json['driver_id'] as int?,
    pickupCompleted: json['pickup_completed'] as int?,
  );
}

Map<String, dynamic> _$_$_LiveTrackingToJson(_$_LiveTracking instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'status': instance.status,
      'delivery_id': instance.deliveryId,
      'delivery_latitude': instance.deliveryLatitude,
      'delivery_longitude': instance.deliveryLongitude,
      'pickup_latitude': instance.pickupLatitude,
      'pickup_longitude': instance.pickupLongitude,
      'driver_phone_no': instance.driverPhoneNo,
      'driver_name': instance.driverName,
      'driver_image': instance.driverImage,
      'driver_id': instance.driverId,
      'pickup_completed': instance.pickupCompleted,
    };

_$_OrderHistoryResponse _$_$_OrderHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return _$_OrderHistoryResponse(
    json['flag'] as int,
    message: json['message'] as String?,
    error: json['error'] as String?,
    orderHistory: (json['order_history'] as List<dynamic>?)
        ?.map((e) => OrderHistory.fromJson(e as Map<String, dynamic>))
        .toList(),
    historySize: json['history_size'] as int?,
  );
}

Map<String, dynamic> _$_$_OrderHistoryResponseToJson(
        _$_OrderHistoryResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'error': instance.error,
      'order_history': instance.orderHistory,
      'history_size': instance.historySize,
    };

_$_CancellationReasonResponse _$_$_CancellationReasonResponseFromJson(
    Map<String, dynamic> json) {
  return _$_CancellationReasonResponse(
    json['flag'] as int,
    message: json['message'] as String?,
    error: json['error'] as String?,
    cancelOptions: (json['cancel_options'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    additionalReasons: json['additional_reasons'] as String?,
  );
}

Map<String, dynamic> _$_$_CancellationReasonResponseToJson(
        _$_CancellationReasonResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'error': instance.error,
      'cancel_options': instance.cancelOptions,
      'additional_reasons': instance.additionalReasons,
    };

_$_OrderDeliveryResponse _$_$_OrderDeliveryResponseFromJson(
    Map<String, dynamic> json) {
  return _$_OrderDeliveryResponse(
    json['flag'] as int,
    message: json['message'] as String?,
    error: json['error'] as String?,
    status: json['status'] as int?,
    orderId: json['order_id'] as int?,
    channelName: json['fugu_channel_name'] as String?,
    channelId: json['fugu_channel_id'] as String?,
  );
}

Map<String, dynamic> _$_$_OrderDeliveryResponseToJson(
        _$_OrderDeliveryResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'error': instance.error,
      'status': instance.status,
      'order_id': instance.orderId,
      'fugu_channel_name': instance.channelName,
      'fugu_channel_id': instance.channelId,
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

_$_UserRideCount _$_$_UserRideCountFromJson(Map<String, dynamic> json) {
  return _$_UserRideCount(
    completedRides: json['completed_rides'] as int?,
    cancelledRides: json['cancelled_rides'] as int?,
    totalMoneySpent: json['total_money_spent'] as int?,
  );
}

Map<String, dynamic> _$_$_UserRideCountToJson(_$_UserRideCount instance) =>
    <String, dynamic>{
      'completed_rides': instance.completedRides,
      'cancelled_rides': instance.cancelledRides,
      'total_money_spent': instance.totalMoneySpent,
    };

_$_OffersResponse _$_$_OffersResponseFromJson(Map<String, dynamic> json) {
  return _$_OffersResponse(
    flag: json['flag'] as int?,
    message: json['message'] as String?,
    error: json['error'] as String?,
    promotions: json['promotions'] as bool?,
    airtime: json['airtime'] as bool?,
    transfer: json['transfer'] as bool?,
    donate: json['donate'] as bool?,
    walletBalance: json['wallet_balance'] as int?,
  );
}

Map<String, dynamic> _$_$_OffersResponseToJson(_$_OffersResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'error': instance.error,
      'promotions': instance.promotions,
      'airtime': instance.airtime,
      'transfer': instance.transfer,
      'donate': instance.donate,
      'wallet_balance': instance.walletBalance,
    };

_$_PointTransaction _$_$_PointTransactionFromJson(Map<String, dynamic> json) {
  return _$_PointTransaction(
    type: json['type'] as String?,
    points: json['points'] as int?,
    time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
  );
}

Map<String, dynamic> _$_$_PointTransactionToJson(
        _$_PointTransaction instance) =>
    <String, dynamic>{
      'type': instance.type,
      'points': instance.points,
      'time': instance.time?.toIso8601String(),
    };

_$_PointTransactionResponse _$_$_PointTransactionResponseFromJson(
    Map<String, dynamic> json) {
  return _$_PointTransactionResponse(
    json['flag'] as int,
    error: json['error'] as String?,
    message: (json['message'] as List<dynamic>?)
        ?.map((e) => PointTransaction.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_PointTransactionResponseToJson(
        _$_PointTransactionResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'error': instance.error,
      'message': instance.message,
    };

_$_AirtimeHistory _$_$_AirtimeHistoryFromJson(Map<String, dynamic> json) {
  return _$_AirtimeHistory(
    amount: json['amount'] as int?,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    voucherNumber: json['voucher_number'] as String?,
  );
}

Map<String, dynamic> _$_$_AirtimeHistoryToJson(_$_AirtimeHistory instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'date': instance.date?.toIso8601String(),
      'voucher_number': instance.voucherNumber,
    };

_$_Promotion _$_$_PromotionFromJson(Map<String, dynamic> json) {
  return _$_Promotion(
    title: json['title'] as String?,
    city: json['city'] as int?,
    promoId: json['promo_id'] as int?,
    promoType: json['promo_type'] as int?,
    startFrom: json['start_from'] == null
        ? null
        : DateTime.parse(json['start_from'] as String),
    endOn: json['end_on'] == null
        ? null
        : DateTime.parse(json['end_on'] as String),
    allowedVehicles: (json['allowed_vehicles'] as List<dynamic>?)
        ?.map((e) => e as int)
        .toList(),
    perDayLimit: json['per_day_limit'] as int?,
    validityText: json['validity_text'] as String?,
    promoText: json['promo_text'] as String?,
  );
}

Map<String, dynamic> _$_$_PromotionToJson(_$_Promotion instance) =>
    <String, dynamic>{
      'title': instance.title,
      'city': instance.city,
      'promo_id': instance.promoId,
      'promo_type': instance.promoType,
      'start_from': instance.startFrom?.toIso8601String(),
      'end_on': instance.endOn?.toIso8601String(),
      'allowed_vehicles': instance.allowedVehicles,
      'per_day_limit': instance.perDayLimit,
      'validity_text': instance.validityText,
      'promo_text': instance.promoText,
    };

_$_Coupon _$_$_CouponFromJson(Map<String, dynamic> json) {
  return _$_Coupon(
    title: json['title'] as String?,
    subtitle: json['subtitle'] as String?,
    description: json['description'] as String?,
    type: json['type'] as int?,
    discount: json['discount'] as int?,
    maximum: json['maximum'] as int?,
    status: json['status'] as int?,
    couponId: json['coupon_id'] as int?,
    couponType: json['coupon_type'] as int?,
    allowedVehicles: (json['allowed_vehicles'] as List<dynamic>?)
        ?.map((e) => e as int)
        .toList(),
    expiryDate: json['expiry_date'] == null
        ? null
        : DateTime.parse(json['expiry_date'] as String),
  );
}

Map<String, dynamic> _$_$_CouponToJson(_$_Coupon instance) => <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'description': instance.description,
      'type': instance.type,
      'discount': instance.discount,
      'maximum': instance.maximum,
      'status': instance.status,
      'coupon_id': instance.couponId,
      'coupon_type': instance.couponType,
      'allowed_vehicles': instance.allowedVehicles,
      'expiry_date': instance.expiryDate?.toIso8601String(),
    };

_$_PromotionsResponse _$_$_PromotionsResponseFromJson(
    Map<String, dynamic> json) {
  return _$_PromotionsResponse(
    json['flag'] as int,
    message: json['message'] as String?,
    error: json['error'] as String?,
    coupons: (json['coupons'] as List<dynamic>?)
        ?.map((e) => Coupon.fromJson(e as Map<String, dynamic>))
        .toList(),
    promotions: (json['promotions'] as List<dynamic>?)
        ?.map((e) => Promotion.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_PromotionsResponseToJson(
        _$_PromotionsResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'error': instance.error,
      'coupons': instance.coupons,
      'promotions': instance.promotions,
    };

_$_LegalResponse _$_$_LegalResponseFromJson(Map<String, dynamic> json) {
  return _$_LegalResponse(
    data: json['data'] as String?,
  );
}

Map<String, dynamic> _$_$_LegalResponseToJson(_$_LegalResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
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
