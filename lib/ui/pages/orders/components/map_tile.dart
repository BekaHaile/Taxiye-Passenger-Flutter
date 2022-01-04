import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class MapTile extends StatefulWidget {
  const MapTile({
    Key? key,
    required this.height,
    required this.locations,
    this.sourceIcon = BitmapDescriptor.defaultMarker,
    this.destinationIcon = BitmapDescriptor.defaultMarker,
    required this.getRoutePolyline,
  }) : super(key: key);

  final double height;
  final Map<String, PointLatLng> locations;
  final BitmapDescriptor sourceIcon;
  final BitmapDescriptor destinationIcon;
  final Function(PointLatLng origin, PointLatLng destination) getRoutePolyline;

  @override
  State<MapTile> createState() => _MapileState();
}

class _MapileState extends State<MapTile> {
  late GoogleMapController mapController;
  final Set<Polyline> _polylines = {};
  final Set<Marker> _markers = {};

  _onMapCreated(GoogleMapController mpController) async {
    mapController = mpController;
    if (widget.locations['origin'] != null &&
        widget.locations['destination'] != null) {
      _setMapValues(
          widget.locations['origin']!, widget.locations['destination']!);
    }
  }

  _setMapValues(PointLatLng origin, PointLatLng destination) {
    _setCameraPosition(origin, destination);
    _setMapPins(LatLng(origin.latitude, origin.longitude),
        LatLng(destination.latitude, destination.longitude));
    _setPolylines(origin, destination);
  }

  _setMapPins(LatLng origin, LatLng destination) async {
    setState(() {
      _markers.add(Marker(
          markerId: const MarkerId('sourcePin'),
          position: origin,
          icon: widget.sourceIcon));
      _markers.add(Marker(
          markerId: const MarkerId('destinationPin'),
          position: destination,
          icon: widget.destinationIcon));
    });
  }

  _setCameraPosition(PointLatLng origin, PointLatLng destination) {
    // animate camera to mid point between origin and destination
    LatLng midPoint = LatLng((origin.latitude + destination.latitude) / 2,
        (origin.longitude + destination.longitude) / 2);
    mapController.animateCamera(
      CameraUpdate.newCameraPosition(CameraPosition(
        target: midPoint,
        zoom: 13,
      )),
    );
  }

  _setPolylines(PointLatLng origin, PointLatLng destination) async {
    final orderPolyline = await widget.getRoutePolyline(origin, destination);
    setState(() {
      _polylines.add(orderPolyline);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
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
        polylines: _polylines,
      ),
    );
  }
}
