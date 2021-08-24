import 'package:freezed_annotation/freezed_annotation.dart';
part 'freezed_models.freezed.dart';
part 'freezed_models.g.dart';

/*
  List of all application model/ data classes.
  With Class Immutability, json parser using freezed annotations.
  Use the following to run the code generator
    build and generate files
	  $ flutter pub run build_runner build 
    or
	  $ flutter pub run build_runner build --delete-conflicting-outputs
*/

@freezed
class User with _$User {
  factory User(
    @JsonKey(name: 'user_name') String userName, {
    int? flag,
    String? erorr,
    int? gender,
    @JsonKey(name: 'user_email') String? email,
    @JsonKey(name: 'user_image') String? userImage,
    @JsonKey(name: 'country_code', fromJson: _countryCodeConverter)
        String? countryCode,
    @JsonKey(name: 'phone_no') String? phoneNo,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    @JsonKey(name: 'auth_key') String? authKey,
    @JsonKey(name: 'email_verification_status') int? emailVerificationStatus,
    @JsonKey(name: 'operator_id') int? operatorId,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'city_id') int? cityId,
    @JsonKey(name: 'referral_code') String? referralCode,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'default_client_id') String? defaultClientId,
  }) = _User;

  factory User.build({User? user}) => user ?? User('');
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
abstract class Files with _$Files {
  factory Files(@JsonKey(name: '_id') String id, String userId, String url,
      {String? name,
      String? originalName,
      String? contentType,
      int? size,
      DateTime? createdAt,
      DateTime? updatedAt}) = _Files;

  factory Files.build({Files? file}) => file ?? Files('', '', '');
  factory Files.fromJson(Map<String, dynamic> json) => _$FilesFromJson(json);
}

@freezed
class Vehicle with _$Vehicle {
  factory Vehicle({
    String? name,
    String? liscensePlate,
    double? price,
  }) = _Vehicle;

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);
}

@freezed
class Driver with _$Driver {
  factory Driver({
    String? name,
    double? rating,
  }) = _Driver;

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);
}

@freezed
class Order with _$Order {
  factory Order({
    Driver? driver,
    double? amount,
    DateTime? orderTime,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@freezed
class Payment with _$Payment {
  factory Payment({
    String? name,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}

@freezed
class Transaction with _$Transaction {
  factory Transaction({
    String? type,
    DateTime? date,
    double? amount,
    String? reason,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}

@freezed
class Coupon with _$Coupon {
  factory Coupon({
    String? name,
    int? point,
    DateTime? expireDate,
  }) = _Coupon;

  factory Coupon.fromJson(Map<String, dynamic> json) => _$CouponFromJson(json);
}

// response models
@freezed
abstract class BasicResponse with _$BasicResponse {
  factory BasicResponse(
    int flag, {
    String? message,
    String? error,
  }) = _BasicResponse;

  factory BasicResponse.fromJson(Map<String, dynamic> json) =>
      _$BasicResponseFromJson(json);
}

@freezed
abstract class SignUpResponse with _$SignUpResponse {
  factory SignUpResponse(
    int flag, {
    String? message,
    @JsonKey(name: 'otp_length') int? otpLength,
  }) = _SignUpResponse;

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}

@freezed
abstract class VerifyResponse with _$VerifyResponse {
  factory VerifyResponse(
    int flag, {
    String? message,
    @JsonKey(name: 'user_data') User? userData,
  }) = _VerifyResponse;

  factory VerifyResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyResponseFromJson(json);
}

String _countryCodeConverter(dynamic val) {
  return val is int ? '+$val' : val;
}
