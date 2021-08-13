import 'package:flutter/material.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/promotions_controller.dart';
import 'package:taxiye_passenger/ui/pages/promotion/components/coupon_list.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:get/get.dart';

class CouponsPage extends GetView<PromotionsController> {
  const CouponsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WhiteAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPagePadding),
              child: Text(
                'your_coupons'.tr,
                style: AppTheme.body.copyWith(fontSize: 24.0),
              ),
            ),
            const SizedBox(height: 30.0),
            CouponList(
              coupons: controller.coupons,
              showExpires: true,
              onItemSelect: (selectedCoupon) =>
                  controller.onSelectCoupon(selectedCoupon),
            ),
          ],
        ),
      ),
    );
  }
}
