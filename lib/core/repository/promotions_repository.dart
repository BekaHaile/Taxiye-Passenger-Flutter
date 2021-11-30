import 'dart:developer';

import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/core/services/api/api_client.dart';

/*
  Implementation for promotions api requests
*/
class PromotionsRepository implements IPromotionsRepository {
  final ApiClient apiClient;

  PromotionsRepository({required this.apiClient});

  @override
  Future<OffersResponse> getPromotionBalance() async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/taxiye-offers/offers',
      data: {},
    );
    return OffersResponse.fromJson(response);
  }

  @override
  Future<BasicResponse> applyPromotionCode(String code) async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/enter_code',
      data: {'code': code},
    );
    return BasicResponse.fromJson(response);
  }

  @override
  Future<BasicResponse> buyAirTime(String amount) async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/taxiye-offers/buy-airtime',
      data: {'airtime_amount': amount},
    );
    return BasicResponse.fromJson(response);
  }

  @override
  Future<BasicResponse> transferPoints(
      Map<String, dynamic> transferPayload) async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/taxiye-offers/transfer',
      data: transferPayload,
    );
    return BasicResponse.fromJson(response);
  }

  @override
  Future<PointTransactionResponse> getPointTransactions() async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/taxiye-offers/transfer-history',
      data: {},
    );
    return PointTransactionResponse.fromJson(response);
  }

  @override
  Future<ListResponse<AirtimeHistory>> getAirtimeHistory() async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/taxiye-offers/airtime-history',
      data: {},
    );
    return ListResponse<AirtimeHistory>.fromJson(response);
  }

  @override
  Future<PromotionsResponse> getPromotionsAndCoupons(
      Map<String, dynamic> promotionsPayload) async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/get_coupons_and_promotions',
      data: promotionsPayload,
    );
    return PromotionsResponse.fromJson(response);
  }
}
