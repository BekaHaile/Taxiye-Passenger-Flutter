import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/core/services/api/api_client.dart';
import 'dart:io';

/*
  Implementation for Profile api requests
*/
class ProfileRepository implements IProfileRepository {
  final ApiClient apiClient;

  ProfileRepository({required this.apiClient});
  // Todo: Add Profile api requests here.

  @override
  Future<User> reloadProfile() async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/reload_my_profile',
      data: {},
    );
    return User.fromJson(response);
  }

  @override
  Future<User> updateUser(
      File? profileImage, Map<String, dynamic>? userPayload) async {
    dynamic response;

    print('here 1');

    if (profileImage == null) {
      print('here 2');
      await apiClient
          .request(
        requestType: RequestType.post,
        path: '/update_user_profile',
        data: userPayload,
      )
          .then(
        (updateResponse) async {
          response = await apiClient.request(
            requestType: RequestType.post,
            path: '/reload_my_profile',
            data: {},
          );
        },
        onError: (err) {
          return Future.error("$err");
        },
      );
    } else {
      return await apiClient.updateProfile(profileImage, userPayload);
    }

    return User.fromJson(response);
  }
}
