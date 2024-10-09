import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_my_desk/widget_ads_taeed.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_my_desk/widget_hamkaran.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_my_desk/widget_message_favorate.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_my_desk/widget_nemodar.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_my_desk/widget_new_ads_you.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_my_desk/widget_not_ads_kole_see.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_my_desk/widget_row.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_my_desk/widget_titr_my_desk.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/widget/widget_JalaliHomePage%20.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ProfileMyDesk extends StatelessWidget {
  const ProfileMyDesk({super.key});

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
              const WidgetTitrMyDesk(),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                endIndent: 25,
                indent: 25,
                color: Color.fromRGBO(226, 226, 226, 1),
              ),
              const SizedBox(
                height: 20,
              ),
              const WidgetAdsTaeed(),
              const SizedBox(
                height: 20,
              ),
              const WidgetNotAdsKoleSee(),
              const SizedBox(
                height: 20,
              ),
              const WidgetMessageFavorate(),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                endIndent: 25,
                indent: 25,
                color: Color.fromRGBO(226, 226, 226, 1),
              ),
              const SizedBox(
                height: 20,
              ),
              const WidgetRow(),
              const SizedBox(
                height: 30,
              ),
              const WidgetNemodar(),
              const SizedBox(
                height: 30,
              ),
              const WidgetHamkaran(),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child:
                        Container(height: 500, child: const JalaliHomePage()),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Container(
                      width: Get.width / 1.1,
                      height: 300,
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
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10),
                        child: SvgPicture.asset(
                          'assets/images/chart.svg',
                          fit: BoxFit.cover,
                        ),
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  const WidgetNewAdsYou(),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
