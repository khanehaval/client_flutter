import 'package:flutter_map/flutter_map.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:geocoding/geocoding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectLocationMap extends StatefulWidget {
  final String selectedType;
  final String parentName;

  const SelectLocationMap(
      {super.key, required this.selectedType, required this.parentName});

  @override
  State<SelectLocationMap> createState() => _SelectLocationMapState();
}

class _SelectLocationMapState extends State<SelectLocationMap> {
  late final MapController mapController = MapController();
  double initZoom = 14;
  LatLng currentCenter = const LatLng(35.699287, 51.338028);
  List<LatLng> selectedPins = [];
  String address = "";

  Future getUserCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      currentCenter = LatLng(position.latitude, position.longitude);
    });
    mapController.move(currentCenter, initZoom);
  }

  // Future<String> translateToPersian(String eng) async {

  // }

  @override
  void initState() {
    getUserCurrentLocation();
    super.initState();
  }

  void zoomOut() {
    initZoom = initZoom - 1;
    mapController.move(currentCenter, initZoom);
  }

  void zoomIn() {
    initZoom = initZoom + 1;
    mapController.move(currentCenter, initZoom);
  }

  selectedMarker() {
    if (selectedPins.isNotEmpty) {
      for (var markerValue in selectedPins) {
        return MarkerLayer(markers: [
          Marker(
            point: markerValue,
            width: 80,
            height: 80,
            child: const Icon(
              Icons.location_city_outlined,
              color: Colors.blue,
            ),
          ),
        ]);
      }
    } else {
      return const SizedBox();
    }
  }

  Future backToCurrentLocation() async {
    await getUserCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        FlutterMap(
          mapController: mapController,
          options: MapOptions(
            initialCenter: currentCenter,
            initialZoom: initZoom,
            maxZoom: 18,
            keepAlive: true,
            onPositionChanged: (position, hasGesture) {
              currentCenter =
                  LatLng(position.center!.latitude, position.center!.longitude);
            },
            interactionOptions: const InteractionOptions(
                enableMultiFingerGestureRace: true, enableScrollWheel: true),
            onTap: (tapPosition, point) {
              Fluttertoast.showToast(
                  msg: "برای انتخاب محدوده پیوسته فشار دهید",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
            onLongPress: (tapPosition, point) async {
              setState(() {
                currentCenter = LatLng(point.latitude, point.longitude);
              });
              try {
                List<Placemark> placeMarks = await placemarkFromCoordinates(
                    point.latitude, point.longitude);
                if (placeMarks.isNotEmpty) {
                  Placemark placemark = placeMarks[0];
                  // debugPrint(placemark.toString());
                }
              } catch (err) {
                setState(() {
                  address =
                      "خطا در ارزیابی آدرس، دوباره تلاش کنید، اینترنت خود را بررسی کنید";
                });
                debugPrint("!!!$err!!!");
              }
            },
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
            CircleLayer(
              circles: [
                CircleMarker(
                  point: currentCenter,
                  radius: 100,
                  useRadiusInMeter: true,
                  color: Colors.green.withOpacity(0.3),
                )
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: currentCenter,
                  width: 80,
                  height: 80,
                  child: const Icon(Icons.add_location_alt_sharp,
                      size: 40, color: Colors.blue),
                ),
              ],
            ),
          ],
        ),
        Positioned(
          bottom: height * 0.035,
          right: 20,
          child: MaterialButton(
            onPressed: () {
              backToCurrentLocation();
            },
            child: const Icon(
              Icons.location_searching_outlined,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          bottom: height * 0.050,
          right: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  zoomIn();
                },
                child: const Icon(
                  Icons.add_circle,
                  color: Colors.black,
                ),
              ),
              MaterialButton(
                onPressed: () {
                  zoomOut();
                },
                child: const Icon(
                  Icons.remove_circle,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
