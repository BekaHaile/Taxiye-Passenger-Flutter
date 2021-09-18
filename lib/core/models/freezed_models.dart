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
    @JsonKey(name: 'region_id') int? regionId,
    @JsonKey(name: 'operator_id') int? operatorId,
    @JsonKey(name: 'region_name') String? regionName,
    @JsonKey(name: 'vehicle_type') int? vehicleType,
    @JsonKey(name: 'icon_set') String? iconSet,
    @JsonKey(name: 'ride_type') int? rideType,
    @JsonKey(name: 'max_people') int? maxPeople,
    @JsonKey(name: 'region_fare') VehicleFare? regionFare,
    VehicleImage? images,
    String? vehicleNumber,
  }) = _Vehicle;

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);
}

@freezed
class VehicleFare with _$VehicleFare {
  factory VehicleFare({
    int? fare,
    @JsonKey(name: 'min_fare') int? minFare,
    @JsonKey(name: 'max_fare') int? maxFare,
    @JsonKey(name: 'original_fare') int? originalFare,
    @JsonKey(name: 'ride_distance') double? rideDistance,
    String? currency,
    @JsonKey(name: 'currency_symbol') String? currencySymbol,
    @JsonKey(name: 'fare_text') String? fareText,
    @JsonKey(name: 'distance_unit') String? distanceUnit,
  }) = _VehicleFare;

  factory VehicleFare.fromJson(Map<String, dynamic> json) =>
      _$VehicleFareFromJson(json);
}

@freezed
class VehicleImage with _$VehicleImage {
  factory VehicleImage({
    @JsonKey(name: 'tab_normal') String? tabNormal,
    @JsonKey(name: 'tab_highlighted') String? tabHighlighted,
    @JsonKey(name: 'ride_now_normal') String? rideNowNormal,
    @JsonKey(name: 'driver_icon') String? driverIcon,
  }) = _VehicleImage;

  factory VehicleImage.fromJson(Map<String, dynamic> json) =>
      _$VehicleImageFromJson(json);
}

