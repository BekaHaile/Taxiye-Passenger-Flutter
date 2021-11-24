import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'package:taxiye_passenger/utils/functions.dart';

/*
  Handles any business logic and data binding with Payment flow
  any Payment api requests are made here
*/
class PaymentController extends GetxController {
  final IPaymentRepository repository;
  PaymentController({required this.repository});

  final status = Status.success.obs;

  final GetStorage _storage = GetStorage();

  // payments
  final _paymentMethods = List<Payment>.empty(growable: true).obs;
  get paymentMethods => _paymentMethods.value;
  set paymentMethods(value) => _paymentMethods.assignAll(value);

  final _selectedPayment = Payment(name: 'cash_payment').obs;
  get selectedPayment => _selectedPayment.value;
  set selectedPayment(value) => _selectedPayment.value = value;

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.
    getPaymentMethods();
    super.onInit();
  }

  getPaymentMethods() {
    //Todo: Get payment Methods
    final walletPayload = {
      "latitude": _storage.read('latitude'),
      "is_access_token_new": "1",
      "longitude": _storage.read('longitude')
    };

    status(Status.loading);
    repository.fetchWalletBalance(walletPayload).then(
      (walletResponse) {
        status(Status.success);
        if (walletResponse.flag ==
            SuccessFlags.fetchWalletBalance.successCode) {
          paymentMethods = walletResponse.paymentModes;
          _updateHomePayments();
        } else {
          toast('error', walletResponse.message ?? walletResponse.error ?? '');
          status(Status.error);
        }
      },
      onError: (err) {
        print("$err");
        status(Status.error);
      },
    );
  }

  _updateHomePayments(){
    HomeController homeController = Get.find();
    homeController.paymentMethods = paymentMethods;
  }

}
