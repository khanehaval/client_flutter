import 'package:flutter/widgets.dart';
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
  MapController mapController = MapController();
  double initZoom = 15;
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
              Icons.location_on,
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
    return Stack(children: [
      FlutterMap(
        mapController: mapController,
        options: MapOptions(
          initialCenter: currentCenter,
          initialZoom: initZoom,
          maxZoom: 10,
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
                  width: 52,
                  height: 67,
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/images/Group 1279.png"))),
            ],
          ),
        ],
      ),
      Positioned(
        bottom: height * 0.050,
        right: 230,
        child: IconButton(
            onPressed: () {
              zoomIn();
            },
            icon: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset("assets/images/icon +.png"))),
      ),
      Positioned(
          bottom: height * 0.050,
          right: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset("assets/images/icon zoom.png"))),
              IconButton(
                  onPressed: () {
                    zoomOut();
                  },
                  icon: SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset("assets/images/icon -.png"))),
            ],
          )),
      Positioned(
          bottom: height * 0.13,
          right: 230,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            IconButton(
                onPressed: () {},
                icon: SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset(
                      "assets/images/Ok.png",
                    ))),
          ]))
    ]);
  }
}
