import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_notification/widget_profile_notification2.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_notification/widget_titr_noitification_profile.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ProfileNotification extends StatelessWidget {
  const ProfileNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar2(0),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const WidgetTitrNoitificationProfile(),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  endIndent: 25,
                  indent: 25,
                  color: Color.fromRGBO(226, 226, 226, 1),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SvgPicture.asset(
                    'assets/images/start_khaneh_royaei.svg',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: Get.width / 1.1,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x26000000),
                          blurRadius: 3,
                          offset: Offset(0, 0),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'ذخیره جستجو و اطلاع رسانی',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF303030),
                                fontSize: 16,
                                fontFamily: 'Aban Bold',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'با تنظیم جستجوی مورد علاقه خود، به محض موجود شدن آن، به شما اطلاع خواهیم داد',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFFA6A6A6),
                            fontSize: 12,
                            fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(() => const WidgetProfileNotification2(),
                                    transition: Transition.leftToRight);
                              },
                              child: Container(
                                width: Get.width / 2.7,
                                height: 31,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFF4C8CED)),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  shadows: const [
                                    BoxShadow(
                                      color: Color(0x7F36D859),
                                      blurRadius: 7,
                                      offset: Offset(0, 1),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'تنظیمات جستجو',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF636363),
                                        fontSize: 12,
                                        fontFamily: MAIN_FONT_FAMILY,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
