import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/orders_controller.dart';
import 'package:taxiye_passenger/ui/pages/common/custom_tab_header.dart';
import 'package:taxiye_passenger/ui/pages/orders/components/orders_list.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';

class OrdersPage extends GetView<OrdersController> {
  OrdersPage({Key? key}) : super(key: key);

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: const WhiteAppBar(),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'your_orders'.tr,
                    style: AppTheme.body.copyWith(fontSize: 24.0),
                  ),
                ),
                const SizedBox(height: 20.0),
                Obx(() => CustomTabHeader(
                      tabTitles: [
                        TabTitle(
                            text: describeEnum(OrderStatus.completed),
                            icon: Icons.check_circle),
                        TabTitle(
                            text: describeEnum(OrderStatus.canceled),
                            icon: Icons.clear),
                        TabTitle(
                            text: describeEnum(OrderStatus.scheduled),
                            icon: Icons.schedule),
                      ],
                      selectedTitle: describeEnum(controller.orderStatus),
                      onSelectTab: (selectedTab) {
                        int tabIndex = 0;
                        switch (selectedTab.text) {
                          case 'completed':
                            controller.orderStatus = OrderStatus.completed;
                            tabIndex = 0;
                            break;
                          case 'canceled':
                            tabIndex = 1;
                            controller.orderStatus = OrderStatus.canceled;
                            break;
                          case 'scheduled':
                            tabIndex = 2;
                            controller.orderStatus = OrderStatus.scheduled;
                            break;
                        }
                        _pageController.animateToPage(tabIndex,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeIn);
                      },
                    )),
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    // physics: const BouncingScrollPhysics(),
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Obx(() => OrdersList(
                            orders: controller.completedRides,
                            onSelectOrder: (selectedOrder) =>
                                controller.onSelectOrder(selectedOrder),
                          )),
                      Obx(() => OrdersList(
                            orders: controller.cancelledRides,
                            onSelectOrder: (selectedOrder) =>
                                controller.onSelectOrder(selectedOrder),
                          )),
                      Obx(() => OrdersList(
                            scheduledRides: controller.scheduledRides,
                            onCancelSchedule: (pickupId) =>
                                controller.cancelRideSchedule(pickupId),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Obx(() => ModalProgressHUD(
              child: const SizedBox(),
              inAsyncCall: controller.status.value == Status.loading,
            )),
      ],
    );
  }
}
