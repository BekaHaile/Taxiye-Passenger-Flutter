import 'dart:developer';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:taxiye_passenger/utils/functions.dart';

/*
  Handles any business logic and data binding with Wallet flow
  any Wallet api requests are made here
*/
class WalletController extends GetxController {
  final IWalletRepository repository;
  WalletController({required this.repository});

  final status = Status.success.obs;
  final AuthController _authController = Get.find();

  final _transactions = List<Transaction>.empty(growable: true).obs;
  get transactions => _transactions.value;
  set transactions(value) => _transactions.assignAll(value);

  // wallet transfer
  final _transferTo = WalletTransferTo.driver.obs;
  get transferTo => _transferTo.value;
  set transferTo(value) => _transferTo.value = value;

  Country country = kCountries.first;
  String phoneNumber = '';
  double? amount = 0.0;

  final _walletBalance = 0.0.obs;
  get walletBalance => _walletBalance.value;
  set walletBalance(value) => _walletBalance.value = value;

  // final _currency = ''.obs;
  // get currency => _currency.value;
  // set currency(value) => _currency.value = value;

  final _walletData = WalletResponse(0).obs;
  get walletData => _walletData.value;
  set walletData(value) => _walletData.value = value;

  final GetStorage _storage = GetStorage();

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.
    super.onInit();

    country = kCountries.firstWhere(
        (element) => element.code == _authController.user.countryCode,
        orElse: () => kCountries.first);
    _getWalletBalance();
    _getTransactions();
  }

  _getWalletBalance() {
    final walletPayload = {
      "latitude": _storage.read('latitude'),
      "is_access_token_new": "1",
      "longitude": _storage.read('longitude')
    };

    status(Status.loading);
    repository.fetchWalletBalance(walletPayload).then(
      (walletResponse) {
        if (walletResponse.flag ==
            SuccessFlags.fetchWalletBalance.successCode) {
          walletBalance = walletResponse.walletBalance;
          walletData = walletResponse;
          //currency = walletResponse.currency;
          status(Status.success);
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

  _getTransactions() {
    final Map<String, dynamic> transactionHistoryPayload = {
      "start_from": "0",
      "is_access_token_new": "1"
    };

    status(Status.loading);
    repository.getTransactionHistory(transactionHistoryPayload).then(
      (transactionHistoryResponse) {
        if (transactionHistoryResponse.flag ==
            SuccessFlags.getTransactionHistory.successCode) {
          transactions = transactionHistoryResponse.transactions;
          status(Status.success);
        } else {
          log('transaction error: ' + (transactionHistoryResponse.error ?? ''));
          toast(
              'error',
              transactionHistoryResponse.message ??
                  transactionHistoryResponse.error ??
                  '');
          status(Status.error);
        }
      },
      onError: (err) {
        log('$err');
        print("$err");
        status(Status.error);
      },
    );
  }

  transferWallet() {
    final Map<String, dynamic> transferPayload = {
      "phone_no": '${country.code}$phoneNumber',
      "amount": amount,
      "latitude": _storage.read('latitude'),
      "receiver_type": transferTo == WalletTransferTo.customer ? "0" : "1",
      "country_code": country.code,
      "engagement_id": "",
      "longitude": _storage.read('longitude')
    };

    status(Status.loading);
    repository.transfer(transferPayload).then(
      (transferResponse) {
        if (transferResponse.flag == SuccessFlags.transfer.successCode) {
          walletBalance = transferResponse.walletBalance;
          status(Status.success);
          _getTransactions();
          Get.back();
          Get.snackbar('success'.tr, 'trasnsfer_success'.tr);
        } else {
          toast('error',
              transferResponse.message ?? transferResponse.error ?? '');
          status(Status.error);
        }
      },
      onError: (err) {
        print("$err");
        toast('error', 'network_error'.tr);
        status(Status.error);
      },
    );
  }
}
