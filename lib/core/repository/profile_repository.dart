import 'dart:developer';

import 'package:get_storage/get_storage.dart';
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

    if (profileImage == null) {
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

  // For emergency contacts
  @override
  Future<EmergencyContactsResponse> getEmergencyContacts() async {
    final accessToken = GetStorage().read('accessToken');
    final response = await apiClient.request(
      requestType: RequestType.get,
      path: '/emergency/contacts/list',
      queryParameters: {'access_token': accessToken},
    );

    return EmergencyContactsResponse.fromJson(response);
  }

  @override
  Future<BasicResponse> addEmergencyContact(
      Map<String, dynamic> contactPayload) async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/emergency/contacts/add_multiple',
      data: contactPayload,
    );
    return BasicResponse.fromJson(response);
  }

  @override
  Future<BasicResponse> removeEmergencyContact(String contactId) async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/emergency/contacts/delete',
      data: {'id': contactId},
    );
    return BasicResponse.fromJson(response);
  }

  @override
  Future<UserRideCount> getUserInfo() async {
    final response = await apiClient.request(
      requestType: RequestType.post,
      path: '/customer/fetch_user_info',
      data: {},
    );

    if (response.containsKey('userRideCount')) {
      return UserRideCount.fromJson(response['userRideCount']);
    }

    return UserRideCount();
  }
}
