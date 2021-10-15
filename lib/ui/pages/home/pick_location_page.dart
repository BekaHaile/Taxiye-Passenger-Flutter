import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'package:taxiye_passenger/ui/pages/home/components/location_search.dart';
import 'package:taxiye_passenger/ui/pages/home/components/locations_list.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class PickLocationPage extends GetView<HomeController> {
  const PickLocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WhiteAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPagePadding),
              child: Text(
                'pick_up_location'.tr,
                style: AppTheme.title.copyWith(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const LocationSearch(
              locationType: LocationType.pickUp,
            ),
            Obx(() =>
                !(controller.focusedSearchLocation == LocationType.pickUp &&
                        controller.locationSuggestions.isNotEmpty)
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: kPagePadding),
                            child: Text(
                              'drop_off_location'.tr,
                              style: AppTheme.title.copyWith(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const LocationSearch(
                            locationType: LocationType.dropOff,
                          ),
                        ],
                      )
                    : const SizedBox()),
            Obx(
              () => controller.locationSuggestions.isEmpty ||
                      (controller.focusedSearchLocation ==
                              LocationType.pickUp &&
                          controller.pickUpLocationSearch.isEmpty) ||
                      (controller.focusedSearchLocation ==
                              LocationType.dropOff &&
                          controller.dropOffLocationSearch.isEmpty)
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 17.0,
                                backgroundColor: AppTheme.lightGrey,
                                child: Icon(
                                  Icons.location_on,
                                  size: 20.0,
                                  color: AppTheme.primaryColor,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.tripStep = TripStep.pickOnMap;
                                  Get.back();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Text(
                                    'choose_on_map'.tr,
                                    style: AppTheme.body
                                        .copyWith(color: AppTheme.primaryColor),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          child: Row(
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              SavedPlacesTile(
                                  address: Address(type: 'add'),
                                  isAdd: true,
                                  onTap: () {
                                    controller.tripStep = TripStep.addPlace;
                                    Get.back();
                                  }),
                              SizedBox(
                                height: 95.0,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  physics: const BouncingScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    final Address address =
                                        controller.confirmedPlaces[index];
                                    return SavedPlacesTile(
                                      address: address,
                                      onTap: () => controller
                                          .onSavedLocationPicked(address),
                                    );
                                  },
                                  itemCount: controller.confirmedPlaces.length,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : LocationsList(
                      suggestions: controller.locationSuggestions,
                      onPickLocation: (suggestion) =>
                          controller.onPickLocationFromSearch(suggestion),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class SavedPlacesTile extends StatelessWidget {
  const SavedPlacesTile({
    Key? key,
    required this.address,
    required this.onTap,
    this.isAdd = false,
  }) : super(key: key);

  final Address address;
  final VoidCallback onTap;
  final bool isAdd;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 7.0, 0.0, 7.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
            boxShadow: [
              BoxShadow(
                color: AppTheme.shadowColor.withOpacity(0.12),
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(2, 2),
              ),
            ],
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  getPlaceIcon(address.type ?? ''),
                  color: AppTheme.darkTextColor,
                ),
                const SizedBox(height: 15.0),
                Text(
                  isAdd ? 'add'.tr : address.type ?? '',
                  style: AppTheme.title.copyWith(fontSize: 14.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  IconData getPlaceIcon(String addressType) {
    switch (addressType) {
      case 'home':
      case 'Home':
        return Icons.home_outlined;
      case 'work':
      case 'Work':
        return Icons.work_outlined;
      case 'add':
        return Icons.add;
      default:
        return Icons.location_city_outlined;
    }
  }
}
