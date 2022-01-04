import 'package:flutter/cupertino.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/ui/controllers/promotions_controller.dart';
import 'package:taxiye_passenger/ui/pages/common/empty_state.dart';
import 'package:taxiye_passenger/ui/pages/promotion/components/coupon_list.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class PickPromotion extends GetView<PromotionsController> {
  const PickPromotion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: AppTheme.bottomSheetDecoration,
          child: Padding(
            padding: const EdgeInsets.all(kPagePadding),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Obx(
                () => Column(
                  children: [
                    Text('pick_offer'.tr, style: AppTheme.title2),
                    const SizedBox(height: 20.0),
                    if (controller.promotions.isNotEmpty)
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'promotion'.trPlural(
                                'promotions', controller.promotions.length),
                            style: AppTheme.subtitle.copyWith(fontSize: 18.0),
                          )),
                    if (controller.promotions.isNotEmpty)
                      CouponList(
                        promotions: controller.promotions,
                        onPromotionSelect: (selectedPromotion) => controller
                            .onPickOffer(promotion: selectedPromotion),
                      ),
                    if (controller.coupons.isNotEmpty)
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'coupon'
                                .trPlural('coupons', controller.coupons.length),
                            style: AppTheme.subtitle.copyWith(fontSize: 18.0),
                          )),
                    if (controller.coupons.isNotEmpty)
                      CouponList(
                        coupons: controller.coupons,
                        onCouponSelect: (selectedCoupon) =>
                            controller.onPickOffer(coupon: selectedCoupon),
                      ),
                    if (controller.coupons.isEmpty &&
                        controller.promotions.isEmpty)
                      SizedBox(
                        height: Get.height * 0.5,
                        child: const EmptyState()),
                  ],
                ),
              ),
            ),
          ),
        ),
        Obx(() => ModalProgressHUD(
              child: const SizedBox(),
              inAsyncCall: controller.status.value == Status.loading,
            ))
      ],
    );
  }
}
