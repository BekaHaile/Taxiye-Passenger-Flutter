import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/services/api/api_client.dart';

/*
  Implementation for common api requests
*/
class CommonRepository implements ICommonRepository {
  final ApiClient apiClient;

  CommonRepository({required this.apiClient});
  // Todo: Add common api requests here.
}
