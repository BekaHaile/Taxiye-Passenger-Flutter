import 'dart:developer';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';

/*
  Handles any business logic and data binding with legals flow
  any legals api requests are made here
*/
class LegalsController extends GetxController {
  final IAuthRepository repository;
  LegalsController({required this.repository});

  AuthController authController = Get.find();
  final status = Status.success.obs;

  // final _settingOptions = List<Option>.empty(growable: true).obs;
  // get settingOptions => _settingOptions.value;
  // set settingOptions(value) => _settingOptions.value = value;

  final _legalsOptions = List<Option>.empty(growable: true).obs;
  get legalsOptions => _legalsOptions.value;
  set legalsOptions(value) => _legalsOptions.assignAll(value);

  final _legalDetail = ''.obs;
  get legalDetail => _legalDetail.value;
  set legalDetail(value) => _legalDetail.value = value;

  final GetStorage _storage = GetStorage();

  @override
  void onInit() async {
    super.onInit();
    _setLegalOptions();
    getLegalsInfo('3');
  }

  _setLegalOptions() {
    legalsOptions = [
      Option(title: 'terms_conditions', subtitle: 'view_terms_conditions'),
      Option(title: 'privacy_policy', subtitle: 'privacy_info'),
      Option(title: 'about_us', subtitle: 'know_us'),
    ];
  }

  getLegalsInfo(String section) {
    // sections: 3 for terms and conditions,
    // privacy policy section=2
    // who are we section=0
    final Map<String, dynamic> legalsPayload = {
      'section': section,
      "latitude": _storage.read('latitude'),
      "longitude": _storage.read('longitude')
    };

    status(Status.loading);
    repository.getLagalsDetail(legalsPayload).then(
      (legalsResponse) {
        status(Status.success);
        if (legalsResponse.data?.isNotEmpty ?? false) {
          legalDetail = legalsResponse.data;
        }
      },
      onError: (err) {
        print("$err");
        status(Status.error);
      },
    );
  }
}
