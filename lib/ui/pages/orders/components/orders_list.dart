import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/ui/pages/orders/components/order_tile.dart';

class OrdersList extends StatelessWidget {
  const OrdersList({
    Key? key,
    required this.orders,
    required this.onSelectOrder,
  }) : super(key: key);

  final List<Order> orders;
  final Function(Order selectedOrder) onSelectOrder;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final Order order = orders[index];
        return Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
          child: OrderTile(
            order: order,
            onTap: () => onSelectOrder(order),
          ),
        );
      },
      itemCount: orders.length,
    );
  }
}
