import 'dart:async';

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

  //hellocash data
  String phoneNumber = '';
  List<String> partners = ['Lion', 'Wegagen'];
  String selectedPartner = 'Lion';
  String amount = '';
  String driverId = '';

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

  payWithHelloCash() {
    //Todo: Get payment Methods
    final payWithHelloCashPayload = {
      "payment_method": "HELLO-CASH",
      "access_token": "1",
      "driver_id": _storage.read('longitude'),
      "amount": amount,
      "phone_no": phoneNumber,
      "system": selectedPartner
    };

    status(Status.loading);
    repository.payWithHelloCash(payWithHelloCashPayload).then(
      (payWithHelloCashResponse) {
        if (payWithHelloCashResponse.flag ==
            SuccessFlags.payWithHelloCash.successCode) {
              //to do when succesfully paid
            _checkHelloCashPayment(payWithHelloCashResponse.id);
        } else {
          toast('error', payWithHelloCashResponse.message ?? payWithHelloCashResponse.error ?? '');
          status(Status.error);
        }
      },
      onError: (err) {
        print("$err");
        status(Status.error);
      },
    );
  }

  _checkHelloCashPayment(String? paymentId){
    int min = 0;
    Timer.periodic(Duration(seconds: 10), (timer) {
      if(min < 120){
        min += 10;
        _checkIfPaymentIsComplete(timer, paymentId);
      }
        else {
        timer.cancel();
      }
    });
  }

  _checkIfPaymentIsComplete(Timer timer, String? paymentId) {
    final payWithHelloCashPayload = {
      "id": paymentId,
    };

    status(Status.loading);
    repository.checkHelloCashPayment(payWithHelloCashPayload).then(
      (payWithHelloCashResponse) {
        status(Status.success);
        if (payWithHelloCashResponse.flag ==
            SuccessFlags.payWithHelloCash.successCode) {
              //to do when succesfully paid
              timer.cancel();
        } else {
          toast('error', payWithHelloCashResponse.message ?? payWithHelloCashResponse.error ?? '');
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
