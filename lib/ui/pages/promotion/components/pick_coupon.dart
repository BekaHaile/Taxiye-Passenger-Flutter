import 'package:flutter/cupertino.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/ui/controllers/promotions_controller.dart';
import 'package:taxiye_passenger/ui/pages/common/empty_state.dart';
import 'package:taxiye_passenger/ui/pages/promotion/components/coupon_list.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class PickCoupon extends GetView<PromotionsController> {
  const PickCoupon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: AppTheme.bottomSheetDecoration,
          child: Padding(
            padding: const EdgeInsets.all(kPagePadding),
            child: Column(
              children: [
                Text('pick_offer'.tr, style: AppTheme.title2),
                const SizedBox(height: 20.0),
                Expanded(
                    child: Obx(() => controller.coupons.isNotEmpty
                        ? CouponList(
                            coupons: controller.coupons,
                            showExpires: true,
                            onCouponSelect: (selectedCoupon) =>
                                controller.onPickOffer(selectedCoupon),
                          )
                        : const EmptyState()))
              ],
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
