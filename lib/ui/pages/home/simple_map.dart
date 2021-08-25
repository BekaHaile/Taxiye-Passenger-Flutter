import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxiye_passenger/utils/functions.dart';

class SimpleMap extends StatefulWidget {
  const SimpleMap({Key? key}) : super(key: key);

  @override
  _SimpleMapState createState() => _SimpleMapState();
}

class _SimpleMapState extends State<SimpleMap> {
  // Completer<GoogleMapController> mapController = Completer();
  late GoogleMapController mapController;
  late CameraPosition _initialCameraPosition;

  @override
  void initState() {
    super.initState();
    _initialCameraPosition = const CameraPosition(
      //8.9806, 38.7578
      target: LatLng(37.43296265331129, -122.08832357078792),
      zoom: 11.5,
    );
  }

  _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    getCurrentLocation().then((currentLocation) async {
      // final GoogleMapController mapCtrl = await mapController.future;
      mapController.setMapStyle(
          '[{"featureType": "poi.business","stylers": [{ "visibility": "off"}]},{"featureType": "poi.park","elementType": "labels.text","stylers": [{"visibility": "off"}]},{"featureType": "poi.school","elementType": "labels.text.stroke","stylers": [{"color": "#efeeec"}]}]');
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          const CameraPosition(
              target: LatLng(8.9806, 38.7578),
              //     LatLng(currentLocation.latitude, currentLocation.longitude),
              zoom: 11.5),
        ),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    mapController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _initialCameraPosition,
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        onMapCreated: (controller) => _onMapCreated(controller),
      ),
    );
  }
}
