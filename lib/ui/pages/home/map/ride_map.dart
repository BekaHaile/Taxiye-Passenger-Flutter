import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animarker/core/ripple_marker.dart';
import 'package:flutter_animarker/widgets/animarker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:taxiye_passenger/utils/functions.dart';
import 'package:get/get.dart';

class RideMap extends StatefulWidget {
  const RideMap({Key? key}) : super(key: key);

  @override
  _RideMapState createState() => _RideMapState();
}

class _RideMapState extends State<RideMap> with SingleTickerProviderStateMixin {
  HomeController controller = Get.find();
  Completer<GoogleMapController> mapCompleter = Completer();
  // late GoogleMapController mapController;
  late CameraPosition _initialCameraPosition;

  Set<Marker> currentLocationMarker = {};

  @override
  void initState() {
    super.initState();

    _setInitialCameraPosition();
  }

  _setInitialCameraPosition() {
    LatLng cameraLocation = LatLng(controller.currentLocation.latitude,
        controller.currentLocation.longitude);
    _initialCameraPosition = CameraPosition(
      target: cameraLocation,
      zoom: kCameraZoom,
      // tilt: kCameraTilt,
      // bearing: kCameraBearing,
    );
  }

  _onMapCreated(GoogleMapController mpController) async {
    mapCompleter.complete(mpController);
    controller.mapController = mpController;
    getCurrentLocation().then((currentLocation) async {
      controller.currentLocation =
          LatLng(currentLocation.latitude, currentLocation.longitude);
      // final GoogleMapController mapCtrl = await mapController.future;
      // String value = await DefaultAssetBundle.of(context)
      //     .loadString('assets/map/map_style.json');
      // mapController.setMapStyle(value);

      // currentLocation.toString

      // set current location place name
      getPlaceNameFromCordinate(controller.currentLocation).then((value) {
        controller.currentLocationPlace = value;
      }, onError: (error) => print(error));

      controller.mapController.animateCamera(
        CameraUpdate.newCameraPosition(CameraPosition(
          target: controller.currentLocation,
          zoom: kCameraZoom,
        )),
      );
      _setCurrentLocationMarker(controller.currentLocation);
    });
  }

  _setCurrentLocationMarker(LatLng location) async {
    final currentLocationIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(devicePixelRatio: 0.1, size: Size(10, 10)),
        'assets/icons/source_location.png');

    setState(() {
      currentLocationMarker = <Marker>{
        RippleMarker(
          markerId: const MarkerId('current_location'),
          position: location,
          icon: currentLocationIcon,
          infoWindow: InfoWindow(title: 'current_location'.tr),
          anchor: const Offset(0.5, 0.5),
          ripple: true,
        ),
      };
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.mapController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Animarker(
            rippleColor: AppTheme.primaryColor.withOpacity(0.5),
            curve: Curves.bounceOut,
            useRotation: false,
            mapId: mapCompleter.future.then<int>((value) => value.mapId),
            markers: currentLocationMarker,
            child: Obx(() => Padding(
                  padding: EdgeInsets.only(bottom: getMapBottomPadding()),
                  child: GoogleMap(
                    initialCameraPosition: _initialCameraPosition,
                    myLocationButtonEnabled: false,
                    zoomControlsEnabled: false,
                    compassEnabled: false,
                    onMapCreated: (controller) => _onMapCreated(controller),
                    markers: controller.markers,
                    polylines: controller.polyLines,
                    onTap: controller.tripStep == TripStep.pickOnMap ||
                            controller.tripStep == TripStep.addPlace ||
                            controller.tripStep == TripStep.confirmPlace
                        ? (position) =>
                            controller.onPickLocationFromMap(position)
                        : null,
                  ),
                )),
          ),
        ],
      ),
    );
  }

  double getMapBottomPadding() {
    switch (controller.tripStep) {
      case TripStep.driverDetail:
      case TripStep.pickVehicle:
      case TripStep.tripDetail:
        return Get.height * 0.35;
      case TripStep.lookingDrivers:
      case TripStep.confirmPlace:
      case TripStep.tripStarted:
        return Get.height * 0.24;
      default:
        return 0.0;
    }
  }
}
