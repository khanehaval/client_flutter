import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/enseraf.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

// Constants
const double borderRadiusValue = 15.0;
const EdgeInsetsGeometry defaultPadding = EdgeInsets.all(10.0);
const EdgeInsetsGeometry innerPadding =
    EdgeInsets.only(top: 1.1, left: 1.1, right: 1.1);
const Color notificationBorderColor = Colors.green;
const TextStyle notificationTextStyle = TextStyle(
  color: Colors.red,
  fontWeight: FontWeight.bold,
  fontSize: 16,
);

void DetailCall(Function(String) onSelected) {
  Get.bottomSheet(
    Padding(
      padding: defaultPadding,
      child: Stack(
        children: [
          Container(
            height: 330,
            decoration: BoxDecoration(
              color: Color.fromRGBO(166, 166, 166, 1),
              borderRadius: BorderRadius.circular(borderRadiusValue),
            ),
            child: Padding(
              padding: innerPadding,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(borderRadiusValue),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/titr2.png',
                            width: 118, height: 56),
                        Image.asset('assets/images/titr.png',
                            width: 148, height: 45),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Image.asset(
                              'assets/images/detail_icon_contact.png',
                              width: 60,
                              height: 60),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ShaderMask(
                              shaderCallback: (bounds) => const LinearGradient(
                                colors: [
                                  Color.fromRGBO(54, 216, 89, 1),
                                  Color.fromRGBO(76, 140, 237, 1)
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ).createShader(bounds),
                              child: const Text(
                                '091212312356',
                                style: TextStyle(
                                    fontFamily: MAIN_FONT_FAMILY,
                                    color: Colors.white,
                                    fontSize: 18),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                const SizedBox(width: 10),
                                ShaderMask(
                                  shaderCallback: (bounds) =>
                                      const LinearGradient(
                                    colors: [
                                      Color.fromRGBO(54, 216, 89, 1),
                                      Color.fromRGBO(76, 140, 237, 1)
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ).createShader(bounds),
                                  child: const Text(
                                    '3273895',
                                    style: TextStyle(
                                      fontFamily: MAIN_FONT_FAMILY,
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: ' : کد آگهی  ',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: MAIN_FONT_FAMILY,
                                          color:
                                              Color.fromRGBO(166, 166, 166, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Image.asset(
                              'assets/images/detail_icon_Message.png',
                              width: 60,
                              height: 60),
                        ),
                      ],
                    ),
                    const SizedBox(height: 45),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Enseraftamas(),
                        Container(
                          decoration: BoxDecoration(
                            gradient:
                                const LinearGradient(colors: GRADIANT_COLOR),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(1),
                            child: Container(
                              height: 38,
                              width: 115,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const SizedBox(width: 10),
                                    const Text(
                                      'ویترین',
                                      style: TextStyle(
                                        fontFamily: MAIN_FONT_FAMILY,
                                        fontSize: 14,
                                        color: Color.fromRGBO(99, 99, 99, 1),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SvgPicture.asset(
                                        'assets/images/Vitrin.svg'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          _NotificationWidget(),
        ],
      ),
    ),
  );
}

class _NotificationWidget extends StatefulWidget {
  @override
  __NotificationWidgetState createState() => __NotificationWidgetState();
}

class __NotificationWidgetState extends State<_NotificationWidget> {
  bool _isVisible = true;

  void _hideNotification() {
    setState(() {
      _isVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _isVisible,
      child: Positioned(
        top: 100,
        left: 0,
        right: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Container(
            decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    offset: Offset(3, 3),
                    color: Color.fromRGBO(
                      0,
                      0,
                      0,
                      0.15,
                    ),
                  ),
                ],
                gradient: LinearGradient(colors: GRADIANT_COLOR),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Padding(
              padding: const EdgeInsets.all(0.5),
              child: Container(
                height: 150,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'هشدار پلیس',
                            style: TextStyle(
                              color: Color.fromRGBO(156, 64, 64, 1),
                              fontFamily: MAIN_FONT_FAMILY,
                            ),
                          ),
                          const SizedBox(width: 10),
                          SvgPicture.asset('assets/images/Alarm Icon.svg'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.6),
                      child: Text(
                        'لطفاً پیش از انجام معامله و هر نوع پرداخت وجه، از صحت کالا یا خدمات ارائه ‌شده، به ‌صورت حضوری اطمینان حاصل نمایید',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF636363),
                          fontSize: 10,
                          fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Container(
                            width: 87,
                            height: 30,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFF4C8CED)),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color.fromARGB(93, 54, 216, 89),
                                  blurRadius: 3,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: TextButton(
                              onPressed: _hideNotification,
                              child: const Center(
                                child: Text(
                                  'متوجه شدم',
                                  style: TextStyle(
                                    fontFamily: MAIN_FONT_FAMILY,
                                    fontSize: 10,
                                    color: Color.fromRGBO(99, 99, 99, 1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
