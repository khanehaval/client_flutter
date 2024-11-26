import 'package:latlong2/latlong.dart';

class LocationInfo {
  late final LatLng location;
  late final String cityName;
  late final String locationName;
  late final String formatted_address;
  final String cityId; // اضافه کردن cityId

  LocationInfo({
    required this.location,
    required this.cityName,
    required this.locationName,
    required this.formatted_address,
    required this.cityId, // اضافه کردن cityId
  });
}
