import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:taxiye_passenger/utils/functions.dart';
import 'package:url_launcher/url_launcher.dart';

/*
  Handles any business logic and data binding with Promotions flow
  any Promotions api requests are made here
*/
class PromotionsController extends GetxController {
  final IPromotionsRepository repository;
  PromotionsController({required this.repository});

  final status = Status.success.obs;
  final AuthController _authController = Get.find();
  final HomeController _homeController = Get.find();

  final _walletBalance = 0.obs;
  get walletBalance => _walletBalance.value;
  set walletBalance(value) => _walletBalance.value = value;

  // exchange ponits
  late List<ExchangePoint> exchangePointOPtions;

  // coupons
  final _coupons = List<Coupon>.empty(growable: true).obs;
  get coupons => _coupons.value;
  set coupons(value) => _coupons.assignAll(value);

  final _promotions = List<Promotion>.empty(growable: true).obs;
  get promotions => _promotions.value;
  set promotions(value) => _promotions.assignAll(value);

  final _transactions = List<PointTransaction>.empty(growable: true).obs;
  get transactions => _transactions.value;
  set transactions(value) => _transactions.assignAll(value);

  final _airtimeHistories = List<AirtimeHistory>.empty(growable: true).obs;
  get airtimeHistories => _airtimeHistories.value;
  set airtimeHistories(value) => _airtimeHistories.assignAll(value);

  Coupon? selectedCoupon;
  Promotion? selectedPromotion;
  String promotionCode = '';
  String referralNumber = '';

  String currency = kCountries.first.currency;
  String countryCode = kCountries.first.code;
  Country country = kCountries.first;
  final GetStorage _storage = GetStorage();

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.
    super.onInit();

    // set referal code form phone number
    // User test;
    // test.phoneNo
    referralNumber =
        _authController.user.phoneNo?.replaceAll(RegExp('[\\D]'), '') ?? '';

    country = kCountries.firstWhere(
        (element) => element.code == _authController.user.countryCode,
        orElse: () => kCountries.first);
    countryCode = country.code;
    currency = country.currency;
    _getPromotionsAndCoupons();
    _getPromotionBalance();
    _getExchangePointOptions();
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

  _getPromotionsAndCoupons() {
    final promotionsPayload = {
      'latitude': _storage.read('latitude'),
      'longitude': _storage.read('longitude'),
    };
    status(Status.loading);
    repository.getPromotionsAndCoupons(promotionsPayload).then(
      (promotionsResponse) {
        if (promotionsResponse.flag == SuccessFlags.promotions.successCode) {
          status(Status.success);
          // check and set promotions and coupons
          if (promotionsResponse.promotions?.isNotEmpty ?? false) {
            promotions = promotionsResponse.promotions?.toSet().toList();
          }
          if (promotionsResponse.coupons?.isNotEmpty ?? false) {
            coupons = promotionsResponse.coupons;
          }
        } else {
          toast('error',
              promotionsResponse.message ?? promotionsResponse.error ?? '');
          status(Status.error);
        }
      },
      onError: (err) {
        print('Get promotions error: $err');
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

  _getExchangePointOptions() {
    exchangePointOPtions = const [
      ExchangePoint(
          text: 'convert_to_mobile_card',
          icon: 'assets/icons/exchange.png',
          option: ExchangePointOption.mobileCard),
      ExchangePoint(
          text: 'transfer_points',
          icon: 'assets/icons/transfer.png',
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
          icon: 'assets/icons/history.png',
          option: ExchangePointOption.transactions),
      ExchangePoint(
          text: 'airtime_history',
          icon: 'assets/icons/history.png',
          option: ExchangePointOption.airtimeHistory),
    ];
  }

  onSelectCoupon({Coupon? coupon, Promotion? promotion}) {
    selectedCoupon = coupon;
    selectedPromotion = promotion;
    Get.toNamed(Routes.promoDetail);
  }

  onPickOffer({Coupon? coupon, Promotion? promotion}) {
    _homeController.onPromoCouponSelected(coupon: coupon, promotion: promotion);
    Get.back();
  }

  onBuyAirtime(int amount) {
    status(Status.loading);
    repository.buyAirTime('$amount').then(
      (airtimeResponse) {
        if (airtimeResponse.flag == SuccessFlags.buyAirtime.successCode) {
          status(Status.success);
          Get.snackbar('success'.tr, 'buy_airtime_success'.tr);
          // update wallet balance
          walletBalance -= amount;

          launch('tel:*805*${airtimeResponse.voucherNumber}#');
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
        if (airTimeHistoryResponse.flag ==
            SuccessFlags.basicSuccess.successCode) {
          if (airTimeHistoryResponse.data?.isNotEmpty ?? false) {
            airtimeHistories = airTimeHistoryResponse.data;
          }
        } else {
          // toast(
          //     'error',
          //     airTimeHistoryResponse.message ??
          //         airTimeHistoryResponse.error ??
          //         '');
        }
      },
      onError: (err) {
        print('Get Airtime History error: $err');
      },
    );
  }

  onCouponBookNow() {
    _homeController.onPromoCouponSelected(
        coupon: selectedCoupon, promotion: selectedPromotion);
    Get.toNamed(Routes.home);
  }
}
