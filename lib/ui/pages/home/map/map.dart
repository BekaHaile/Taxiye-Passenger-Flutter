import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:get/instance_manager.dart';
// import 'package:flutter_gmaps/directions_model.dart';
// import 'package:flutter_gmaps/directions_repository.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'dart:ui' as ui;
import 'package:get/get.dart';
import 'package:taxiye_passenger/ui/pages/home/map/directions_model.dart';
import 'package:taxiye_passenger/utils/functions.dart';
// import 'package:taxiye_passenger/ui/pages/home/map/directions_repository.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  HomeController controller = Get.find();

  GoogleMapController? _googleMapController;
  late Marker _origin;
  Marker? _car1;
  Marker? _car2;
  Marker? _destination;
  Directions? _info;

  late CameraPosition _initialCameraPosition;

  @override
  void initState() {
    super.initState();
    _initialCameraPosition = const CameraPosition(
      //8.9806, 38.7578
      target: LatLng(37.43296265331129, -122.08832357078792),
      zoom: 11.5,
    );
    _addCars(9.026695, 38.746654, 9.016695, 38.726654);
    _addMarkerOrgin(9.029695, 38.742654);
    _addMarkerDec(8.990463, 38.771456);
  }

  _onMapCreated(GoogleMapController mapController) {
    _googleMapController = mapController;
    getCurrentLocation().then((currentLocation) {
      print('this called');
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

  // Future<void> _onMapCreated(GoogleMapController controller) async {
  //   final googleOffices = await locations.getGoogleOffices();
  //   setState(() {
  //     _markers.clear();
  //     for (final office in googleOffices.offices) {
  //       final marker = Marker(
  //         markerId: MarkerId(office.name),
  //         position: LatLng(office.lat, office.lng),
  //         infoWindow: InfoWindow(
  //           title: office.name,
  //           snippet: office.address,
  //         ),
  //       );
  //       _markers[office.name] = marker;
  //     }
  //   });
  // }

  @override
  void dispose() {
    _googleMapController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        GoogleMap(
          myLocationButtonEnabled: false,
          zoomControlsEnabled: false,
          initialCameraPosition: _initialCameraPosition,
          onMapCreated: (controller) => _onMapCreated(controller),
          markers: {
            if (_origin != null) _origin,
            if (_destination != null) _destination!,
            if (_car1 != null) _car1!,
            if (_car2 != null) _car2!
          },
          polylines: {
            if (_info != null)
              Polyline(
                polylineId: const PolylineId('overview_polyline'),
                color: Colors.red,
                width: 5,
                points: _info!.polylinePoints
                    .map((e) => LatLng(e.latitude, e.longitude))
                    .toList(),
              ),
          },
          onTap: _addMarker,
          // onLongPress: ,
        ),
        if (_info != null)
          Positioned(
            top: 20.0,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 12.0,
              ),
              decoration: BoxDecoration(
                color: Colors.yellowAccent,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 2),
                    blurRadius: 6.0,
                  )
                ],
              ),
              child: Text(
                '${_info!.totalDistance}, ${_info!.totalDuration}',
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
      ],
    );
  }

  void _addMarkerOrgin(lat, log) async {
    setState(() {
      _origin = Marker(
        markerId: const MarkerId('origin'),
        infoWindow: const InfoWindow(title: 'Origin'),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        draggable: true,
        position: LatLng(lat, log),
      );
      // Reset destination
      // _destination = null;

      // Reset info
      // _info = null;
    });
  }

  _addCars(lat1, log1, lat2, log2) async {
    final Uint8List? markerIcon =
        await getBytesFromAsset('assets/icons/GrCar.png', 40);
    final Uint8List? markerIcon2 =
        await getBytesFromAsset('assets/icons/Car.png', 70);

    setState(() {
      _car1 = Marker(
        markerId: const MarkerId('Cars'),

        infoWindow: const InfoWindow(title: 'Abebe Debebe'),
        icon: BitmapDescriptor.fromBytes(markerIcon!),
        position: LatLng(lat1, log1),
        // draggable: true,

        // position: LatLng(lat,log),
      );
      _car2 = Marker(
        markerId: const MarkerId('Car2'),

        infoWindow: const InfoWindow(title: 'Debebe Abebe'),
        icon: BitmapDescriptor.fromBytes(markerIcon2!),
        position: LatLng(lat2, log2),
        // draggable: true,

        // position: LatLng(lat,log),
      );

      _destination = Marker(
        markerId: const MarkerId('Car2'),

        infoWindow: const InfoWindow(title: 'Debebe Abebe'),
        icon: BitmapDescriptor.fromBytes(markerIcon2),
        position: LatLng(lat2, log2),
        // draggable: true,

        // position: LatLng(lat,log),
      );

      // _destination = null;

      // // Reset info
      // _info = null;
    });
  }

  Future<Uint8List?>? getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))
        ?.buffer
        .asUint8List();
  }

  void _addMarkerDec(lat, log) async {
    setState(() {
      _destination = Marker(
        markerId: const MarkerId('destination'),
        infoWindow: const InfoWindow(title: 'Destination'),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
        draggable: true,
        position: LatLng(lat, log),
      );
    });

    //Get directions
    // final directions = await DirectionsRepository()
    //     .getDirections(origin: _origin.position, destination: LatLng(lat, log));
    // setState(() => _info = directions!);
  }

  void _addMarker(LatLng pos) async {
    if (_origin == null || (_origin != null && _destination != null)) {
      // Origin is not set OR Origin/Destination are both set
      // Set origin
      setState(() {
        _origin = Marker(
          markerId: const MarkerId('origin'),
          infoWindow: const InfoWindow(title: 'Origin'),
          icon:
              BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
          position: pos,
        );
        // Reset destination
        _destination = null;

        // Reset info
        //  _info = null;
      });
    } else {
      // Origin is already set
      // Set destination
      setState(() {
        _destination = Marker(
          markerId: const MarkerId('destination'),
          infoWindow: const InfoWindow(title: 'Destination'),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
          position: pos,
        );
      });

      //Get directions
      // final directions = await DirectionsRepository()
      //     .getDirections(origin: _origin.position, destination: pos);
      // setState(() => _info = directions!);
    }
  }
}
