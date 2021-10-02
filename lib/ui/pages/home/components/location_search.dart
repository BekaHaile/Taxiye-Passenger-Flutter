import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:get/get.dart';

class LocationSearch extends GetView<HomeController> {
  const LocationSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPagePadding),
      child: TextField(
          controller: controller.searchController,
          keyboardType: TextInputType.streetAddress,
          onChanged: (value) => controller.getPlaceSugestions(value),
          style: AppTheme.title2,
          decoration: AppTheme.textFieldDecoration.copyWith(
            filled: true,
            fillColor: Colors.white,
            hintText: 'enter_location'.tr,
            hintStyle: AppTheme.subtitle
                .copyWith(fontSize: 16.0, fontWeight: FontWeight.w600),
            suffixIcon: Obx(
              () => controller.searchLoading
                  ? const Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: SizedBox(
                            width: 20.0,
                            height: 20.0,
                            child: CircularProgressIndicator(
                              strokeWidth: 2.0,
                            )),
                      ))
                  : controller.locationSearch.isNotEmpty
                      ? IconButton(
                          onPressed: () {
                            controller.searchController.clear();
                            controller.locationSearch = '';
                          },
                          icon: const Icon(Icons.cancel))
                      : const SizedBox(),
            ),
          )),
    );
  }
}
