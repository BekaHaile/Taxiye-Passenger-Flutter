import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/ui/controllers/orders_controller.dart';
import 'package:taxiye_passenger/ui/pages/common/empty_state.dart';
import 'package:taxiye_passenger/ui/pages/orders/components/order_tile.dart';

class OrdersList extends StatefulWidget {
  const OrdersList({
    Key? key,
    this.orders,
    this.scheduledRides,
    this.tab = '',
    this.onSelectOrder,
    this.onCancelSchedule,
  }) : super(key: key);

  final List<RideHistory>? orders;
  final List<ScheduledRide>? scheduledRides;
  final String tab;
  final Function(RideHistory selectedOrder)? onSelectOrder;
  final Function(String pickupId)? onCancelSchedule;

  @override
  State<OrdersList> createState() => _OrdersListState();
}

class _OrdersListState extends State<OrdersList> {
  OrdersController controller = Get.find();
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    if (widget.tab.isNotEmpty) {
      _scrollController.addListener(_scrollListener);
    }
  }

  void _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      controller.getRideHistory('scroll');
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return (widget.orders?.isNotEmpty ?? false) ||
            (widget.scheduledRides?.isNotEmpty ?? false)
        ? ListView.builder(
            controller: _scrollController,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final RideHistory? order =
                  widget.orders != null ? widget.orders![index] : null;
              final ScheduledRide? scheduledRide = widget.scheduledRides != null
                  ? widget.scheduledRides![index]
                  : null;
              return Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                child: OrderTile(
                  order: order,
                  schedule: scheduledRide,
                  sourceIcon: controller.sourceIcon,
                  destinationIcon: controller.destinationIcon,
                  onTap: widget.onSelectOrder != null && order != null
                      ? () => widget.onSelectOrder!(order)
                      : () {},
                  getRoutePolyline: (origin, destination) =>
                      controller.getRoutePolyline(origin, destination),
                  onCancelSchedule: scheduledRide != null &&
                          scheduledRide.pickupId != null &&
                          widget.onCancelSchedule != null
                      ? () =>
                          widget.onCancelSchedule!('${scheduledRide.pickupId}')
                      : null,
                ),
              );
            },
            itemCount: widget.orders?.length ?? widget.scheduledRides?.length,
          )
        : const EmptyState();
  }
}
