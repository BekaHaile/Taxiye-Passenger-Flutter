import 'package:get_storage/get_storage.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/core/services/api/api_client.dart';

/*
  Implementation for drivers api requests
*/
class DriversRepository implements IDriversRepository {
  final ApiClient apiClient;

  DriversRepository({
    required this.apiClient,
  });
  // Todo: Add drivers api requests here.
  @override
  Future<ListResponse<Driver>> getFavouriteDrivers() async {
    final accessToken = GetStorage().read('accessToken');
    final response = await apiClient.request(
        requestType: RequestType.get,
        path: '/customer/fetch_user_driver_mapping',
        queryParameters: {'access_token': accessToken});
    return ListResponse<Driver>.fromJson(response);
  }

  @override
  Future<BasicResponse> removeFavouriteDriver(int driverId) async {
    final Map<String, dynamic> removePayload = {
      'action_type': '1',
      'driver_id': driverId,
    };
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/customer/delete_user_driver_mapping',
      data: removePayload,
    );
    return BasicResponse.fromJson(response);
  }
}
