import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';

/*
  Handles any business logic and data binding with Promotions flow
  any Promotions api requests are made here
*/
class PromotionsController extends GetxController {
  final ICommonRepository repository;
  PromotionsController({required this.repository});

  final status = Status.success.obs;

  // exchange ponits
  late List<ExchangePoint> exchangePointOPtions;

  // coupons
  final _coupons = List<Coupon>.empty(growable: true).obs;
  get coupons => _coupons.value;
  set coupons(value) => _coupons.assignAll(value);

  Coupon? selectedCoupon;

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.
    super.onInit();

    getExchangePointOptions();
    getCoupons();
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
      ExchangePoint(
          text: 'book_ride_with_points',
          icon: Icons.add,
          option: ExchangePointOption.bookRide),
      ExchangePoint(
          text: 'donate_points',
          icon: Icons.add,
          option: ExchangePointOption.donate),
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
}
