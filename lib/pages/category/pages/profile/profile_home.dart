import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/profile_detail/profile_detail.dart';
import 'package:flutter_application_1/pages/category/pages/profile/widget_profile_home/WidgetProfileAdsAndMyDesk.dart';
import 'package:flutter_application_1/pages/category/pages/profile/widget_profile_home/Widget_profile_see_and_save.dart';
import 'package:flutter_application_1/pages/category/pages/profile/widget_profile_home/widget_profile_home_axans_consultants.dart';
import 'package:flutter_application_1/pages/category/pages/profile/widget_profile_home/widget_profile_home_melk_and_vitrin.dart';
import 'package:flutter_application_1/pages/category/pages/profile/widget_profile_home/widget_profile_home_setting_khanehaval.dart';
import 'package:flutter_application_1/pages/category/pages/profile/widget_profile_home/widget_profile_home_tour_rington.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileHome extends StatelessWidget {
  const ProfileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar2(0),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // بالای صفحه (قسمت پروفایل)
          _buildProfileHeader(context),

          const Divider(
            endIndent: 25,
            indent: 25,
            color: Color.fromRGBO(226, 226, 226, 1),
          ),

          // اینجا از ListView استفاده کنید
          Expanded(
            child: ListView(
              children: [
                const WidgetProfileAdsAndMyDesk(),
                const SizedBox(height: 20),
                const WidgetProfileSeeAndSave(),
                const SizedBox(height: 20),
                const WidgetProfileHomeTourRington(),
                const SizedBox(height: 20),
                const WidgetProfileHomeMelkAndVitrin(),
                const SizedBox(height: 20),
                const WidgetProfileHomeAxansConsultants(),
                const SizedBox(height: 20),
                const WidgetProfileHomeSettingKhanehaval(),
                const SizedBox(height: 50),
                sabtAds(),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context) {
    // کد قسمت پروفایل را اینجا قرار دهید
    return Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: Get.width / 3.2,
                  height: 74,
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
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('1402',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: MAIN_FONT_FAMILY)),
                              Text(
                                'مرداد',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: MAIN_FONT_FAMILY,
                                    color: Color.fromRGBO(255, 122, 0, 1)),
                              ),
                              Text(
                                '25',
                                style: TextStyle(
                                    fontSize: 14, fontFamily: MAIN_FONT_FAMILY),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              SvgPicture.asset(
                                'assets/images/Message_profile_home.svg',
                                width: 20,
                                height: 20,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const ProfileDetail());
                  },
                  child: Container(
                    width: Get.width / 1.9,
                    height: 74,
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
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 58,
                              height: 50,
                              decoration: const BoxDecoration(
                                  gradient:
                                      LinearGradient(colors: GRADIANT_COLOR1),
                                  shape: BoxShape.circle),
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Container(
                                  height: 50,
                                  width: 58,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      'assets/images/logo-fa-photoshop.png',
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 45.0, top: 15),
                              child: SvgPicture.asset(
                                'assets/images/edit_icon_profile.svg',
                                width: 50,
                                height: 20,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Score_axansbartar.png',
                                width: 70,
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.verified,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    "خانه اول",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: MAIN_FONT_FAMILY),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}

Widget sabtAds() {
  return Container(
    width: Get.width / 1.1,
    height: 60,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 60,
          width: Get.width / 1.12,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  width: 1, color: Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: const TextSpan(
                  style:
                      TextStyle(fontFamily: 'Aban Bold', color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'ثبت آگهی ',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    TextSpan(
                      text: '(رایگان)',
                      style: TextStyle(color: Color.fromRGBO(54, 216, 89, 1)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SvgPicture.asset(
                'assets/images/add_profile.svg',
                width: 27,
                height: 30,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
