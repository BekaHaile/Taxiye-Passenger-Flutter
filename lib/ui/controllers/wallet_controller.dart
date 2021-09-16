import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/utils/functions.dart';

/*
  Handles any business logic and data binding with Wallet flow
  any Wallet api requests are made here
*/
class WalletController extends GetxController {
  final IWalletRepository repository;
  WalletController({required this.repository});

  final status = Status.success.obs;

  final _transactions = List<Transaction>.empty(growable: true).obs;
  get transactions => _transactions.value;
  set transactions(value) => _transactions.assignAll(value);

  // wallet transfer
  final _transferTo = WalletTransferTo.driver.obs;
  get transferTo => _transferTo.value;
  set transferTo(value) => _transferTo.value = value;

  String phoneNumber = '';
  double? amount = 0.0;

  final _walletBalance = 0.0.obs;
  get walletBalance => _walletBalance.value;
  set walletBalance(value) => _walletBalance.value = value;

  final GetStorage _storage = GetStorage();

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.
    super.onInit();
    getWalletBalance();
    getTransactions();
  }

  getWalletBalance() {
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

  getTransactions() {
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
          toast('error', transactionHistoryResponse.message ?? transactionHistoryResponse.error ?? '');
          status(Status.error);
        }
      },
      onError: (err) {
        print("$err");
        status(Status.error);
      },
    );
  }

  // getTransactions() {
  //   transactions = [
  //     Transaction(
  //         type: 'withdrawal',
  //         amount: 600,
  //         date: DateTime.now(),
  //         reason: 'Wallet Top Up'),
  //     Transaction(
  //         type: 'deposit',
  //         amount: 500,
  //         date: DateTime.now(),
  //         reason: 'Ride Payment'),
  //     Transaction(
  //         type: 'withdrawal',
  //         amount: 200,
  //         date: DateTime.now(),
  //         reason: 'Ride Payment'),
  //     Transaction(
  //         type: 'deposit',
  //         amount: 5000,
  //         date: DateTime.now(),
  //         reason: 'Ride Payment'),
  //     Transaction(
  //         type: 'deposit',
  //         amount: 650,
  //         date: DateTime.now(),
  //         reason: 'Ride Payment'),
  //     Transaction(
  //         type: 'withdrawal',
  //         amount: 300,
  //         date: DateTime.now(),
  //         reason: 'Ride Payment'),
  //     Transaction(
  //         type: 'withdrawal',
  //         amount: 200,
  //         date: DateTime.now(),
  //         reason: 'Ride Payment'),
  //   ];
  // }

  transferWallet() {
    // Todo: send wallet transfer
  }
}
