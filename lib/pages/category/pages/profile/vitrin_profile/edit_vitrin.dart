import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/widgets_vitrin_profile/widget_Expertise_and_skill.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/widgets_vitrin_profile/widget_Special_ad.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/widgets_vitrin_profile/widget_The_main_slogan.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/widgets_vitrin_profile/widget_about_vitrin.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/widgets_vitrin_profile/widget_back_ground_vitrin.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/widgets_vitrin_profile/widget_information_axans.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/widgets_vitrin_profile/widget_link_address.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/widgets_vitrin_profile/widget_maqaleh_amozeshi.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/widgets_vitrin_profile/widget_moarefi_targert.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/widgets_vitrin_profile/widget_name_axans.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/widgets_vitrin_profile/widget_photo_profile_vitrin.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/widgets_vitrin_profile/widget_shabake_vitrin.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/widgets_vitrin_profile/widget_users_consultants.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/widgets_vitrin_profile/widget_web_vitrin.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class EditVitrin extends StatelessWidget {
  EditVitrin({super.key});
  final _About_me_1 = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar2(0),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 176,
                    height: 100,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x26000000),
                          blurRadius: 3,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset(
                          'assets/images/Group 1000004265.svg',
                          width: 50,
                          height: 50,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'شما هنوز ویـتـرین',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF626262),
                                  fontSize: 10,
                                  fontFamily: MAIN_FONT_FAMILY,
                                ),
                                textDirection: TextDirection.rtl,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                ' خود را کامل نکردید',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF626262),
                                  fontSize: 10,
                                  fontFamily: MAIN_FONT_FAMILY,
                                ),
                                textDirection: TextDirection.rtl,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'آخرین بروزرسانی ',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF626262),
                                  fontSize: 10,
                                  fontFamily: MAIN_FONT_FAMILY,
                                ),
                                textDirection: TextDirection.rtl,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '1403/04/15',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF626262),
                                  fontSize: 10,
                                  fontFamily: MAIN_FONT_FAMILY,
                                ),
                                textDirection: TextDirection.rtl,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 155,
                    height: 100,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
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
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 110.0,
                          ),
                          child: SvgPicture.asset(
                            'assets/images/vitrin_profile_icon.svg',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'ویترین',
                                style: TextStyle(
                                  color: Color(0xFF626262),
                                  fontSize: 18,
                                  fontFamily: 'Aban Light',
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'در ویترین دیده شوید',
                                style: TextStyle(
                                  color: Color(0xFFA5A5A5),
                                  fontSize: 9,
                                  fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                endIndent: 25,
                indent: 20,
                color: Color.fromRGBO(226, 226, 226, 1),
              ),
              const SizedBox(
                height: 20,
              ),
              WidgetInformationAxans(),
              const SizedBox(
                height: 20,
              ),
              WidgetExpertiseAndSkill(),
              const SizedBox(
                height: 20,
              ),
              WidgetMoarefiTargert(),
              const SizedBox(
                height: 20,
              ),
              WidgetAboutVitrin(),
              const SizedBox(
                height: 20,
              ),
              WidgetTheMainSlogan(),
              const SizedBox(
                height: 20,
              ),
              WidgetNameAxans(),
              const SizedBox(
                height: 20,
              ),
              WidgetLinkAddress(),
              const SizedBox(
                height: 20,
              ),
              // WidgetWebVitrin(),
              // const SizedBox(
              //   height: 20,
              // ),
              // WidgetShabakeVitrin(),
              // const SizedBox(
              //   height: 20,
              // ),
              WidgetPhotoProfileVitrin(),
              const SizedBox(
                height: 20,
              ),
              WidgetBackGroundVitrin(),
              const SizedBox(
                height: 20,
              ),
              WidgetUsersConsultants(),
              const SizedBox(
                height: 20,
              ),
              // WidgetSpecialAd(),
              // const SizedBox(
              //   height: 20,
              // ),
              WidgetMaqalehAmozeshi(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
