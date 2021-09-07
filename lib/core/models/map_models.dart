import 'package:google_maps_flutter/google_maps_flutter.dart';

class Place {
  String? placeName;
  LatLng? location;
  Place({
    this.placeName,
    this.location,
  });

  @override
  String toString() {
    return 'Place(placeName: $placeName, location: $location)';
  }
}

class Suggestion {
  final String placeId;
  final String description;

  Suggestion(this.placeId, this.description);

  @override
  String toString() {
    return 'Suggestion(description: $description, placeId: $placeId)';
  }
}
