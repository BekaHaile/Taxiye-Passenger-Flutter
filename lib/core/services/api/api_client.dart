import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:get/utils.dart';
import 'package:get_storage/get_storage.dart';
import 'dart:io';
import 'package:mime/mime.dart';
import 'package:http_parser/http_parser.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/core/services/api/dio_client.dart';
import 'package:taxiye_passenger/core/services/api/network_exceptions.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:taxiye_passenger/utils/functions.dart';

class ApiClient {
  late DioClient dioClient;
  final Dio dio;
  Map<String, dynamic> defaultParams = {};

  ApiClient({required this.dio}) {
    dioClient = DioClient(dio);

    PackageInfo.fromPlatform().then((packageInfo) => defaultParams.addAll({
          'app_version': packageInfo.version,
          'device_type': Platform.isAndroid ? '0' : '1',
          'login_type': '0',
          'operator_token': kOperatorToken,
          'customer_package_name': packageInfo.packageName,
          'locale': Get.locale?.languageCode ?? 'en',
          'client_id': kClientId,
        }));
  }

  Future<Map<String, dynamic>> request(
      {required RequestType requestType,
      bool requiresAuth = true,
      bool requiresDefaultParams = true,
      required String path,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? data}) async {
    try {
      if (requiresAuth) await dioClient.addAuthorizationInterceptor();
      if (requiresDefaultParams && data != null) {
        data.addAll(defaultParams);
        data['locale'] = Get.locale?.languageCode ?? 'en';
      }

      log('sent payload: $data');
      dynamic response;
      switch (requestType) {
        case RequestType.get:
          response =
              await dioClient.get(path, queryParameters: queryParameters);
          break;
        case RequestType.post:
          response = await dioClient.post(path, data: data);
          break;
        case RequestType.patch:
          response = await dioClient.patch(path, data: data);
          break;
        case RequestType.delete:
          response = await dioClient.delete(path);
          break;
        case RequestType.put:
          response = await dioClient.put(path, data: data);
          break;
        default:
          throw "Request type not found.";
      }

      log('raw response: $response');
      return (response is String) ? jsonDecode(response) : response;
    } on DioError catch (e) {
      final errorMessage = NetworkExceptions.getErrorMessage(
          NetworkExceptions.getDioException(e));
      log('$e');
      log('Api Error: $errorMessage');
      toast('error', e.response?.data['message']);
      return Future.error(errorMessage);
    }
  }

  Future<User> updateProfile(
      File profileImage, Map<String, dynamic>? userPayload) async {
    try {
      String? mimeType = lookupMimeType(profileImage.path);
      List<String> splitMimeTypes = mimeType?.split('/') ?? [];

      final MultipartFile multipartFile = MultipartFile.fromFileSync(
          profileImage.path,
          contentType: MediaType(splitMimeTypes[0], splitMimeTypes[1]));

      final Map<String, dynamic> profilePayload = {
        'updated_user_image': multipartFile,
      };

      profilePayload.addAll(defaultParams);
      final accessToken = GetStorage().read('accessToken');
      profilePayload['access_token'] = accessToken;
      if (userPayload != null) profilePayload.addAll(userPayload);
      var formData = FormData.fromMap(profilePayload);

      dynamic response;
      await dioClient.post('/update_user_profile', data: formData).then(
        (updateResponse) async {
          response = await request(
            requestType: RequestType.post,
            path: '/reload_my_profile',
            data: {},
          );
        },
        onError: (err) {
          return Future.error("$err");
        },
      );

      // Iterable l = json.decode(jsonEncode(response));
      // return List<Files>.from(l.map((model) => Files.fromJson(model)).toList());

      return User.fromJson(response);
    } on DioError catch (e) {
      final errorMessage = NetworkExceptions.getErrorMessage(
          NetworkExceptions.getDioException(e));
      print(errorMessage);
      toast('error', e.response?.data['message']);
      return Future.error(errorMessage);
    }
  }

  // Future<List<Files>> uploadFiles(List<File> files, String userId) async {
  //   try {
  //     List<MultipartFile> multipartFiles = [];
  //     for (File file in files) {
  //       String? mimeType = lookupMimeType(file.path);
  //       List<String> splitMimeTypes = mimeType?.split('/') ?? [];
  //       print(splitMimeTypes);

  //       if (splitMimeTypes.length > 1) {
  //         multipartFiles.add(MultipartFile.fromFileSync(file.path,
  //             contentType: MediaType(splitMimeTypes[0], splitMimeTypes[1])));
  //       }
  //     }

  //     var formData =
  //         FormData.fromMap({'files': multipartFiles, 'userId': userId});
  //     final response = await dioClient.post('/files', data: formData);
  //     Iterable l = json.decode(jsonEncode(response));
  //     return List<Files>.from(l.map((model) => Files.fromJson(model)).toList());
  //   } on DioError catch (e) {
  //     final errorMessage = NetworkExceptions.getErrorMessage(
  //         NetworkExceptions.getDioException(e));
  //     print(errorMessage);
  //     toast('error', e.response?.data['message']);
  //     return Future.error(errorMessage);
  //   }
  // }
}
