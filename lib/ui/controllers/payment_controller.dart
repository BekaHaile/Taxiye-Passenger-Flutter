import 'dart:async';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'package:taxiye_passenger/ui/pages/payment/components/hellocash_info_dilog.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:taxiye_passenger/utils/functions.dart';

/*
  Handles any business logic and data binding with Payment flow
  any Payment api requests are made here
*/
class PaymentController extends GetxController {
  final IPaymentRepository repository;
  PaymentController({required this.repository});

  final status = Status.success.obs;
  final AuthController authController = Get.find();

  final GetStorage _storage = GetStorage();

  // payments
  final _paymentMethods = List<Payment>.empty(growable: true).obs;
  get paymentMethods => _paymentMethods.value;
  set paymentMethods(value) => _paymentMethods.assignAll(value);

  final _selectedPayment = Payment(name: 'cash_payment').obs;
  get selectedPayment => _selectedPayment.value;
  set selectedPayment(value) => _selectedPayment.value = value;

  HomeController homeController = Get.find();

  //hellocash data
  String phoneNumber = '';
  String countryCode = '';
  Country country = kCountries.first;
  List<String> hellocashPartners = ['Lion', 'Wegagen', 'Lucy'];
  String selectedHellocashPartner = 'Lion';
  String amount = '';
  String driverId = '';
  String userId = '';

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.
    getPaymentMethods();
    super.onInit();

    countryCode = authController.user.countryCode;
    country = kCountries.firstWhere((element) => element.code == countryCode,
        orElse: () => kCountries.first);

    final splitPhone = authController.user.phoneNo.split(countryCode);
    if (splitPhone.length > 1) {
      phoneNumber = splitPhone[1];
    }
  }

  getPaymentMethods() {
    //Todo: Get payment Methods
    final walletPayload = {
      "latitude": _storage.read('latitude'),
      "is_access_token_new": "1",
      "longitude": _storage.read('longitude'),
    };

    status(Status.loading);
    repository.fetchWalletBalance(walletPayload).then(
      (walletResponse) {
        status(Status.success);
        if (walletResponse.flag ==
            SuccessFlags.fetchWalletBalance.successCode) {
          if (walletResponse.paymentModes?.isNotEmpty ?? false) {
            // remove corporate
            walletResponse.paymentModes
                ?.removeWhere((element) => element.name == 'corporate');

            paymentMethods = walletResponse.paymentModes;

            // rename jugnoo_cash to cash
            int jugnoCashIndex = paymentMethods.indexOf(walletResponse
                .paymentModes
                ?.firstWhere((element) => element.name == 'jugnoo_cash'));

            if (jugnoCashIndex != -1) {
              paymentMethods[jugnoCashIndex] =
                  paymentMethods[jugnoCashIndex].copyWith(name: 'cash');
            }

            _updateHomePayments();
          }
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
    final Map<String, dynamic> payWithHelloCashPayload = {
      "payment_method": "HELLO-CASH",
      "driver_id": driverId,
      "amount": amount,
      "phone_no": '${country.code}$phoneNumber',
      "system": selectedHellocashPartner,
      "user_type": "CUSTOMER",
      "passenger_id": userId,
    };

    log('hellocash payload: $payWithHelloCashPayload');

    status(Status.loading);
    repository.payWithHelloCash(payWithHelloCashPayload).then(
      (payWithHelloCashResponse) {
        status(Status.success);
        Get.dialog(HelloCashInfoDialog(
            onConfirmCallBack: () =>
                onConfirmPayWithHelloCash(payWithHelloCashResponse)));

        // if (payWithHelloCashResponse.flag ==
        //     SuccessFlags.payWithHelloCash.successCode) {

        //   // _displayAlert(payWithHelloCashResponse);
        // } else {
        //   toast(
        //       'error',
        //       payWithHelloCashResponse.message ??
        //           payWithHelloCashResponse.error ??
        //           '');
        //   status(Status.error);
        // }
      },
      onError: (err) {
        print("$err");
        status(Status.error);
      },
    );
  }

  onConfirmPayWithHelloCash(PayWithHelloCashResponse payWithHelloCashResponse) {
    status(Status.loading);
    Get.snackbar('', 'payment_pending'.tr);
    _checkHelloCashPayment(payWithHelloCashResponse.id);
  }

  _checkHelloCashPayment(String? paymentId) {
    int min = 0;
    Timer.periodic(const Duration(seconds: 10), (timer) {
      log('min here: $min');
      if (min < 120) {
        min += 10;
        _checkIfPaymentIsComplete(timer, paymentId);
      } else {
        toast('error', 'check_hellocash_fail');
        timer.cancel();
        status(Status.error);
      }
    });
  }

  _checkIfPaymentIsComplete(Timer timer, String? paymentId) {
    final Map<String, dynamic> payWithHelloCashPayload = {
      "id": paymentId ?? '',
    };

    repository.checkHelloCashPayment(payWithHelloCashPayload).then(
      (payWithHelloCashResponse) {
        log('checking payment: $payWithHelloCashResponse');

        switch (payWithHelloCashResponse.status) {
          case 'PENDING':
            return;
          case 'CANCELLED':
            status(Status.error);
            Get.snackbar('error'.tr, 'hellocash_cancelled'.tr);
            break;
          default:
            //go to feedback page
            status(Status.success);
            Get.back();
            Get.snackbar('success'.tr, 'hellocash_processed'.tr);
            homeController.onPaymentProcessed();
        }

        timer.cancel();

        // if (payWithHelloCashResponse.flag ==
        //     SuccessFlags.payWithHelloCash.successCode) {

        // } else {
        //   toast(
        //       'error',
        //       payWithHelloCashResponse.message ??
        //           payWithHelloCashResponse.error ??
        //           '');
        //   status(Status.error);
        // }
      },
      onError: (err) {
        print("$err");
        status(Status.error);
      },
    );
  }

  payWithMpesa(String engagementId) {
    final payWithMpesaPayload = {
      "pay_via_stripe": "0",
      "engagement_id": engagementId,
      "tip_amount": "0.0"
    };

    repository.payWithMpesa(payWithMpesaPayload).then(
      (basicResponse) {
        if (basicResponse.flag == SuccessFlags.basicSuccess.successCode) {
          //go to summary page
        } else {
          toast('error', basicResponse.message ?? basicResponse.error ?? '');
        }
      },
      onError: (err) {
        print("$err");
      },
    );
  }

  onHelloCashSelected(
      {required Payment hellocash,
      required String amount,
      required String driverId}) {
    this.amount = amount;
    this.driverId = driverId;

    if (hellocash.systems?.isNotEmpty ?? false) {
      hellocashPartners = hellocash.systems!;
      selectedHellocashPartner = hellocashPartners.first;
    }

    Get.toNamed(Routes.hellocash);
  }

  _updateHomePayments() {
    homeController.paymentMethods = paymentMethods;
  }
}
