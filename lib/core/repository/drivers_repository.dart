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
  Future<RideListResponse<ScheduledRide>> getFavouriteDrivers() async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/show_pickup_schedules',
      data: {},
    );
    return RideListResponse<ScheduledRide>.fromJson(response);
  }
}
