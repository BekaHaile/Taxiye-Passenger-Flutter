import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/shared/custom_icons.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'package:taxiye_passenger/ui/pages/home/components/locations_list.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class PickLocationPage extends GetView<HomeController> {
  PickLocationPage({Key? key}) : super(key: key);

  final List<SavedLocation> _savedLocations = [
    SavedLocation(title: 'add', icon: Icons.add),
    SavedLocation(title: 'home', icon: Icons.home_outlined),
    SavedLocation(title: 'work', icon: Icons.work_outline),
    SavedLocation(title: 'bf_house', icon: Icons.home_outlined),
  ];

  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WhiteAppBar(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPagePadding),
            child: Text(
              'drop_off_location'.tr,
              style: AppTheme.title.copyWith(fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(kPagePadding),
            child: TextField(
                controller: _searchController,
                keyboardType: TextInputType.streetAddress,
                onChanged: (value) => controller.getPlaceSugestions(value),
                style: AppTheme.title.copyWith(fontSize: 16.0),
                decoration: AppTheme.textFieldDecoration.copyWith(
                  hintText: 'enter_location'.tr,
                  hintStyle: AppTheme.subtitle
                      .copyWith(fontSize: 16.0, fontWeight: FontWeight.w600),
                  suffixIcon: Obx(
                    () => controller.locationSearch.isNotEmpty
                        ? IconButton(
                            onPressed: () {
                              _searchController.clear();
                              controller.locationSearch = '';
                            },
                            icon: const Icon(Icons.cancel))
                        : const SizedBox(),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'choose_on_map'.tr,
                    style: AppTheme.body.copyWith(color: AppTheme.primaryColor),
                  ),
                ),
              ],
            ),
          ),
          Obx(
            () => controller.locationSuggestions.isEmpty ||
                    controller.locationSearch.isEmpty
                ? SizedBox(
                    height: 95.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        final SavedLocation location = _savedLocations[index];
                        return Padding(
                          padding:
                              const EdgeInsets.fromLTRB(16.0, 7.0, 0.0, 7.0),
                          child: GestureDetector(
                            onTap: () => {},
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(12.0)),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        AppTheme.shadowColor.withOpacity(0.12),
                                    spreadRadius: 0,
                                    blurRadius: 10,
                                    offset: const Offset(2, 2),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0, vertical: 10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      location.icon,
                                      color: AppTheme.darkTextColor,
                                    ),
                                    const SizedBox(height: 15.0),
                                    Text(
                                      location.title.tr,
                                      style: AppTheme.title
                                          .copyWith(fontSize: 14.0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: _savedLocations.length,
                    ),
                  )
                : Expanded(
                    child: LocationsList(
                      suggestions: controller.locationSuggestions,
                      onPickLocation: (suggestion) =>
                          controller.onLocationPicked(suggestion),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

class SavedLocation {
  SavedLocation({
    required this.title,
    this.icon = CustomIcons.car,
  });

  String title;
  IconData icon;
}
