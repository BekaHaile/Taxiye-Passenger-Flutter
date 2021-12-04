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
    String? locale,
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
    @JsonKey(name: 'user_identifier') String? userIdentifier,
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
    VehicleImage? images,
    String? vehicleNumber,
    int? type,
    String? name,
    FareStructure? fareStructure,
    DeliveryCharge? deliveryCharge,
    bool? hasPromoCoupon,
    @JsonKey(name: 'region_id') int? regionId,
    @JsonKey(name: 'operator_id') int? operatorId,
    @JsonKey(name: 'region_name') String? regionName,
    @JsonKey(name: 'vehicle_type') int? vehicleType,
    @JsonKey(name: 'icon_set') String? iconSet,
    @JsonKey(name: 'ride_type') int? rideType,
    @JsonKey(name: 'max_people') int? maxPeople,
    @JsonKey(name: 'region_fare') VehicleFare? regionFare,
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
    @JsonKey(name: 'base_fare') int? baseFare,
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
class FareStructure with _$FareStructure {
  factory FareStructure({
    int? fare,
    @JsonKey(name: 'fare_fixed') int? fareFixed,
    @JsonKey(name: 'fare_per_km') int? farePerKm,
    @JsonKey(name: 'fare_per_min') int? farePerMin,
    @JsonKey(name: 'fare_per_waiting_min') int? farePerWaitingMin,
    @JsonKey(name: 'vehicle_type') int? vehicleType,
    @JsonKey(name: 'ride_type') int? rideType,
  }) = _FareStructure;

  factory FareStructure.fromJson(Map<String, dynamic> json) =>
      _$FareStructureFromJson(json);
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
class DeliveryCharge with _$DeliveryCharge {
  factory DeliveryCharge({
    String? currency,
    String? tnc,
    @JsonKey(name: 'city_id') int? cityId,
    @JsonKey(name: 'delivery_text') String? deliveryText,
    @JsonKey(name: 'delivery_charges_inst')
        List<Map<String, String>>? deliveryChargesInst,
    @JsonKey(name: 'estimated_distance') String? estimatedDistance,
    @JsonKey(name: 'estimated_charges') String? estimatedCharges,
  }) = _DeliveryCharge;

