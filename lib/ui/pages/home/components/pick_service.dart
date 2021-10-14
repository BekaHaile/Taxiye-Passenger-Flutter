import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'package:taxiye_passenger/ui/pages/home/components/where_to.dart';
import 'package:taxiye_passenger/ui/pages/home/components/service_list.dart';
import 'package:taxiye_passenger/ui/pages/home/home_page.dart';

class PickService extends GetView<HomeController> {
  const PickService({
    Key? key,
    required this.homeServices,
  }) : super(key: key);

  final List<HomeService> homeServices;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.white.withOpacity(0),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      width: Get.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          WhereTo(
            onRoutePickLocation: controller.onRoutePickLocation,
            onPickDate: (pickedDate) => controller.scheduleDate = pickedDate,
            onPickTime: (pickedTime) {
              controller.scheduleTime = pickedTime;
              controller.onRoutePickLocation();
            },
          ),
          Obx(() => ServiceList(
                services: homeServices,
                selectedService: controller.selectedService,
                onSelectService: (selectedService) =>
                    controller.selectedService = selectedService,
              )),
        ],
      ),
    );
  }
}
