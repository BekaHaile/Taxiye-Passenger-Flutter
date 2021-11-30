import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/core/services/api/api_client.dart';

/*
  Implementation for Payment api requests
*/
class PaymentRepository implements IPaymentRepository {
  final ApiClient apiClient;

  PaymentRepository({required this.apiClient});
  // Todo: Add Payment api requests here.

  @override
  Future<WalletResponse> fetchWalletBalance(
      Map<String, dynamic> walletPayload) async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/fetch_wallet_balance',
      data: walletPayload,
    );
    return WalletResponse.fromJson(response);
  }

  @override
  Future<PayWithHelloCashResponse> payWithHelloCash(Map<String, dynamic> payWithHelloCashPayload) async{
   final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/payment/request',
      data: payWithHelloCashPayload,
    );
    return PayWithHelloCashResponse.fromJson(response);
  }

  @override
  Future<PayWithHelloCashResponse> checkHelloCashPayment(Map<String, dynamic> checkHelloCashPaymentPayload) async{
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/get/payment',
      data: checkHelloCashPaymentPayload,
    );
    return PayWithHelloCashResponse.fromJson(response);
  }

  @override
  Future<BasicResponse> payWithMpesa(Map<String, dynamic> payWithMpesaPayload) async{
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/edit_driver_tip',
      data: payWithMpesaPayload,
    );
    return BasicResponse.fromJson(response);
  }
}
