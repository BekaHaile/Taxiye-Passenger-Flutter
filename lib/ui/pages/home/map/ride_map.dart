import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animarker/core/ripple_marker.dart';
import 'package:flutter_animarker/widgets/animarker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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
    LatLng cameraLocation = controller.currentLocation != null
        ? LatLng(controller.currentLocation!.latitude,
            controller.currentLocation!.longitude)
        : kInitialPosition;
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
      controller.currentLocation = currentLocation;
      // final GoogleMapController mapCtrl = await mapController.future;
      // String value = await DefaultAssetBundle.of(context)
      //     .loadString('assets/map/map_style.json');
      // mapController.setMapStyle(value);

      // currentLocation.toString

      LatLng locationCoordinate =
          LatLng(currentLocation.latitude, currentLocation.longitude);

      // set current location place name
      getPlaceNameFromCordinate(controller.testLocation).then((value) {
        controller.currentLocationPlace = value;
      }, onError: (error) => print(error));

      controller.mapController.animateCamera(
        CameraUpdate.newCameraPosition(CameraPosition(
          target: controller.testLocation,
          zoom: kCameraZoom,
        )),
      );
      _setCurrentLocationMarker(controller.testLocation);
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
            child: Obx(() => GoogleMap(
                  initialCameraPosition: _initialCameraPosition,
                  myLocationButtonEnabled: false,
                  zoomControlsEnabled: false,
                  compassEnabled: false,
                  onMapCreated: (controller) => _onMapCreated(controller),
                  markers: controller.markers,
                  polylines: controller.polyLines,
                )),
          ),
        ],
      ),
    );
  }
}
