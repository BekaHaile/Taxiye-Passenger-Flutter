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
    name: json['name'] as String?,
    liscensePlate: json['liscensePlate'] as String?,
    price: (json['price'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_VehicleToJson(_$_Vehicle instance) =>
    <String, dynamic>{
      'name': instance.name,
      'liscensePlate': instance.liscensePlate,
      'price': instance.price,
    };

_$_Driver _$_$_DriverFromJson(Map<String, dynamic> json) {
  return _$_Driver(
    name: json['name'] as String?,
    rating: (json['rating'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_DriverToJson(_$_Driver instance) => <String, dynamic>{
      'name': instance.name,
      'rating': instance.rating,
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
    type: json['type'] as String?,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    amount: (json['amount'] as num?)?.toDouble(),
    reason: json['reason'] as String?,
  );
}

Map<String, dynamic> _$_$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'type': instance.type,
      'date': instance.date?.toIso8601String(),
      'amount': instance.amount,
      'reason': instance.reason,
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

_$_BasicResponse _$_$_BasicResponseFromJson(Map<String, dynamic> json) {
  return _$_BasicResponse(
    json['flag'] as int,
    message: json['message'] as String?,
    error: json['error'] as String?,
  );
}

Map<String, dynamic> _$_$_BasicResponseToJson(_$_BasicResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'error': instance.error,
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
