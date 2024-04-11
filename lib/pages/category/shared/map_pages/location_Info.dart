import 'package:latlong2/latlong.dart';

class LocationInfo {
  LatLng location;

  String cityName;
  String locationName;
  String formatted_address;

  LocationInfo(
      {required this.location,
      required this.formatted_address,
      required this.cityName,
      required this.locationName});
}