@freezed
class Driver with _$Driver {
  factory Driver({
    @JsonKey(name: 'driver_id') int? driverId,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'phone_no') String? phoneNo,
    double? latitude,
    double? longitude,
    double? rating,
    @JsonKey(name: 'city_id') int? cityId,
    @JsonKey(name: 'driver_image') String? driverImage,
    @JsonKey(name: 'vehicle_no') String? vehicleNo,
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
    @JsonKey(name: 'txn_id') int? transactionId,
    @JsonKey(name: 'txn_type') String? type,
    @JsonKey(name: 'amount') int? amount,
    @JsonKey(name: 'txn_date') String? transactionDate,
    @JsonKey(name: 'txn_time') String? transactionTime,
    @JsonKey(name: 'logged_on') String? loggedOn,
    @JsonKey(name: 'wallet_txn') int? walletTxn,
    @JsonKey(name: 'paytm') int? paytm,
    @JsonKey(name: 'mobikwik') int? mobikwik,
    @JsonKey(name: 'freecharge') int? freeCharge,
    @JsonKey(name: 'reference_id') int? referenceId,
    @JsonKey(name: 'event') int? event,
    @JsonKey(name: 'comment') String? comment,
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

@freezed
class NotificationMessage with _$NotificationMessage {
  factory NotificationMessage(
    int flag, {
    String? title,
    String? message,
    double? rating,
    String? fare,
    String? log,
    String? error,
    @JsonKey(name: 'phone_no') String? phoneNo,
    @JsonKey(name: 'driver_id') int? driverId,
    @JsonKey(name: 'driver_car_no') String? driverCarNo,
    @JsonKey(name: 'user_image') String? userImage,
    @JsonKey(name: 'title_ios') String? titleIos,
    @JsonKey(name: 'message_ios') String? messageIos,
    @JsonKey(name: 'vehicle_name') String? vehicleName,
    @JsonKey(name: 'vehicle_type') int? vehicleType,
    @JsonKey(name: 'session_id') int? sessionId,
    @JsonKey(name: 'engagement_id') String? engagementId,
    @JsonKey(name: 'driver_car_image') String? driverCarImage,
    @JsonKey(name: 'to_pay') String? toPay,
    @JsonKey(name: 'payment_mode') int? paymentMode,
    @JsonKey(name: 'distance_travelled') String? distanceTravelled,
    @JsonKey(name: 'ride_time') String? rideTime,
    @JsonKey(name: 'distance_unit') String? distanceUnit,
    @JsonKey(name: 'paid_using_wallet') String? paidUsingWallet,
    String? discount,
  }) = _NotificationMessage;

  factory NotificationMessage.fromJson(Map<String, dynamic> json) =>
      _$NotificationMessageFromJson(json);
}

@freezed
abstract class RideDetail with _$RideDetail {
  factory RideDetail({
    double? fare,
    int? paymentMode,
    double? distanceTraveled,
    double? discount,
    double? paidUsingWallet,
    int? rideTime,
    String? distanceUnit,
    double? toPay,
  }) = _RideDetail;

  factory RideDetail.fromJson(Map<String, dynamic> json) =>
      _$RideDetailFromJson(json);
}

// response models
@freezed
abstract class BasicResponse with _$BasicResponse {
  factory BasicResponse(
    int flag, {
    String? message,
    String? error,
    String? log,
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
  return val != null
      ? val is int
          ? '+$val'
          : val
      : '';
}

@freezed
abstract class FindDriversResponse with _$FindDriversResponse {
  factory FindDriversResponse(
    int flag, {
    String? error,
    List<Driver>? drivers,
    List<Vehicle>? regions,
  }) = _FindDriversResponse;

  factory FindDriversResponse.fromJson(Map<String, dynamic> json) =>
      _$FindDriversResponseFromJson(json);
}

@freezed
abstract class RequestRideResponse with _$RequestRideResponse {
  factory RequestRideResponse(
    int flag, {
    String? error,
    String? message,
    String? log,
    @JsonKey(name: 'order_id') int? orderId,
    @JsonKey(name: 'session_id') int? sessionId,
    @JsonKey(name: 'pickup_location_address') String? pickupLocationAddress,
    @JsonKey(name: 'drop_location_address') String? dropLocationAddress,
    @JsonKey(name: 'start_time') String? startTime,
    double? latitude,
    double? longitude,
  }) = _RequestRideResponse;

  factory RequestRideResponse.fromJson(Map<String, dynamic> json) =>
      _$RequestRideResponseFromJson(json);
}

@freezed
abstract class WalletResponse with _$WalletResponse {
  factory WalletResponse(
    int flag, {
    String? message,
    String? error,
    @JsonKey(name: 'jugnoo_balance') double? walletBalance,
  }) = _WalletResponse;

  factory WalletResponse.fromJson(Map<String, dynamic> json) =>
      _$WalletResponseFromJson(json);
}

@freezed
abstract class TransactionHistoryResponse with _$TransactionHistoryResponse {
  factory TransactionHistoryResponse(
    int flag, {
    String? message,
    String? error,
    @JsonKey(name: 'transactions') List<Transaction>? transactions,
  }) = _TransactionHistoryResponse;

  factory TransactionHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionHistoryResponseFromJson(json);
}

@freezed
abstract class TransferResponse with _$TransferResponse {
  factory TransferResponse(
    int flag, {
    String? message,
    String? error,
    @JsonKey(name: 'credit_balance') double? walletBalance,
  }) = _TransferResponse;

  factory TransferResponse.fromJson(Map<String, dynamic> json) =>
      _$TransferResponseFromJson(json);
}

class DateConverter implements JsonConverter<DateTime, dynamic> {
  const DateConverter();

  @override
  DateTime fromJson(dynamic date) {
    if (date is String) {
      return DateTime.parse(date);
    } else {
      return DateTime.now();
    }
  }

  @override
  String toJson(DateTime date) => date.toString();
}
