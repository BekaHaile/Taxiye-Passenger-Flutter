import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:taxiye_passenger/utils/functions.dart';

/*
  Handles any business logic and data binding with Promotions flow
  any Promotions api requests are made here
*/
class PromotionsController extends GetxController {
  final IPromotionsRepository repository;
  PromotionsController({required this.repository});

  final status = Status.success.obs;
  final AuthController _authController = Get.find();

  final _walletBalance = 0.obs;
  get walletBalance => _walletBalance.value;
  set walletBalance(value) => _walletBalance.value = value;

  // exchange ponits
  late List<ExchangePoint> exchangePointOPtions;

  // coupons
  final _coupons = List<Coupon>.empty(growable: true).obs;
  get coupons => _coupons.value;
  set coupons(value) => _coupons.assignAll(value);

  final _transactions = List<PointTransaction>.empty(growable: true).obs;
  get transactions => _transactions.value;
  set transactions(value) => _transactions.assignAll(value);

  final _airtimeHistories = List<AirtimeHistory>.empty(growable: true).obs;
  get airtimeHistories => _airtimeHistories.value;
  set airtimeHistories(value) => _airtimeHistories.assignAll(value);

  Coupon? selectedCoupon;
  String promotionCode = '';
  String referralNumber = '';

  String currency = 'ETB';

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.
    super.onInit();

    // set referal code form phone number
    // User test;
    // test.phoneNo
    referralNumber =
        _authController.user.phoneNo?.replaceAll(RegExp('[\\D]'), '') ?? '';
    _getPromotionBalance();
    getExchangePointOptions();
    getCoupons();
    _getPointTransactions();
    _getAirtimeHistory();
  }

  _getPromotionBalance() {
    status(Status.loading);
    repository.getPromotionBalance().then(
      (offersResponse) {
        if (offersResponse.walletBalance != null) {
          walletBalance = offersResponse.walletBalance;
          status(Status.success);
        } else {
          toast('error', offersResponse.message ?? offersResponse.error ?? '');
          status(Status.error);
        }
      },
      onError: (err) {
        print("$err");
        status(Status.error);
      },
    );
  }

  applyPromotionCode() {
    if (promotionCode.isNotEmpty) {
      status(Status.loading);
      repository.applyPromotionCode(promotionCode).then(
        (applyResponse) {
          log('apply promotion response: $applyResponse');
          if (applyResponse.flag == SuccessFlags.basicSuccess.successCode) {
            status(Status.success);
            Get.snackbar('success'.tr, 'promotion_code_success'.tr);
            promotionCode = '';
          } else {
            toast('error', applyResponse.message ?? applyResponse.error ?? '');
            status(Status.error);
          }
        },
        onError: (err) {
          print("apply promotions error: $err");
          status(Status.error);
        },
      );
    } else {
      Get.snackbar('error', 'error_promotion_code'.tr);
    }
  }

  getExchangePointOptions() {
    exchangePointOPtions = const [
      ExchangePoint(
          text: 'convert_to_mobile_card',
          icon: Icons.add,
          option: ExchangePointOption.mobileCard),
      ExchangePoint(
          text: 'transfer_points',
          icon: Icons.add,
          option: ExchangePointOption.transfer),
      // ExchangePoint(
      //     text: 'book_ride_with_points',
      //     icon: Icons.add,
      //     option: ExchangePointOption.bookRide),
      // ExchangePoint(
      //     text: 'donate_points',
      //     icon: Icons.add,
      //     option: ExchangePointOption.donate),
      ExchangePoint(
          text: 'transactions',
          icon: Icons.add,
          option: ExchangePointOption.transactions),
      ExchangePoint(
          text: 'airtime_history',
          icon: Icons.add,
          option: ExchangePointOption.airtimeHistory),
    ];
  }

  getCoupons() {
    // Todo: fetch available coupons and user coupons
    coupons = [
      Coupon(
          name: 'Book 2 trips a week', point: 500, expireDate: DateTime.now()),
      Coupon(
          name: 'Book 5 trips a week', point: 1000, expireDate: DateTime.now()),
      Coupon(
          name: 'Order ride for someone',
          point: 1000,
          expireDate: DateTime.now()),
      Coupon(
          name: 'Top up wallet 150 Birr',
          point: 750,
          expireDate: DateTime.now()),
    ];
  }

  onSelectCoupon(Coupon coupon) {
    selectedCoupon = coupon;
    Get.toNamed(Routes.promoDetail);
  }

  onBuyAirtime(int amount) {
    status(Status.loading);
    repository.buyAirTime('$amount').then(
      (airtimeResponse) {
        if (airtimeResponse.flag == SuccessFlags.basicSuccess.successCode) {
          status(Status.success);
          Get.snackbar('success'.tr, 'buy_airtime_success'.tr);
          // update wallet balance
          walletBalance -= amount;
        } else {
          toast(
              'error', airtimeResponse.message ?? airtimeResponse.error ?? '');
          status(Status.error);
        }
      },
      onError: (err) {
        print("Buy airtime error: $err");
        status(Status.error);
      },
    );
  }

  transferPoints(String phoneNumber, String amount) {
    final Map<String, dynamic> transferPayload = {
      'phone_number': phoneNumber,
      'amount': amount,
      'integrated': '1',
    };

    status(Status.loading);
    repository.transferPoints(transferPayload).then(
      (transferResponse) {
        log('Transfer points: $transferResponse');
        if (transferResponse.flag == SuccessFlags.transferPoints.successCode) {
          status(Status.success);
          walletBalance -= int.parse(amount);
          Get.back();
          Get.snackbar('success'.tr, 'trasnsfer_success'.tr);
        } else {
          toast('error',
              transferResponse.message ?? transferResponse.error ?? '');
          status(Status.error);
        }
      },
      onError: (err) {
        print("Transfer points error: $err");
        status(Status.error);
      },
    );
  }

  _getPointTransactions() {
    repository.getPointTransactions().then(
      (transactionsResponse) {
        if (transactionsResponse.flag ==
            SuccessFlags.transferPoints.successCode) {
          if (transactionsResponse.message?.isNotEmpty ?? false) {
            transactions = transactionsResponse.message;
          }
        } else {
          toast('error', transactionsResponse.error ?? '');
        }
      },
      onError: (err) {
        print('Get point transactions error: $err');
      },
    );
  }

  _getAirtimeHistory() {
    repository.getAirtimeHistory().then(
      (airTimeHistoryResponse) {
        log('airtime history response here: $airTimeHistoryResponse');
        if (airTimeHistoryResponse.flag ==
            SuccessFlags.basicSuccess.successCode) {
          if (airTimeHistoryResponse.data?.isNotEmpty ?? false) {
            airtimeHistories = airTimeHistoryResponse.data;
          }
        } else {
          toast(
              'error',
              airTimeHistoryResponse.message ??
                  airTimeHistoryResponse.error ??
                  '');
        }
      },
      onError: (err) {
        print('Get Airtime History error: $err');
      },
    );
  }
}
