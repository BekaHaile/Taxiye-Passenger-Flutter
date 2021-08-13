import 'package:flutter/material.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/promotions_controller.dart';
import 'package:taxiye_passenger/ui/pages/promotion/components/coupon_list.dart';
import 'package:taxiye_passenger/ui/pages/promotion/components/current_points.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class PromotionsPage extends GetView<PromotionsController> {
  const PromotionsPage({Key? key}) : super(key: key);

  final contentPadding =
      const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0);

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
                'promotions'.tr,
                style: AppTheme.body.copyWith(fontSize: 24.0),
              ),
            ),
            const SizedBox(height: 15.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      style: AppTheme.title.copyWith(fontSize: 16.0),
                      decoration: InputDecoration(
                        hintText: 'enter_promocode'.tr,
                        filled: true,
                        fillColor: AppTheme.lightSilverColor,
                        hintStyle: AppTheme.body.copyWith(
                            fontSize: 16.0, color: AppTheme.greyColor),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 12.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  RoundedButton(
                      width: 90.0,
                      text: 'apply'.tr,
                      textStyle: AppTheme.title.copyWith(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Todo: Add Driver to favourites
                      }),
                ],
              ),
            ),
            Padding(
              padding: contentPadding,
              child: const CurrentPoints(),
            ),
            Padding(
              padding: contentPadding,
              child: Row(
                children: [
                  Expanded(
                    child: PromotionOptionBox(
                      title: 'exchange_points',
                      icon: Icons.add,
                      onTap: () => Get.toNamed(Routes.exchangePoints),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: PromotionOptionBox(
                      title: 'my_coupons',
                      icon: Icons.add,
                      onTap: () => Get.toNamed(Routes.coupons),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: PromotionOptionBox(
                      title: 'refer_friend',
                      icon: Icons.add,
                      onTap: () => Get.toNamed(Routes.referFreind),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: contentPadding,
              child: Text('ride_rewards'.tr, style: AppTheme.body),
            ),
            SizedBox(
              height: 160.0,
              child: CouponList(
                coupons: controller.coupons,
                scrollDirection: Axis.horizontal,
                onItemSelect: (selectedCoupon) =>
                    controller.onSelectCoupon(selectedCoupon),
              ),
            ),
            Padding(
              padding: contentPadding,
              child: Text('delivery_rewards'.tr, style: AppTheme.body),
            ),
            SizedBox(
              height: 160.0,
              child: CouponList(
                coupons: controller.coupons,
                scrollDirection: Axis.horizontal,
                onItemSelect: (selectedCoupon) =>
                    controller.onSelectCoupon(selectedCoupon),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PromotionOptionBox extends StatelessWidget {
  const PromotionOptionBox({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
              color: AppTheme.shadowColor.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 20,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: AppTheme.darkTextColor,
              ),
              const SizedBox(height: 15.0),
              Text(
                title.tr,
                textAlign: TextAlign.center,
                style: AppTheme.title.copyWith(fontSize: 14.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
