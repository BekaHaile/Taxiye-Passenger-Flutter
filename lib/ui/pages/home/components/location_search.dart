import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:get/get.dart';

class LocationSearch extends GetView<HomeController> {
  const LocationSearch({
    Key? key,
    required this.locationType,
  }) : super(key: key);

  final LocationType locationType;

  @override
  Widget build(BuildContext context) {
    _setInitialValues();
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: kPagePadding, vertical: 10.0),
      child: Focus(
        onFocusChange: (focus) {
          if (focus) {
            controller.focusedSearchLocation = locationType;
          }
        },
        child: TextField(
            controller: getSearchController(),
            keyboardType: TextInputType.streetAddress,
            onChanged: (value) => controller.getPlaceSugestions(value),
            style: AppTheme.title2,
            decoration: AppTheme.textFieldDecoration.copyWith(
              filled: true,
              fillColor: Colors.white,
              hintText: locationType == LocationType.pickUp
                  ? 'pick_up_location'.tr
                  : 'drop_off_location'.tr,
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
                                color: AppTheme.primaryColor,
                              )),
                        ))
                    : (locationType == LocationType.pickUp &&
                                controller.pickUpLocationSearch.isNotEmpty) ||
                            (locationType == LocationType.dropOff &&
                                controller.dropOffLocationSearch.isNotEmpty)
                        ? IconButton(
                            onPressed: () {
                              getSearchController().clear();
                              if (locationType == LocationType.pickUp) {
                                controller.pickUpLocationSearch = '';
                              } else {
                                controller.dropOffLocationSearch = '';
                              }
                              // getSearchController().text = '';
                            },
                            icon: const Icon(Icons.cancel,
                                color: AppTheme.primaryColor))
                        : const SizedBox(),
              ),
            )),
      ),
    );
  }

  _setInitialValues() {
    String initialText = locationType == LocationType.pickUp
        ? controller.pickupLocation?.placeName ?? ''
        : controller.dropOffLocation?.placeName ?? '';
    getSearchController().text = initialText;
    if (locationType == LocationType.pickUp) {
      controller.pickUpLocationSearch = initialText;
    } else {
      controller.dropOffLocationSearch = initialText;
    }
  }

  TextEditingController getSearchController() =>
      locationType == LocationType.pickUp
          ? controller.pickUpSearchController
          : controller.dropOffSearchController;
}
