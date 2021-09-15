import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/core/services/api/api_client.dart';

/*
  Implementation for Wallet api requests
*/
class WalletRepository implements IWalletRepository {
  final ApiClient apiClient;

  WalletRepository({required this.apiClient});

  @override
  Future<WalletResponse> fetchWalletBalance(Map<String, dynamic> walletPayload) async {
     final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/fetch_wallet_balance',
      data: walletPayload,
    );
    return WalletResponse.fromJson(response);
  }

  
}
