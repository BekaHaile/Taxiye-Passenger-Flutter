import 'package:flutter/material.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/promotions_controller.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:taxiye_passenger/utils/functions.dart';

class PromoDetailPage extends GetView<PromotionsController> {
  const PromoDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WhiteAppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
            kPagePadding, 0.0, kPagePadding, kPagePadding),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'promo_details'.tr,
                    style: AppTheme.body.copyWith(fontSize: 24.0),
                  ),
                  const SizedBox(height: 30.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: [
                              BoxShadow(
                                color: AppTheme.shadowColor.withOpacity(0.2),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset: const Offset(1, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Image.asset(
                                  'assets/images/coupon.png',
                                  height: 70.0,
                                  width: 70.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    20.0, 10.0, 10.0, 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text:
                                                '${controller.selectedCoupon?.point} ',
                                            style: const TextStyle(
                                              fontSize: 34.0,
                                              fontWeight: FontWeight.w700,
                                              color: AppTheme.primaryColor,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'points'.tr,
                                            style: AppTheme.title
                                                .copyWith(fontSize: 18.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 5.0),
                                    Text(
                                      controller.selectedCoupon?.name ?? '',
                                      style: AppTheme.title.copyWith(
                                        fontSize: 14.0,
                                        color: AppTheme.darkTextColor,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Text(
                          'expires'.tr.toUpperCase(),
                          style: AppTheme.title.copyWith(
                            fontSize: 14.0,
                            color: AppTheme.darkTextColor,
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          formatDate(controller.selectedCoupon?.expireDate ??
                              DateTime.now()),
                          style: AppTheme.title.copyWith(
                              fontSize: 16.0, color: AppTheme.primaryColor),
                        ),
                        const SizedBox(height: 20.0),
                        Text(
                          'detail'.tr.toUpperCase(),
                          style: AppTheme.title.copyWith(
                            fontSize: 14.0,
                            color: AppTheme.darkTextColor,
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit dolore cillum minim tempor enim. Elit aute irure tempor cupidatat incididunt sint.',
                          style: AppTheme.title.copyWith(
                            fontSize: 14.0,
                            color: AppTheme.darkTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: RoundedButton(
                    text: 'book_now'.tr,
                    onPressed: () {
                      //Todo: on coupon action
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
