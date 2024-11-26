import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/switchItem.dart';
import 'package:flutter_application_1/pages/category/shared/widget/app_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class NamayeshAgahi extends StatelessWidget {
  NamayeshAgahi({super.key});
  final submit = false.obs;

  @override
  Widget build(BuildContext context) {
    // دریافت مسیر تصویر ارسال شده از صفحه مبدا
    final String firstImagePath = Get.arguments['firstImagePath'] ?? '';

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Column(children: [
        const Text(
          'ثبت آگهی اکونومی',
          style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(166, 166, 166, 1),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  width: 380,
                  height: 280,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Stack(
                    children: [
                      // نمایش تصویر ارسال شده در اینجا
                      firstImagePath.isNotEmpty
                          ? Image.network(firstImagePath,
                              width: double.infinity,
                              height: 175,
                              fit: BoxFit.cover)
                          : Image.asset("assets/images/pic.png",
                              width: double.infinity,
                              height: 175,
                              fit: BoxFit.cover),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10.0, top: 5),
                          child: SvgPicture.asset(
                            "assets/images/Score.svg",
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0, top: 5),
                          child: SvgPicture.asset(
                            "assets/images/Pic Number.svg",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 150, right: 10),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: SvgPicture.asset(
                            "assets/images/save1.svg",
                            width: 15,
                            height: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 150, right: 30),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: SvgPicture.asset(
                            "assets/images/loc and cam.svg",
                            width: 15,
                            height: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 150, left: 10),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: SvgPicture.asset(
                            "assets/images/announcement.svg",
                            width: 20,
                            height: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child:
                            SvgPicture.asset("assets/images/total price.svg"),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 5.0),
                      child: Text(
                        "...ویلا 100 متری در زمین 250 متری",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: MAIN_FONT_FAMILY,
                          color: Color.fromRGBO(99, 99, 99, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: SvgPicture.asset(
                        "assets/images/price.svg",
                        height: 20,
                        width: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: SvgPicture.asset(
                        "assets/images/property1.svg",
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: SvgPicture.asset(
                        "assets/images/Sqm.svg",
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'ویرایش مجدد آگهی',
                  style: TextStyle(
                      fontFamily: MAIN_FONT_FAMILY,
                      fontSize: 12,
                      color: Color.fromRGBO(
                        48,
                        48,
                        48,
                        1,
                      )),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 22,
                  width: 22,
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: SvgPicture.asset(
                      'assets/images/edit.svg',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'پیش نمایش کامل آگهی',
                  style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 22,
                      width: 22,
                      child: SvgPicture.asset(
                        'assets/images/eye.svg',
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          height: 23,
          width: MediaQuery.of(context).size.width * 0.9,
          child: const Row(
            children: [
              Text(
                'امتیاز 5',
                style: TextStyle(
                  color: Color(0xFF636363),
                  fontSize: 14,
                  fontFamily: MAIN_FONT_FAMILY,
                ),
              ),
              Row(
                children: [
                  Text(
                    '.................................................................',
                    style: TextStyle(
                      color: Color.fromRGBO(
                        244,
                        244,
                        244,
                        1,
                      ),
                      fontSize: 8,
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
                  ),
                  Text(
                    'امتیاز ثبت آگهی',
                    style: TextStyle(
                      color: Color(0xFF303030),
                      fontSize: 14,
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SwitchItems(
                onSelected: (_) {
                  submit.value = true;
                },
                items: const [
                  "",
                ]),
            const Row(
              children: [
                Text(
                  '.......................................................................',
                  style: TextStyle(
                    color: Color.fromRGBO(
                      244,
                      244,
                      244,
                      1,
                    ),
                    fontSize: 8,
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                ),
                Text(
                  'اطلاعات تماس',
                  style: TextStyle(
                    color: Color(0xFF303030),
                    fontSize: 14,
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SwitchItems(
                onSelected: (_) {
                  submit.value = true;
                },
                items: const [
                  "",
                ]),
            const Row(
              children: [
                Text(
                  '...............................................................................',
                  style: TextStyle(
                    color: Color.fromRGBO(
                      244,
                      244,
                      244,
                      1,
                    ),
                    fontSize: 8,
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                ),
                Text(
                  'امکان چت',
                  style: TextStyle(
                    color: Color(0xFF303030),
                    fontSize: 14,
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 70,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'تائید نهایی',
              style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 14),
            ),
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset('assets/images/Vector-20 (Stroke).svg')
          ],
        )
      ]),
    );
  }
}
