import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvertismentMoidel.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/aghahi.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/shared/methods.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class AdvMap extends StatefulWidget {
  final RxList<AdvertismentModel> advertisements;
  final RxList<AdvertismentModel> advertisements1;
  AdvMap(this.advertisements, this.advertisements1, {Key? key})
      : super(key: key);

  @override
  _AdvMapState createState() => _AdvMapState();
}

class _AdvMapState extends State<AdvMap> {
  final Rxn<AdvertismentModel> _selectedModel = Rxn<AdvertismentModel>();

  late StreamController<bool> _notificationStreamController;
  late Stream<bool> _notificationStream;
  late StreamController<bool> _locationNotificationStreamController;
  late Stream<bool> _locationNotificationStream;

  @override
  void initState() {
    super.initState();
    _notificationStreamController = StreamController<bool>.broadcast();
    _notificationStream = _notificationStreamController.stream;
    _locationNotificationStreamController = StreamController<bool>.broadcast();
    _locationNotificationStream = _locationNotificationStreamController.stream;

    // ارسال داده اولیه به StreamController برای نمایش اولیه ویجت‌ها
    _notificationStreamController.add(true);
    _locationNotificationStreamController.add(true);
  }

  @override
  void dispose() {
    // ارسال داده نهایی به StreamController برای عدم نمایش ویجت‌ها
    _notificationStreamController.add(false);
    _locationNotificationStreamController.add(false);

    _notificationStreamController.close();
    _locationNotificationStreamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: bottomNavigationBar2(4),
      body: Stack(
        children: [
          _buildFlutterMap(),
          StreamBuilder<bool>(
            stream: _notificationStream,
            initialData: true,
            builder: (context, snapshot) {
              if (snapshot.data == true) {
                return _notification();
              } else {
                return SizedBox.shrink();
              }
            },
          ),
          _buildListButton(),
          StreamBuilder<bool>(
            stream: _locationNotificationStream,
            initialData: true,
            builder: (context, snapshot) {
              if (snapshot.data == true) {
                return _locationNotification();
              } else {
                return SizedBox.shrink();
              }
            },
          ),
          _buildZoomButton(),
          Obx(() => _selectedModel.value != null
              ? _buildAdvertismentOverlay()
              : const SizedBox.shrink()),
          _buildListButton(),
          _buildDraggableScrollableSheet(),
        ],
      ),
    );
  }

  Widget _buildFlutterMap() {
    return FlutterMap(
      options: MapOptions(
        initialZoom: 13,
        initialCenter: widget.advertisements.first.location,
        maxZoom: 15,
        keepAlive: true,
        interactionOptions: const InteractionOptions(
          enableMultiFingerGestureRace: true,
          enableScrollWheel: true,
        ),
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
        MarkerLayer(
          markers:
              widget.advertisements.map((adv) => _buildMarker(adv)).toList(),
        ),
      ],
    );
  }

  Marker _buildMarker(AdvertismentModel adv) {
    return Marker(
      alignment: Alignment.center,
      point: adv.location,
      width: 300,
      height: 67,
      child: GestureDetector(
        onTap: () {
          _selectedModel.value = adv;
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            _buildMarkerIcon(adv),
            _buildMarkerTitle(adv),
          ],
        ),
      ),
    );
  }

  Widget _buildMarkerIcon(AdvertismentModel adv) {
    String assetName;
    switch (adv.type) {
      case AdvertismentType.PERSONAL:
        assetName = 'assets/images/LOCATION.svg';
        break;
      case AdvertismentType.AMALAK:
        assetName = 'assets/images/LOCATION2.svg';
        break;
      case AdvertismentType.REAL_ESTATE:
        assetName = 'assets/images/LOCATION3.svg';
        break;
    }
    return SvgPicture.asset(
      assetName,
      width: 98,
      height: 50,
    );
  }

  Widget _buildMarkerTitle(AdvertismentModel adv) {
    return Container(
      padding: const EdgeInsets.only(bottom: 15, left: 30),
      child: Text(
        adv.title,
        style: const TextStyle(
          fontFamily: MAIN_FONT_FAMILY,
          color: Color.fromRGBO(48, 48, 48, 1),
          fontSize: 10,
        ),
      ),
    );
  }

  Widget _buildZoomButton() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 90, left: 15),
        child: IconButton(
          onPressed: () {},
          icon: SizedBox(
            height: 60,
            width: 60,
            child: Image.asset("assets/images/icon zoom.png"),
          ),
        ),
      ),
    );
  }

  Widget _notification() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 90, left: 90),
        child: IconButton(
          onPressed: () {
            _notificationStreamController
                .add(false); // ارسال داده به Stream برای عدم نمایش ویجت
          },
          icon: SizedBox(
            height: 33,
            width: 210,
            child: SvgPicture.asset("assets/images/notification_moshaver.svg"),
          ),
        ),
      ),
    );
  }

  Widget _locationNotification() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 150, left: 30),
        child: IconButton(
          onPressed: () {
            _locationNotificationStreamController
                .add(false); // ارسال داده به Stream برای عدم نمایش ویجت
          },
          icon: SizedBox(
            height: 80,
            width: 220,
            child: SvgPicture.asset("assets/images/notification_location.svg"),
          ),
        ),
      ),
    );
  }

  Widget _buildAdvertismentOverlay() {
    return Align(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 45),
        child: showAdvertisment(
          advertismentModel: _selectedModel.value!,
          onTap: () => _selectedModel.value = null,
          onBack: _onBack,
          onNext: _onNext,
        ),
      ),
    );
  }

  void _onBack() {
    final int index = widget.advertisements.indexOf(_selectedModel.value!);
    if (index > 0) {
      _selectedModel.value = widget.advertisements[index - 1];
    } else {
      _selectedModel.value = widget.advertisements.last;
    }
  }

  void _onNext() {
    final int index = widget.advertisements.indexOf(_selectedModel.value!);
    if (index < widget.advertisements.length - 1) {
      _selectedModel.value = widget.advertisements[index + 1];
    } else {
      _selectedModel.value = widget.advertisements.first;
    }
  }

  Widget _buildListButton() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 85, left: 295),
        child: IconButton(
          onPressed: () {},
          icon: SizedBox(
            height: 65,
            width: 65,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: SvgPicture.asset(
                "assets/images/list - consultant.svg",
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDraggableScrollableSheet() {
    return DraggableScrollableSheet(
      initialChildSize: 0.12,
      minChildSize: 0.12,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(colors: GRADIANT_COLOR)),
          child: Padding(
            padding: const EdgeInsets.all(1.2),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: [
                    _buildTopDivider(),
                    const SizedBox(height: 10),
                    _buildHeaderText(),
                    _buildAdvertisementsList(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildTopDivider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top:20.0),
          child: SvgPicture.asset('assets/images/divider.svg',width: 5,height: 5,),
        )
      ],
    );
  }

  Widget _buildHeaderText() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "خرید و فروش، رهن و اجاره انواع املاک در تهران",
          style: TextStyle(
            fontFamily: MAIN_FONT_FAMILY,
            fontSize: 14,
            color: Color.fromRGBO(99, 99, 99, 1),
          ),
        ),
      ],
    );
  }

  Widget _buildAdvertisementsList() {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 750),
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 10,
            ),
          ],
        ),
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [viewaghahi()],
        ),
      ),
    );
  }
}
