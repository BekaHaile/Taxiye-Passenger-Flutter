import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'package:taxiye_passenger/ui/pages/common/confirm_dialog.dart';
import 'package:taxiye_passenger/ui/pages/common/empty_state.dart';
import 'package:taxiye_passenger/ui/pages/profile/components/add_new.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class SavedPlacesPage extends GetView<HomeController> {
  const SavedPlacesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            appBar: const WhiteAppBar(),
            body: controller.recentLocations.isEmpty &&
                    controller.savedPlaces.isEmpty
                ? Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kPagePadding),
                    child: Column(
                      children: const [TopUI(), EmptyState()],
                    ),
                  )
                : SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: kPagePadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TopUI(),
                          Obx(
                            () => ListView.builder(
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, index) {
                                final Address place =
                                    controller.savedPlaces[index];
                                return SavedPlaceTile(
                                    place: place,
                                    sourceIcon: controller.sourceIcon,
                                    onEditTab: () =>
                                        controller.onEditSavedPlace(place),
                                    onDeleteTab: () =>
                                        controller.updateSavedPlaces(
                                            updateMode: UpdateMode.delete,
                                            address: place));
                              },
                              itemCount: controller.savedPlaces.length,
                            ),
                          ),
                          if (controller.recentLocations.isNotEmpty)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'recent_locations'.tr,
                                style:
                                    AppTheme.subtitle.copyWith(fontSize: 18.0),
                              ),
                            ),
                          Obx(
                            () => ListView.builder(
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, index) {
                                final Address place =
                                    controller.recentLocations[index];
                                return SavedPlaceTile(
                                  place: place,
                                  sourceIcon: controller.sourceIcon,
                                );
                              },
                              itemCount: controller.recentLocations.length,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
        Obx(() => ModalProgressHUD(
              child: const SizedBox(),
              inAsyncCall: controller.status.value == Status.loading,
            ))
      ],
    );
  }
}

class TopUI extends GetView<HomeController> {
  const TopUI({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'saved_places'.tr,
          style: AppTheme.body.copyWith(fontSize: 24.0),
        ),
        const SizedBox(height: 20.0),
        AddNew(
          title: 'add_new_place'.tr,
          onTap: () {
            controller.tripStep = TripStep.addPlace;
            controller.updateFrom = 'profile';
            Get.toNamed(Routes.home);
          },
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}

class SavedPlaceTile extends StatefulWidget {
  const SavedPlaceTile({
    Key? key,
    required this.place,
    this.sourceIcon = BitmapDescriptor.defaultMarker,
    this.onEditTab,
    this.onDeleteTab,
  }) : super(key: key);

  final Address place;
  final BitmapDescriptor sourceIcon;
  final VoidCallback? onEditTab;
  final VoidCallback? onDeleteTab;

  @override
  State<SavedPlaceTile> createState() => _SavedPlaceTileState();
}

class _SavedPlaceTileState extends State<SavedPlaceTile> {
  late GoogleMapController mapController;
  Set<Marker> _markers = {};

  _onMapCreated(GoogleMapController mpController) async {
    mapController = mpController;

    if (widget.place.latitude != null && widget.place.longitude != null) {
      // set place marker
      LatLng placePoint = LatLng(double.parse(widget.place.latitude!),
          double.parse(widget.place.longitude!));

      setState(() {
        _markers.add(Marker(
            markerId: const MarkerId('sourcePin'),
            position: placePoint,
            icon: widget.sourceIcon));
      });

      mapController.moveCamera(
        CameraUpdate.newCameraPosition(CameraPosition(
          target: placePoint,
          zoom: 15,
        )),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.place.type != null)
            Row(
              children: [
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: const BoxDecoration(
                      color: AppTheme.greyColor2, shape: BoxShape.circle),
                  child: Icon(
                    widget.place.type == 'home' ? Icons.home : Icons.work,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 8.0),
                Text(widget.place.type ?? 'home', style: AppTheme.title2),
                const Spacer(),
                GestureDetector(
                  onTap: widget.onEditTab,
                  child: const Icon(Icons.edit),
                ),
                const SizedBox(width: 20.0),
                GestureDetector(
                  onTap: () {
                    Get.dialog(ConfirmDialog(
                      title: 'remove_address'.tr,
                      content: 'remove_address_info'.tr,
                      actionCallback: widget.onDeleteTab,
                      actionText: 'yes',
                      cancelText: 'no',
                    ));
                  },
                  child: const Icon(Icons.delete),
                ),
              ],
            ),
          const SizedBox(height: 10.0),
          SizedBox(
            height: Get.height * 0.25,
            child: GoogleMap(
              initialCameraPosition: const CameraPosition(
                target: kInitialPosition,
                zoom: kCameraZoom,
              ),
              onMapCreated: (controller) => _onMapCreated(controller),
              myLocationButtonEnabled: false,
              zoomControlsEnabled: false,
              compassEnabled: false,
              liteModeEnabled: true,
              markers: _markers,
            ),
          ),
          const SizedBox(height: 10.0),
          // Text(
          //   'pinned_on_map'.tr,
          //   style: AppTheme.title2,
          // ),
          Text(
            (widget.place.addressName ?? '') +
                (widget.place.frequency != null && widget.place.frequency != 0
                    ? '\n${'used'.tr} ${widget.place.frequency} ${'times'.tr}'
                    : ''),
            style: AppTheme.body,
          ),
        ],
      ),
    );
  }
}
