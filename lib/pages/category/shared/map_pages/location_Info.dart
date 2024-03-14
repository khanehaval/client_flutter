import 'package:latlong2/latlong.dart';

class LocationInfo {
  LatLng location;

  String cityName;
  String locationName;

  LocationInfo(
      {required this.location,
      required this.cityName,
      required this.locationName});
}
