import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/ui/pages/promotion/components/coupon_tile.dart';

class CouponList extends StatelessWidget {
  const CouponList({
    Key? key,
    required this.coupons,
    required this.onItemSelect,
    this.scrollDirection = Axis.vertical,
    this.showExpires = false,
  }) : super(key: key);

  final List<Coupon> coupons;
  final Function(Coupon selectedItem) onItemSelect;
  final Axis scrollDirection;
  final bool showExpires;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      scrollDirection: scrollDirection,
      itemBuilder: (context, index) {
        final Coupon coupon = coupons[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: CouponTile(
            coupon: coupon,
            showExpires: showExpires,
            onTap: () => onItemSelect(coupon),
          ),
        );
      },
      itemCount: coupons.length,
    );
  }
}
