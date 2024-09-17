import 'package:latlong2/latlong.dart';

class AdvertismentModel {
  String title;
  LatLng location;
  AdvertismentType type;

  AdvertismentModel(
      {required this.location,
      required this.title,
      this.type = AdvertismentType.PERSONAL});
}

enum AdvertismentType { PERSONAL, AMALAK, REAL_ESTATE }
