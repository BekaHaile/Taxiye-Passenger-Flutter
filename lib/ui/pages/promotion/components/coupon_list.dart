import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/ui/pages/promotion/components/coupon_tile.dart';

class CouponList extends StatelessWidget {
  const CouponList({
    Key? key,
    this.coupons,
    this.promotions,
    this.onCouponSelect,
    this.onPromotionSelect,
    this.scrollDirection = Axis.vertical,
    this.showExpires = false,
  }) : super(key: key);

  final List<Coupon>? coupons;
  final List<Promotion>? promotions;
  final Function(Coupon selectedItem)? onCouponSelect;
  final Function(Promotion selectedItem)? onPromotionSelect;
  final Axis scrollDirection;
  final bool showExpires;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      scrollDirection: scrollDirection,
      itemBuilder: (context, index) {
        final Coupon? coupon = coupons != null ? coupons![index] : null;
        final Promotion? promotion =
            promotions != null ? promotions![index] : null;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: CouponTile(
            coupon: coupon,
            promotion: promotion,
            showExpires: showExpires,
            onTap: () {
              if (coupons != null && onCouponSelect != null) {
                onCouponSelect!(coupon!);
              } else if (promotions != null && onPromotionSelect != null) {
                onPromotionSelect!(promotion!);
              }
            },
          ),
        );
      },
      itemCount: coupons?.length ?? promotions?.length,
    );
  }
}
