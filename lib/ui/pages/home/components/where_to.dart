import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'package:taxiye_passenger/shared/custom_icons.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';

class WhereTo extends GetView<HomeController> {
  const WhereTo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
      child: Container(
        decoration: const BoxDecoration(
          color: AppTheme.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 16.0)),
                  onPressed: controller.onRoutePickLocation,
                  child: Obx(() => Text(
                        controller.selectedService == HomeServiceIndex.delivery
                            ? 'what_do_you_need'.tr
                            : 'where_to'.tr,
                        style: AppTheme.title
                            .copyWith(fontSize: 16.0, color: Colors.white),
                      )),
                ),
              ),
              Obx(
                () => controller.selectedService == HomeServiceIndex.ride
                    ? GestureDetector(
                        onTap:
                            controller.selectedService == HomeServiceIndex.ride
                                ? () => _pickDate(context)
                                : null,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 8.0),
                            child: Row(
                              children: [
                                const Icon(CustomIcons.clock,
                                    color: AppTheme.darkTextColor),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    'now'.tr,
                                    style:
                                        AppTheme.title.copyWith(fontSize: 14.0),
                                  ),
                                ),
                                const Icon(Icons.expand_more,
                                    color: AppTheme.darkTextColor),
                              ],
                            ),
                          ),
                        ),
                      )
                    : const SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _pickDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 1)),
    );
    if (pickedDate != null) {
      controller.scheduleDate = pickedDate;
      _pickTime(context);
    }
  }

  _pickTime(BuildContext context) async {
    // selected time should be after 30 min
    final minTime = DateTime.now().add(const Duration(minutes: 30));
    final pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(minTime),
    );

    if (pickedTime != null) {
      print(
          'minTime.hour: ${minTime.hour}  pickedTime.hour: ${pickedTime.hour}  minTime.minute: ${minTime.minute}  pickedTime.minute: ${pickedTime.minute}');
      if (pickedTime.hour < minTime.hour ||
          pickedTime.minute < minTime.minute) {
        Get.snackbar('error'.tr, 'invalid_time'.tr);
      } else {
        controller.scheduleTime = pickedTime;
        controller.onRoutePickLocation(isSchedule: true);
      }
    }
  }
}
