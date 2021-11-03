import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/ui/controllers/orders_controller.dart';
import 'package:taxiye_passenger/ui/pages/orders/components/order_tile.dart';

class OrdersList extends GetView<OrdersController> {
  const OrdersList({
    Key? key,
    this.orders,
    this.scheduledRides,
    required this.onSelectOrder,
    this.onCancelSchedule,
  }) : super(key: key);

  final List<RideHistory>? orders;
  final List<ScheduledRide>? scheduledRides;
  final Function(dynamic selectedOrder) onSelectOrder;
  final Function(String pickupId)? onCancelSchedule;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final RideHistory? order = orders != null ? orders![index] : null;
        final ScheduledRide? scheduledRide =
            scheduledRides != null ? scheduledRides![index] : null;
        return Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
          child: OrderTile(
            order: order,
            schedule: scheduledRide,
            sourceIcon: controller.sourceIcon,
            destinationIcon: controller.destinationIcon,
            onTap: () => onSelectOrder(order ?? scheduledRide),
            getRoutePolyline: (origin, destination) =>
                controller.getRoutePolyline(origin, destination),
            onCancelSchedule: scheduledRide != null &&
                    scheduledRide.pickupId != null &&
                    onCancelSchedule != null
                ? () => onCancelSchedule!('${scheduledRide.pickupId}')
                : null,
          ),
        );
      },
      itemCount: orders?.length ?? scheduledRides?.length,
    );
  }
}
