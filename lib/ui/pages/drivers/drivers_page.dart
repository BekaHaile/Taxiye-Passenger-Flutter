import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/drivers_controller.dart';
import 'package:taxiye_passenger/ui/pages/drivers/components/drivers_list.dart';
import 'package:taxiye_passenger/ui/widgets/shadow_button.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';

class DriversPage extends GetView<DriversController> {
  DriversPage({Key? key}) : super(key: key);

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WhiteAppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'your_drivers'.tr,
                style: AppTheme.body.copyWith(fontSize: 24.0),
              ),
            ),
            const SizedBox(height: 30.0),
            Container(
              decoration: const BoxDecoration(
                color: AppTheme.lightSilverColor,
                borderRadius: BorderRadius.all(Radius.circular(45.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Obx(() => Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ShadowButton(
                            height: 40,
                            color: controller.driverPreference ==
                                    DriverPreference.favourite
                                ? AppTheme.primaryColor
                                : Colors.transparent,
                            decoration: controller.driverPreference ==
                                    DriverPreference.blocked
                                ? const BoxDecoration(
                                    color: AppTheme.lightSilverColor,
                                  )
                                : null,
                            text: 'favourites'.tr,
                            textStyle: AppTheme.title.copyWith(
                              color: controller.driverPreference ==
                                      DriverPreference.favourite
                                  ? Colors.white
                                  : AppTheme.darkColor,
                              fontSize: 14.0,
                            ),
                            leadingIcon: Icon(Icons.star,
                                color: controller.driverPreference ==
                                        DriverPreference.favourite
                                    ? Colors.white
                                    : AppTheme.darkColor),
                            onPressed: () {
                              controller.driverPreference =
                                  DriverPreference.favourite;
                              _pageController.animateToPage(0,
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.easeIn);
                            }),
                        const SizedBox(width: 30.0),
                        ShadowButton(
                            height: 40,
                            color: controller.driverPreference ==
                                    DriverPreference.blocked
                                ? AppTheme.primaryColor
                                : Colors.transparent,
                            decoration: controller.driverPreference ==
                                    DriverPreference.favourite
                                ? const BoxDecoration(
                                    color: AppTheme.lightSilverColor,
                                  )
                                : null,
                            text: 'blocked'.tr,
                            textStyle: AppTheme.title.copyWith(
                              color: controller.driverPreference ==
                                      DriverPreference.blocked
                                  ? Colors.white
                                  : AppTheme.darkColor,
                              fontSize: 14.0,
                            ),
                            leadingIcon: Icon(Icons.block,
                                color: controller.driverPreference ==
                                        DriverPreference.blocked
                                    ? Colors.white
                                    : AppTheme.darkColor),
                            onPressed: () {
                              controller.driverPreference =
                                  DriverPreference.blocked;
                              _pageController.animateToPage(1,
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.easeIn);
                            }),
                      ],
                    )),
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                physics: const BouncingScrollPhysics(),
                // physics: const NeverScrollableScrollPhysics(),
                children: [
                  Obx(() => DriversList(drivers: controller.drivers)),
                  Obx(() => DriversList(drivers: controller.drivers)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
