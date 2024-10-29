import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvertismentMoidel.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/consultants.dart/map_consultants.dart/advertismets_axans.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/aghahi.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/consultants.dart/map_consultants.dart/advertismets_consultants.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/shared/methods.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/shared/methods_ejara.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:jalali_flutter_datepicker/jalali_flutter_datepicker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AdvMap extends StatefulWidget {
  final RxList<AdvertismentModel> advertisements;
  final RxList<AdvertismentModel> advertisements1;
  const AdvMap(this.advertisements, this.advertisements1, {Key? key})
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
  double _zoomLevel = 11; // مقدار اولیه برای زوم
  bool _showNotification = true; // متغیر برای کنترل نمایش نوتیفیکیشن
  bool _showLocationNotification =
      true; // متغیر برای کنترل نمایش نوتیفیکیشن مکان

  Future<void> _loadNotificationPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _showNotification =
          prefs.getBool('show_notification') ?? true; // وضعیت نوتیفیکیشن
      _showLocationNotification = prefs.getBool('show_location_notification') ??
          true; // وضعیت نوتیفیکیشن مکان

      if (!_showNotification) {
        _notificationStreamController.add(false);
      }
      if (!_showLocationNotification) {
        _locationNotificationStreamController.add(false);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _notificationStreamController = StreamController<bool>.broadcast();
    _notificationStream = _notificationStreamController.stream;
    _notificationStreamController = StreamController<bool>.broadcast();
    _notificationStream = _notificationStreamController.stream;
    _locationNotificationStreamController = StreamController<bool>.broadcast();
    _locationNotificationStream = _locationNotificationStreamController.stream;
    _loadNotificationPreferences();

    _notificationStreamController.add(true);
    _locationNotificationStreamController.add(true);
  }

  @override
  void dispose() {
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
          if (_showNotification)
            StreamBuilder<bool>(
              stream: _notificationStream,
              initialData: true,
              builder: (context, snapshot) {
                if (snapshot.data == true) {
                  return _notification();
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          // بررسی وضعیت نمایش نوتیفیکیشن مکان
          if (_showLocationNotification)
            StreamBuilder<bool>(
              stream: _locationNotificationStream,
              initialData: true,
              builder: (context, snapshot) {
                if (snapshot.data == true) {
                  return _locationNotification();
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          StreamBuilder<bool>(
            stream: _notificationStream,
            initialData: true,
            builder: (context, snapshot) {
              if (snapshot.data == true) {
                return _notification();
              } else {
                return const SizedBox.shrink();
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
                return const SizedBox.shrink();
              }
            },
          ),
          _buildZoomButton(),
          Obx(() => _selectedModel.value != null
              ? _buildAdvertismentOverlay()
              : const SizedBox.shrink()),
          _buildListButton(),
          Container(child: _buildDraggableScrollableSheet()),
        ],
      ),
    );
  }

  Widget _buildFlutterMap() {
    return FlutterMap(
      options: MapOptions(
        initialZoom: _zoomLevel,
        initialCenter: widget.advertisements.value.first.location,
        maxZoom: 20,
        keepAlive: true,
        rotation: 0, // تنظیم چرخش اولیه به صفر
        interactionOptions: const InteractionOptions(
          rotationThreshold: 1000.0, // غیرفعال کردن چرخش با تنظیم مقدار بالا
          enableMultiFingerGestureRace: true,
          enableScrollWheel: true,
        ),
        onPositionChanged: (position, hasGesture) {
          setState(() {
            _zoomLevel = position.zoom!; // بروزرسانی سطح زوم
          });
        },
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
        MarkerLayer(
          markers: widget.advertisements.value
              .map((adv) => _buildMarker(adv))
              .toList(),
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
    String text = 'علیرضا احمدی'; // متنی که می‌خواهید نمایش دهید

    // محاسبه عرض متن
    final textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: const TextStyle(
          fontFamily: MAIN_FONT_FAMILY_MEDIUM,
          color: Colors.white,
          fontSize: 10,
        ),
      ),
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(); // انجام محاسبات لازم برای لایه‌بندی

    double textWidth = textPainter.width; // عرض متن را می‌گیریم

    // اگر زوم بیشتر یا مساوی ۱۶ باشد
    if (_zoomLevel >= 16) {
      return Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          // کانتینر اصلی
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: textWidth + 20, // اضافه کردن مقداری به عرض برای حاشیه
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(4, 201, 95, 1), // رنگ کانتینر
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 2.0, right: 2),
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // اضافه کردن مثلث به پایین کانتینر
          Positioned(
              bottom: -12.5,
              child: SvgPicture.asset(
                'assets/images/locatin slice.svg',
                width: 15,
                height: 15,
              )),
        ],
      );
    } else {
      // نمایش آیکون پیش‌فرض زمانی که زوم کمتر از ۱۶ است
      const assetName = 'assets/images/shakhsi_location.svg';
      return SvgPicture.asset(
        assetName,
        width: _zoomLevel >= 13 ? 35 : 20, // تغییر اندازه آیکون بر اساس سطح زوم
        height: _zoomLevel >= 13 ? 35 : 20,
      );
    }
  }

  Widget _buildMarkerTitle(AdvertismentModel adv) {
    return Container(
      padding: const EdgeInsets.only(bottom: 15, left: 30),
      // child: Text(
      //   adv.title,
      //   style: const TextStyle(
      //     fontFamily: MAIN_FONT_FAMILY,
      //     color: Color.fromRGBO(48, 48, 48, 1),
      //     fontSize: 10,
      //   ),
      // ),
    );
  }

  Widget _buildZoomButton() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 80, left: 15),
        child: IconButton(
          onPressed: () {},
          icon: SizedBox(
            height: 50,
            width: 50,
            child: SvgPicture.asset("assets/images/icon zoom.svg"),
          ),
        ),
      ),
    );
  }

  Widget _notification() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 80, left: 90),
        child: IconButton(
          onPressed: () async {
            _notificationStreamController.add(false);
            final prefs = await SharedPreferences.getInstance();
            await prefs.setBool(
                'show_notification', false); // ذخیره وضعیت نوتیفیکیشن
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
        padding: const EdgeInsets.only(bottom: 140, left: 30),
        child: IconButton(
          onPressed: () async {
            _locationNotificationStreamController.add(false);
            final prefs = await SharedPreferences.getInstance();
            await prefs.setBool('show_location_notification',
                false); // ذخیره وضعیت نوتیفیکیشن مکان
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
    final AdvertismentModel selectedAd = _selectedModel.value!;

    switch (selectedAd.type) {
      case AdvertismentType.PERSONAL:
        return _buildPersonalAdvertismentOverlay(selectedAd);
      case AdvertismentType.AMALAK:
        return _buildAmalakAdvertismentOverlay(selectedAd);
      case AdvertismentType.REAL_ESTATE:
        return _buildRealEstateAdvertismentOverlay(selectedAd);
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _buildPersonalAdvertismentOverlay(AdvertismentModel ad) {
    return Align(
      child: showAdvertisment(
        advertismentModel: ad,
        onTap: () => _selectedModel.value = null,
        onBack: _onBack,
        onNext: _onNext,
        // افزودن جزئیات خاص برای PERSONAL
      ),
    );
  }

  Widget _buildAmalakAdvertismentOverlay(AdvertismentModel ad) {
    return Align(
      child: showAdvertisment(
        advertismentModel: ad,
        onTap: () => _selectedModel.value = null,
        onBack: _onBack,
        onNext: _onNext,
        // افزودن جزئیات خاص برای AMALAK
      ),
    );
  }

  Widget _buildRealEstateAdvertismentOverlay(AdvertismentModel ad) {
    return Align(
      child: methodsejara(
        advertismentModel: ad,
        onTap: () => _selectedModel.value = null,
        onBack: _onBack,
        onNext: _onNext,
        // افزودن جزئیات خاص برای REAL ESTATE
      ),
    );
  }
  // Widget _buildAdvertismentOverlay() {
  //   return Align(
  //     child: showAdvertisment(
  //       advertismentModel: _selectedModel.value!,
  //       onTap: () => _selectedModel.value = null,
  //       onBack: _onBack,
  //       onNext: _onNext,
  //     ),
  //   );
  // }

  void _onBack() {
    final int index =
        widget.advertisements.value.indexOf(_selectedModel.value!);
    if (index > 0) {
      _selectedModel.value = widget.advertisements[index - 1];
    } else {
      _selectedModel.value = widget.advertisements.value.last;
    }
  }

  void _onNext() {
    final int index =
        widget.advertisements.value.indexOf(_selectedModel.value!);
    if (index < widget.advertisements.length - 1) {
      _selectedModel.value = widget.advertisements[index + 1];
    } else {
      _selectedModel.value = widget.advertisements.value.first;
    }
  }

  Widget _buildListButton() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 77, left: 300),
        child: IconButton(
          onPressed: () {
            Get.to(() => AdvertismetsAxans(),
                duration: const Duration(microseconds: 900),
                transition: Transition.rightToLeft);
          },
          icon: SizedBox(
            height: 55,
            width: 55,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                // boxShadow: [
                //   BoxShadow(
                //     offset: const Offset(0, 0.5),
                //     color: Colors.grey.withOpacity(0.10),
                //     blurRadius: 1,
                //   ),
                // ],
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
      initialChildSize: 0.10,
      minChildSize: 0.10,
      maxChildSize: 1.0,
      builder: (context, scrollController) {
        return SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              // باکس با بوردر و radius که خارج از بلور است
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), // radius برای بوردر
                  border: Border.all(
                    color: const Color.fromRGBO(166, 166, 166, 1),
                    width: 1.0, // ضخامت بوردر
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20), // هماهنگی radius
                  child: Stack(
                    // استفاده از Stack برای لایه‌بندی
                    children: [
                      BackdropFilter(
                        filter: ImageFilter.blur(
                            sigmaX: 1.0, sigmaY: 1.0), // افکت بلور
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              colors: [
                                Color.fromARGB(216, 255, 255, 255),
                                Color.fromARGB(255, 255, 255, 255),
                              ],
                            ),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                const SizedBox(
                                    height:
                                        40), // فضای خالی برای قرارگیری Divider در بالا
                                SingleChildScrollView(
                                    child:
                                        _buildAdvertisementsList()), // محتوای لیست آگهی
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Divider در بالای بلور قرار می‌گیرد
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: _buildTopDivider(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
          padding: const EdgeInsets.only(top: 15.0),
          child: SvgPicture.asset('assets/images/divider.svg',
              // width: 5,
              // height: 5,
              color: const Color.fromRGBO(166, 166, 166, 1)),
        )
      ],
    );
  }

  Widget _buildAdvertisementsList() {
    return Stack(
      children: [ViewAghahi()],
    );
  }
}

class TrianglePainter extends CustomPainter {
  final Color color; // رنگ مثلث

  TrianglePainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color // تنظیم رنگ مثلث به رنگ کانتینر
      ..style = PaintingStyle.fill;

    // رسم مثلث در وسط پایین کانتینر
    final path = Path()
      ..moveTo(size.width / 2, 20) // نقطه وسط پایین مثلث
      ..lineTo((size.width / 2) - 20, 0) // سمت چپ بالا
      ..lineTo((size.width / 2) + 20, 0) // سمت راست بالا
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
