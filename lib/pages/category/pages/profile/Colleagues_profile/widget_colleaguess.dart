import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/Colleagues_profile/Colleagues_profile.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class WidgetColleaguess extends StatefulWidget {
  const WidgetColleaguess({super.key});

  @override
  State<WidgetColleaguess> createState() => _WidgetColleaguessState();
}

class _WidgetColleaguessState extends State<WidgetColleaguess> {
  bool _isContainerVisible = false; // حالت برای نمایش یا عدم نمایش کانتینر

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
        // برای تشخیص لمس
        onTap: () {
          setState(() {
            _isContainerVisible = !_isContainerVisible; // نمایش کانتینر
          });
        },
        child: Stack(
          children: [
            Container(
              width: Get.width / 1.12,
              height: 100,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 0),
                      blurRadius: 3,
                      color: Color.fromRGBO(0, 0, 0, 0.15))
                ],
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, bottom: 10),
                            child: SvgPicture.asset(
                                'assets/images/vitrinaxans.svg'),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 30.0, bottom: 10),
                            child: Text(
                              'ویترین',
                              style: TextStyle(
                                  fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                            ),
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20.0, right: 10),
                                child: SvgPicture.asset(
                                  "assets/images/consultant_list_moshaver.svg",
                                  width: 69,
                                  height: 63,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 97.0, top: 23),
                                child: Image.asset(
                                  'assets/images/Ellipse 222.png',
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0, left: 22),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/locationaxans.svg',
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 35,
                        ),
                        const Text(
                          'تــهـران',
                          style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY, fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 10),
      if (_isContainerVisible) hamkar()
    ]);
  }
}
