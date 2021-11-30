/*
  Includes interfaces for repository api requests.
*/
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'dart:io';

import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/core/models/map_models.dart';

abstract class IAuthRepository {
  // Todo: Add Auth request class signitures (interfaces) here.
  Future<String?> getDeviceToken();
  Future<SignUpResponse> signup(Map<String, dynamic> signupPayload);
  Future<VerifyResponse> loginUsingToken(Map<String, dynamic> loginPayload);

  Future<SignUpResponse> signInWithGoogle(
    Map<String, dynamic> googleSignInPayload, {
    required Function() showPhoneInput,
    required VoidCallback serverRequestStarted,
  });
  Future<SignUpResponse> signInWithFacebook(
    Map<String, dynamic> facebookSignInPayload, {
    required Function() showPhoneInput,
    required VoidCallback serverRequestStarted,
  });
  Future<String> signInWithTwitter();

  Future<VerifyResponse> verifyOtp(Map<String, dynamic> verifyPayload);
  Future<User> updateUser(
      File? profileImage, Map<String, dynamic>? userPayload);
  Future<User> reloadProfile();
  Future<BasicResponse> logoutUser();

  Future<LegalResponse> getLagalsDetail(Map<String, dynamic> legalPayload);
}

abstract class IHomeRepository {
  // Google map api calls
  Future<List<Suggestion>> getPlaceSugestions(
      String input, String lang, String country, String sessionToken);
  Future<Place> getPlaceDetailFromId(String placeId, String sessionToken);
  Future<List<LatLng>> getRoutePolylines(
      PointLatLng origin, PointLatLng destination);

  // notification calls
  registerFCM(
      {required Function(NotificationMessage notificationMessage)
          onMessageRecieved});

  // server call apis
  Future<FindDriversResponse> findDrivers(
      Map<String, dynamic> findDriversPayload);

  Future<RequestRideResponse> requestRide(
      Map<String, dynamic> requestRidePayload);
  Future<BasicResponse> scheduleRide(Map<String, dynamic> scheduleRidePayload);

  Future<BasicResponse> cancelRide(
      Map<String, dynamic> cancelPayload, TripStep tripStep);

  Future<BasicResponse> rateDriver(Map<String, dynamic> rateDriverPayload);
  Future<BasicResponse> addFavouriteDriver(
      Map<String, dynamic> favouriteDriverPayload);
  Future<DriverLocationResponse> getCurrentDriverLocation(String driverId);

  Future<SavedPlacesResponse> getSavedPlaces();
  Future<SavedPlacesResponse> updateSavedPlaces(
      Map<String, dynamic> addressPayload);

  Future<ListResponse<Corporate>> getUserCorporates();
  Future<BasicResponse> updateEmergency(
      Map<String, dynamic> emergencyPayload, EmergencyStatus emergencyStatus);

  // delivery requests
  Future<DeliveryAgentResponse> getDeliveryAgents(
      Map<String, dynamic> getAgentsParams);
  Future<DeliveryDetailResponse> getDeliveryDetail(
      Map<String, dynamic> getDetailParams);
  Future<CancellationReasonResponse> getCancelDeliveryOrderReasons(
      Map<String, dynamic> reasonPayload);

  Future<BasicResponse> cancelDelivery(Map<String, dynamic> cancelPayload);
  Future<DeliveryTrackingResponse> liveDeliveryTracking(String trackPayload);
  Future<OrderDeliveryResponse> orderDelivery(
      Map<String, dynamic> orderPayload, List<File> deliveryImages);
  Future<OrderHistoryResponse> getOrderHistory(
      Map<String, dynamic> orderHistoryPayload);

  Future<BasicResponse> submitDeliveryFeedBack(
      Map<String, dynamic> feedbackPayload);
}

abstract class ICommonRepository {
  // Todo: Add common request class signitures (interfaces) here.
}

abstract class IWalletRepository {
  // Todo: Add wallet request class signitures (interfaces) here.
  Future<WalletResponse> fetchWalletBalance(Map<String, dynamic> walletPayload);

  Future<TransactionHistoryResponse> getTransactionHistory(
      Map<String, dynamic> transactionHistoryPayload);

  Future<TransferResponse> transfer(Map<String, dynamic> transferPayload);
}

abstract class IFileRepository {
  // Todo: Add file/media requests here.
  Future<File> getMedia(ImageSource imageSource, String mediaType);
  Future<File?> getCroppedImage(File imageFile);
}

abstract class IProfileRepository {
  // Todo: Add profile request class signitures (interfaces) here.
  Future<User> reloadProfile();
  Future<User> updateUser(
      File? profileImage, Map<String, dynamic>? userPayload);

  Future<EmergencyContactsResponse> getEmergencyContacts();
  Future<BasicResponse> removeEmergencyContact(String contactId);
  Future<BasicResponse> addEmergencyContact(
      Map<String, dynamic> contactPayload);

  Future<UserRideCount> getUserInfo();
}

abstract class IPaymentRepository {
  // Todo: Add profile request class signitures (interfaces) here.
  Future<WalletResponse> fetchWalletBalance(Map<String, dynamic> walletPayload);
  Future<PayWithHelloCashResponse> payWithHelloCash(Map<String, dynamic> payWithHelloCashPayload);
  Future<PayWithHelloCashResponse> checkHelloCashPayment(Map<String, dynamic> checkHelloCashPaymentPayload);
  Future<BasicResponse> payWithMpesa(Map<String, dynamic> payWithMpesaPayload);
}

abstract class IOrdersRepository {
  // Todo: Add orders request class signitures (interfaces) here.
  Future<ListResponse<ScheduledRide>> getScheduledRides();
  Future<ListResponse<RideHistory>> getRideHistory();
  Future<List<LatLng>> getRoutePolylines(
      PointLatLng origin, PointLatLng destination);

  Future<BasicResponse> cancelRideSchedule(
      Map<String, dynamic> cancelSchedulePayload);
  Future<RideSummary> getRideSummary(String engagementID);
}

abstract class IDriversRepository {
  // Todo: Add drivers request class signitures (interfaces) here.
  Future<ListResponse<Driver>> getFavouriteDrivers();
  Future<BasicResponse> removeFavouriteDriver(int driverId);
}

abstract class IPromotionsRepository {
  // Todo: Add promotions request class signitures (interfaces) here.
  Future<OffersResponse> getPromotionBalance();
  Future<BasicResponse> applyPromotionCode(String code);
  Future<BasicResponse> buyAirTime(String amount);
  Future<BasicResponse> transferPoints(Map<String, dynamic> transferPayload);

  Future<PointTransactionResponse> getPointTransactions();
  Future<ListResponse<AirtimeHistory>> getAirtimeHistory();
  Future<PromotionsResponse> getPromotionsAndCoupons(
      Map<String, dynamic> promotionsPayload);
}