  factory DeliveryCharge.fromJson(Map<String, dynamic> json) =>
      _$DeliveryChargeFromJson(json);
}

@freezed
class Driver with _$Driver {
  factory Driver({
    double? latitude,
    double? longitude,
    double? rating,
    int? type,
    double? distance,
    @JsonKey(name: 'driver_id') int? driverId,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'driver_name') String? driverName,
    @JsonKey(name: 'phone_no') String? phoneNo,
    @JsonKey(name: 'avg_rating') double? avgRating,
    @JsonKey(name: 'city_id') int? cityId,
    @JsonKey(name: 'driver_image') String? driverImage,
    @JsonKey(name: 'vehicle_no') String? vehicleNo,
    @JsonKey(name: 'vehicle_type') int? vehicleType,
    @JsonKey(name: 'vehicle_brand') String? vehicleBrand,
    @JsonKey(name: 'vehicle_name') String? vehicleName,
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
    int? enabled,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}

@freezed
class Transaction with _$Transaction {
  factory Transaction({
    @JsonKey(name: 'txn_id') int? transactionId,
    @JsonKey(name: 'txn_type') String? type,
    @JsonKey(name: 'amount') double? amount,
    @JsonKey(name: 'txn_date') String? transactionDate,
    @JsonKey(name: 'txn_time') String? transactionTime,
    @JsonKey(name: 'logged_on') DateTime? loggedOn,
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
class NotificationMessage with _$NotificationMessage {
  factory NotificationMessage(
    int flag, {
    String? title,
    String? message,
    double? rating,
    String? fare,
    double? bearing,
    String? discount,
    String? log,
    String? error,
    @JsonKey(name: 'phone_no') String? phoneNo,
    @JsonKey(name: 'driver_id') int? driverId,
    @JsonKey(name: 'driver_car_no') String? driverCarNo,
    @JsonKey(name: 'vehicle_name') String? vehicleName,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'vehicle_model') String? vehicleModel,
    @JsonKey(name: 'user_image') String? userImage,
    @JsonKey(name: 'title_ios') String? titleIos,
    @JsonKey(name: 'message_ios') String? messageIos,
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
    @JsonKey(name: 'current_location_latitude') double? currentLocationLatitude,
    @JsonKey(name: 'current_location_longitude')
        double? currentLocationLongitude,
    @JsonKey(name: 'is_corporate_ride') int? isCorporateRide,
    @JsonKey(name: 'marker_icon') String? markerIcon,
    @JsonKey(name: 'order_status') int? orderStatus,
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

@freezed
abstract class Address with _$Address {
  factory Address({
    String? type,
    int? id,
    String? instr,
    @JsonKey(name: 'addr') String? addressName,
    @JsonKey(name: 'lat') String? latitude,
    @JsonKey(name: 'lng') String? longitude,
    @JsonKey(name: 'freq') int? frequency,
    @JsonKey(name: 'google_place_id') String? googlePlaceId,
    @JsonKey(name: 'is_confirmed') int? isConfirmed,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@freezed
abstract class ScheduledRide with _$ScheduledRide {
  factory ScheduledRide({
    double? latitude,
    double? longitude,
    int? status,
    int? modifiable,
    @JsonKey(name: 'op_drop_latitude') double? opDropLatitude,
    @JsonKey(name: 'op_drop_longitude') double? opDropLongitude,
    @JsonKey(name: 'pickup_id') int? pickupId,
    @JsonKey(name: 'preferred_payment_mode') int? preferredPaymentMode,
    @JsonKey(name: 'pickup_location_address') String? pickupLocationAddress,
    @JsonKey(name: 'drop_location_address') String? dropLocationAddress,
    @JsonKey(name: 'pickup_time') DateTime? pickupTime,
    @JsonKey(name: 'vehicle_name') String? vehicleName,
    @JsonKey(name: 'ride_type') int? rideType,
  }) = _ScheduledRide;

  factory ScheduledRide.fromJson(Map<String, dynamic> json) =>
      _$ScheduledRideFromJson(json);
}

@freezed
abstract class RideHistory with _$RideHistory {
  factory RideHistory({
    double? distance,
    double? longitude,
    int? status,
    int? modifiable,
    int? amount,
    String? currency,
    String? date,
    @JsonKey(name: 'pickup_address') String? pickupAddress,
    @JsonKey(name: 'pickup_latitude') double? pickupLatitude,
    @JsonKey(name: 'pickup_longitude') double? pickupLongitude,
    @JsonKey(name: 'drop_latitude') double? dropLatitude,
    @JsonKey(name: 'drop_longitude') double? dropLongitude,
    @JsonKey(name: 'drop_address') String? dropAddress,
    @JsonKey(name: 'ride_type') int? rideType,
    @JsonKey(name: 'is_cancelled_ride') int? isCancelledRide,
    @JsonKey(name: 'ride_time') int? rideTime,
    @JsonKey(name: 'vehicle_type') int? vehicleType,
    @JsonKey(name: 'driver_id') int? driverId,
    @JsonKey(name: 'driver_name') String? driverName,
    @JsonKey(name: 'driver_image') String? driverImage,
    @JsonKey(name: 'driver_rating') int? driverRating,
    @JsonKey(name: 'region_name') String? regionName,
    @JsonKey(name: 'engagement_id') int? engagementId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'manually_edited') int? manuallyEdited,
    @JsonKey(name: 'wait_time') int? waitTime,
    @JsonKey(name: 'autos_status_text') String? autosStatusText,
    @JsonKey(name: 'distance_unit') String? distanceUnit,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _RideHistory;

  factory RideHistory.fromJson(Map<String, dynamic> json) =>
      _$RideHistoryFromJson(json);
}

@freezed
abstract class RideSummary with _$RideSummary {
  factory RideSummary({
    int? flag,
    double? distance,
    int? status,
    String? currency,
    int? fare,
    String? error,
    String? message,
    @JsonKey(name: 'pickup_address') String? pickupAddress,
    @JsonKey(name: 'pickup_latitude') double? pickupLatitude,
    @JsonKey(name: 'pickup_longitude') double? pickupLongitude,
    @JsonKey(name: 'drop_latitude') double? dropLatitude,
    @JsonKey(name: 'drop_longitude') double? dropLongitude,
    @JsonKey(name: 'drop_address') String? dropAddress,
    @JsonKey(name: 'pickup_time') DateTime? pickupTime,
    @JsonKey(name: 'drop_time') DateTime? dropTime,
    @JsonKey(name: 'ride_date') DateTime? rideDate,
    @JsonKey(name: 'ride_type') int? rideType,
    @JsonKey(name: 'to_pay') int? toPay,
    @JsonKey(name: 'ride_time') int? rideTime,
    @JsonKey(name: 'vehicle_type') int? vehicleType,
    @JsonKey(name: 'driver_id') int? driverId,
    @JsonKey(name: 'driver_rating') int? driverRating,
    @JsonKey(name: 'engagement_id') int? engagementId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'wait_time') int? waitTime,
    @JsonKey(name: 'distance_unit') String? distanceUnit,
    @JsonKey(name: 'cancellation_charges') int? cancellationCharges,
    @JsonKey(name: 'is_corporate_ride') int? isCorporateRide,
    @JsonKey(name: 'base_fare') int? baseFare,
    @JsonKey(name: 'fare_factor') int? fareFactor,
    @JsonKey(name: 'jugnoo_balance') int? balance,
    @JsonKey(name: 'total_rides_as_user') int? totalRides,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _RideSummary;

  factory RideSummary.fromJson(Map<String, dynamic> json) =>
      _$RideSummaryFromJson(json);
}

@freezed
abstract class Corporate with _$Corporate {
  factory Corporate({
    @JsonKey(name: 'business_id') int? businessId,
    @JsonKey(name: 'partner_name') String? partnerName,
    @JsonKey(name: 'restricted_sub_regions') String? restrictedSubRegions,
  }) = _Corporate;

  factory Corporate.fromJson(Map<String, dynamic> json) =>
      _$CorporateFromJson(json);
}

@freezed
abstract class EmergencyContact with _$EmergencyContact {
  factory EmergencyContact({
    int? id,
    String? name,
    String? email,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'phone_no') String? phoneNo,
    @JsonKey(name: 'country_code') String? countryCode,
    @JsonKey(name: 'requested_on') DateTime? requestedOn,
    @JsonKey(name: 'verification_status') int? verificationStatus,
  }) = _EmergencyContact;

  factory EmergencyContact.fromJson(Map<String, dynamic> json) =>
      _$EmergencyContactFromJson(json);
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
    String? error,
    List<String>? cancelReasons,
    String? locale,
    String? callCenterNumber,
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
    String? currency,
    @JsonKey(name: 'fare_structure') List<FareStructure>? fareStructure,
    @JsonKey(name: 'distance_unit') String? distanceUnit,
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
    double? latitude,
    double? longitude,
    @JsonKey(name: 'order_id') int? orderId,
    @JsonKey(name: 'session_id') int? sessionId,
    @JsonKey(name: 'pickup_location_address') String? pickupLocationAddress,
    @JsonKey(name: 'drop_location_address') String? dropLocationAddress,
    @JsonKey(name: 'start_time') String? startTime,
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
    @JsonKey(name: 'payment_mode_config_data') List<Payment>? paymentModes,
  }) = _WalletResponse;

  factory WalletResponse.fromJson(Map<String, dynamic> json) =>
      _$WalletResponseFromJson(json);
}

@freezed
abstract class PayWithHelloCashResponse with _$PayWithHelloCashResponse {
  factory PayWithHelloCashResponse(
    int flag, {
    int? amount,
    int? code,
    String? message,
    String? currency,
    String? date,
    String? description,
    String? expires,
    String? from,
    @JsonKey(name: 'fromname') String? fromName,
    String? id,
    String? status,
    @JsonKey(name: 'statusdetail') String? statusDetail,
    @JsonKey(name: 'toname') String? toName,
    String? to,
    @JsonKey(name: 'isupcoming') String? isUpcoming,
    String? error,
  }) = _PayWithHelloCashResponse;

  factory PayWithHelloCashResponse.fromJson(Map<String, dynamic> json) =>
      _$PayWithHelloCashResponseFromJson(json);
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

@freezed
abstract class SavedPlacesResponse with _$SavedPlacesResponse {
  factory SavedPlacesResponse(
    int flag, {
    String? message,
    String? error,
    List<Address>? addresses,
  }) = _SavedPlacesResponse;

  factory SavedPlacesResponse.fromJson(Map<String, dynamic> json) =>
      _$SavedPlacesResponseFromJson(json);
}

@freezed
abstract class DriverLocationResponse with _$DriverLocationResponse {
  factory DriverLocationResponse(
    int flag, {
    double? latitude,
    double? longitude,
    int? eta,
    double? bearing,
  }) = _DriverLocationResponse;

  factory DriverLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$DriverLocationResponseFromJson(json);
}

@freezed
abstract class DeliveryDetailResponse with _$DeliveryDetailResponse {
  factory DeliveryDetailResponse(
    int flag, {
    String? message,
    String? error,
    @JsonKey(name: 'delivery_charges') DeliveryCharge? deliveryCharges,
  }) = _DeliveryDetailResponse;

  factory DeliveryDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$DeliveryDetailResponseFromJson(json);
}

@freezed
abstract class DeliveryAgentResponse with _$DeliveryAgentResponse {
  factory DeliveryAgentResponse(
    int flag, {
    String? message,
    String? error,
    String? currency,
    @JsonKey(name: 'vehicles_info') List<Vehicle>? vehiclesInfo,
    @JsonKey(name: 'currency_code') String? currencyCode,
  }) = _DeliveryAgentResponse;

  factory DeliveryAgentResponse.fromJson(Map<String, dynamic> json) =>
      _$DeliveryAgentResponseFromJson(json);
}

@freezed
abstract class DeliveryTrackingResponse with _$DeliveryTrackingResponse {
  factory DeliveryTrackingResponse(
    int flag, {
    String? message,
    String? error,
    int? status,
    double? latitude,
    double? longitude,
    double? bearing,
  }) = _DeliveryTrackingResponse;

  factory DeliveryTrackingResponse.fromJson(Map<String, dynamic> json) =>
      _$DeliveryTrackingResponseFromJson(json);
}

@freezed
abstract class OrderHistory with _$OrderHistory {
  factory OrderHistory({
    int? status,
    int? category,
    double? amount,
    String? currency,
    String? details,
    @JsonKey(name: 'order_id') int? orderId,
    @JsonKey(name: 'from_address') String? fromAddress,
    @JsonKey(name: 'from_latitude') double? fromLatitude,
    @JsonKey(name: 'from_longitude') double? fromLongitude,
    @JsonKey(name: 'to_address') String? toAddress,
    @JsonKey(name: 'to_latitude') double? toLatitude,
    @JsonKey(name: 'to_longitude') double? toLongitude,
    @JsonKey(name: 'vehicle_type') int? vehicleType,
    @JsonKey(name: 'is_immediate') int? isImmediate,
    @JsonKey(name: 'delivery_id') int? deliveryId,
    @JsonKey(name: 'order_status_int') int? orderStatusInt,
    @JsonKey(name: 'delivery_charges') double? deliveryCharges,
    @JsonKey(name: 'total_distance') double? totalDistance,
    @JsonKey(name: 'total_time') int? totalTime,
    @JsonKey(name: 'driver_name') String? driverName,
    @JsonKey(name: 'payment_mode') int? paymentMode,
    @JsonKey(name: 'city_id') int? cityId,
    @JsonKey(name: 'currency_code') String? currencyCode,
    @JsonKey(name: 'driver_phone_no') String? driverPhoneNo,
    @JsonKey(name: 'product_type') int? productType,
    @JsonKey(name: 'order_status') String? orderStatus,
    @JsonKey(name: 'live_tracking') LiveTracking? liveTracking,
    @JsonKey(name: 'driver_info') Driver? driverInfo,
    @JsonKey(name: 'order_time') DateTime? orderTime,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _OrderHistory;

  factory OrderHistory.fromJson(Map<String, dynamic> json) =>
      _$OrderHistoryFromJson(json);
}

@freezed
abstract class LiveTracking with _$LiveTracking {
  factory LiveTracking({
    String? message,
    String? error,
    int? status,
    @JsonKey(name: 'delivery_id') int? deliveryId,
    @JsonKey(name: 'delivery_latitude') double? deliveryLatitude,
    @JsonKey(name: 'delivery_longitude') double? deliveryLongitude,
    @JsonKey(name: 'pickup_latitude') double? pickupLatitude,
    @JsonKey(name: 'pickup_longitude') double? pickupLongitude,
    @JsonKey(name: 'driver_phone_no') String? driverPhoneNo,
    @JsonKey(name: 'driver_name') String? driverName,
    @JsonKey(name: 'driver_image') String? driverImage,
    @JsonKey(name: 'driver_id') int? driverId,
    @JsonKey(name: 'pickup_completed') int? pickupCompleted,
  }) = _LiveTracking;

  factory LiveTracking.fromJson(Map<String, dynamic> json) =>
      _$LiveTrackingFromJson(json);
}

@freezed
abstract class OrderHistoryResponse with _$OrderHistoryResponse {
  factory OrderHistoryResponse(
    int flag, {
    String? message,
    String? error,
    @JsonKey(name: 'order_history') List<OrderHistory>? orderHistory,
    @JsonKey(name: 'history_size') int? historySize,
  }) = _OrderHistoryResponse;

  factory OrderHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderHistoryResponseFromJson(json);
}

@freezed
abstract class CancellationReasonResponse with _$CancellationReasonResponse {
  factory CancellationReasonResponse(
    int flag, {
    String? message,
    String? error,
    @JsonKey(name: 'cancel_options') List<String>? cancelOptions,
    @JsonKey(name: 'additional_reasons') String? additionalReasons,
  }) = _CancellationReasonResponse;

  factory CancellationReasonResponse.fromJson(Map<String, dynamic> json) =>
      _$CancellationReasonResponseFromJson(json);
}

@freezed
abstract class OrderDeliveryResponse with _$OrderDeliveryResponse {
  factory OrderDeliveryResponse(
    int flag, {
    String? message,
    String? error,
    int? status,
    @JsonKey(name: 'order_id') int? orderId,
    @JsonKey(name: 'fugu_channel_name') String? channelName,
    @JsonKey(name: 'fugu_channel_id') String? channelId,
  }) = _OrderDeliveryResponse;

  factory OrderDeliveryResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderDeliveryResponseFromJson(json);
}

@freezed
abstract class EmergencyContactsResponse with _$EmergencyContactsResponse {
  factory EmergencyContactsResponse(
    int flag, {
    String? message,
    String? error,
    String? log,
    @JsonKey(name: 'emergency_contacts')
        List<EmergencyContact>? emergencyContacts,
  }) = _EmergencyContactsResponse;

  factory EmergencyContactsResponse.fromJson(Map<String, dynamic> json) =>
      _$EmergencyContactsResponseFromJson(json);
}

@freezed
abstract class UserRideCount with _$UserRideCount {
  factory UserRideCount({
    @JsonKey(name: 'completed_rides') int? completedRides,
    @JsonKey(name: 'cancelled_rides') int? cancelledRides,
    @JsonKey(name: 'total_money_spent') int? totalMoneySpent,
  }) = _UserRideCount;

  factory UserRideCount.fromJson(Map<String, dynamic> json) =>
      _$UserRideCountFromJson(json);
}

@freezed
abstract class OffersResponse with _$OffersResponse {
  factory OffersResponse({
    int? flag,
    String? message,
    String? error,
    bool? promotions,
    bool? airtime,
    bool? transfer,
    bool? donate,
    @JsonKey(name: 'wallet_balance') int? walletBalance,
  }) = _OffersResponse;

  factory OffersResponse.fromJson(Map<String, dynamic> json) =>
      _$OffersResponseFromJson(json);
}

@freezed
class PointTransaction with _$PointTransaction {
  factory PointTransaction({
    String? type,
    int? points,
    DateTime? time,
  }) = _PointTransaction;

  factory PointTransaction.fromJson(Map<String, dynamic> json) =>
      _$PointTransactionFromJson(json);
}

@freezed
abstract class PointTransactionResponse with _$PointTransactionResponse {
  factory PointTransactionResponse(
    int flag, {
    String? error,
    List<PointTransaction>? message,
  }) = _PointTransactionResponse;

  factory PointTransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$PointTransactionResponseFromJson(json);
}

@freezed
class AirtimeHistory with _$AirtimeHistory {
  factory AirtimeHistory({
    int? amount,
    DateTime? date,
    @JsonKey(name: 'voucher_number') String? voucherNumber,
  }) = _AirtimeHistory;

  factory AirtimeHistory.fromJson(Map<String, dynamic> json) =>
      _$AirtimeHistoryFromJson(json);
}

@freezed
class Promotion with _$Promotion {
  factory Promotion({
    String? title,
    int? city,
    @JsonKey(name: 'promo_id') int? promoId,
    @JsonKey(name: 'promo_type') int? promoType,
    @JsonKey(name: 'start_from') DateTime? startFrom,
    @JsonKey(name: 'end_on') DateTime? endOn,
    @JsonKey(name: 'allowed_vehicles') List<int>? allowedVehicles,
    @JsonKey(name: 'per_day_limit') int? perDayLimit,
    @JsonKey(name: 'validity_text') String? validityText,
    @JsonKey(name: 'promo_text') String? promoText,
  }) = _Promotion;

  factory Promotion.fromJson(Map<String, dynamic> json) =>
      _$PromotionFromJson(json);
}

@freezed
class Coupon with _$Coupon {
  factory Coupon({
    String? title,
    String? subtitle,
    String? description,
    int? type,
    int? discount,
    int? maximum,
    int? status,
    @JsonKey(name: 'coupon_id') int? couponId,
    @JsonKey(name: 'account_id') int? accountId,
    @JsonKey(name: 'coupon_type') int? couponType,
    @JsonKey(name: 'allowed_vehicles') List<int>? allowedVehicles,
    @JsonKey(name: 'expiry_date') DateTime? expiryDate,
  }) = _Coupon;

  factory Coupon.fromJson(Map<String, dynamic> json) => _$CouponFromJson(json);
}

@freezed
abstract class PromotionsResponse with _$PromotionsResponse {
  factory PromotionsResponse(
    int flag, {
    String? message,
    String? error,
    List<Coupon>? coupons,
    List<Promotion>? promotions,
  }) = _PromotionsResponse;

  factory PromotionsResponse.fromJson(Map<String, dynamic> json) =>
      _$PromotionsResponseFromJson(json);
}

@freezed
abstract class LegalResponse with _$LegalResponse {
  factory LegalResponse({
    String? data,
  }) = _LegalResponse;

  factory LegalResponse.fromJson(Map<String, dynamic> json) =>
      _$LegalResponseFromJson(json);
}

@freezed
abstract class ListResponse<T> with _$ListResponse<T> {
  factory ListResponse(
    int flag, {
    @DataConverter() List<T>? data,
    String? message,
    String? error,
    String? log,
  }) = _RideListResponse<T>;

  factory ListResponse.fromJson(Map<String, dynamic> json) =>
      _$ListResponseFromJson<T>(json);
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

class DataConverter<T> implements JsonConverter<T, Object?> {
  const DataConverter();

  @override
  T fromJson(Object? json) {
    switch (T) {
      case ScheduledRide:
        return ScheduledRide.fromJson(json as Map<String, dynamic>) as T;
      case RideHistory:
        return RideHistory.fromJson(json as Map<String, dynamic>) as T;
      case Driver:
        return Driver.fromJson(json as Map<String, dynamic>) as T;
      case Corporate:
        return Corporate.fromJson(json as Map<String, dynamic>) as T;
      case AirtimeHistory:
        return AirtimeHistory.fromJson(json as Map<String, dynamic>) as T;
      default:
        throw Exception("Class type not found!");
    }
  }

  @override
  Object toJson(Object? value) => value!;
}
