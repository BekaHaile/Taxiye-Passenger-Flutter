import 'package:get/get.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';

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

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.
    super.onInit();
    getTransactions();
  }

  getTransactions() {
    transactions = [
      Transaction(
          type: 'withdrawal',
          amount: 600,
          date: DateTime.now(),
          reason: 'Wallet Top Up'),
      Transaction(
          type: 'deposit',
          amount: 500,
          date: DateTime.now(),
          reason: 'Ride Payment'),
      Transaction(
          type: 'withdrawal',
          amount: 200,
          date: DateTime.now(),
          reason: 'Ride Payment'),
      Transaction(
          type: 'deposit',
          amount: 5000,
          date: DateTime.now(),
          reason: 'Ride Payment'),
      Transaction(
          type: 'deposit',
          amount: 650,
          date: DateTime.now(),
          reason: 'Ride Payment'),
      Transaction(
          type: 'withdrawal',
          amount: 300,
          date: DateTime.now(),
          reason: 'Ride Payment'),
      Transaction(
          type: 'withdrawal',
          amount: 200,
          date: DateTime.now(),
          reason: 'Ride Payment'),
    ];
  }

  transferWallet() {
    // Todo: send wallet transfer
  }
}
