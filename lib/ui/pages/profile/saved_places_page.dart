import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/profile_controller.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class SavedPlacesPage extends GetView<ProfileController> {
  const SavedPlacesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WhiteAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPagePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'saved_places'.tr,
                style: AppTheme.body.copyWith(fontSize: 24.0),
              ),
              const SizedBox(height: 40.0),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 16.0),
                  child: Row(
                    children: [
                      const Icon(Icons.add),
                      const SizedBox(width: 14.0),
                      Text(
                        'add_new_place'.tr,
                        style: AppTheme.title2,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Obx(() => ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      final SavedPlace place = controller.savedPlaces[index];
                      return SavedPlaceTile(
                          place: place,
                          onEditTab: () {
                            // Todo: on edit saved places
                          },
                          onDeleteTab: () {
                            // Todo: on delete saved places
                          });
                    },
                    itemCount: controller.savedPlaces.length,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class SavedPlaceTile extends StatelessWidget {
  const SavedPlaceTile({
    Key? key,
    required this.place,
    required this.onEditTab,
    required this.onDeleteTab,
  }) : super(key: key);

  final SavedPlace place;
  final VoidCallback onEditTab;
  final VoidCallback onDeleteTab;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 40.0,
                height: 40.0,
                decoration: const BoxDecoration(
                    color: AppTheme.greyColor2, shape: BoxShape.circle),
                child: Icon(
                  place.placeTitle == 'Home' ? Icons.home : Icons.work,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 8.0),
              Text(place.placeTitle, style: AppTheme.title2),
              const Spacer(),
              GestureDetector(
                onTap: onEditTab,
                child: const Icon(Icons.edit),
              ),
              const SizedBox(width: 20.0),
              GestureDetector(
                onTap: onDeleteTab,
                child: const Icon(Icons.delete),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Image.asset('assets/images/sample_saved_place.png'),
          const SizedBox(height: 10.0),
          Text(
            'pinned_on_map'.tr,
            style: AppTheme.title2,
          ),
          Text(
            place.placeAddress,
            style: AppTheme.body,
          ),
        ],
      ),
    );
  }
}
