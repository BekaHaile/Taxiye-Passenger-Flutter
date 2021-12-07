import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/functions.dart';

class CouponTile extends StatelessWidget {
  const CouponTile({
    Key? key,
    this.coupon,
    this.promotion,
    required this.onTap,
    required this.showExpires,
  }) : super(key: key);

  final Coupon? coupon;
  final Promotion? promotion;
  final VoidCallback onTap;
  final bool showExpires;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: AppTheme.boxDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/coupon.png',
              height: 70.0,
              width: 70.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 10.0),
              child: Container(
                constraints: BoxConstraints(maxWidth: Get.width * 0.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (showExpires)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'expires'.tr,
                            style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.greyColor,
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            coupon?.expiryDate != null ||
                                    promotion?.endOn != null
                                ? formatDate(coupon?.expiryDate ??
                                    promotion?.endOn ??
                                    DateTime.now())
                                : '',
                            style: AppTheme.title.copyWith(
                              fontSize: 14.0,
                              color: AppTheme.darkTextColor,
                            ),
                          )
                        ],
                      ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                if (coupon != null)
                                  TextSpan(
                                    text: '${coupon?.discount} ',
                                    style: const TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w700,
                                      color: AppTheme.primaryColor,
                                    ),
                                  ),
                                TextSpan(
                                  text: coupon != null
                                      ? 'points'.tr
                                      : promotion?.title ?? '',
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    color: AppTheme.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            coupon?.title ?? promotion?.promoText ?? '',
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
            )
          ],
        ),
      ),
    );
  }
}
