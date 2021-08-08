import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/drivers_controller.dart';
import 'package:taxiye_passenger/ui/pages/common/custom_tab_header.dart';
import 'package:taxiye_passenger/ui/pages/drivers/components/drivers_list.dart';
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
              alignment: Alignment.centerLeft,
              child: Text(
                'your_drivers'.tr,
                style: AppTheme.body.copyWith(fontSize: 24.0),
              ),
            ),
            const SizedBox(height: 20.0),
            Obx(() => CustomTabHeader(
                  tabTitles: [
                    TabTitle(
                        text: describeEnum(DriverPreference.favourite),
                        icon: Icons.star),
                    TabTitle(
                        text: describeEnum(DriverPreference.blocked),
                        icon: Icons.block),
                  ],
                  selectedTitle: describeEnum(controller.driverPreference),
                  onSelectTab: (selectedTab) {
                    int tabIndex = 0;
                    switch (selectedTab.text) {
                      case 'favourite':
                        controller.driverPreference =
                            DriverPreference.favourite;
                        tabIndex = 0;
                        break;
                      case 'blocked':
                        controller.driverPreference = DriverPreference.blocked;
                        tabIndex = 1;
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
