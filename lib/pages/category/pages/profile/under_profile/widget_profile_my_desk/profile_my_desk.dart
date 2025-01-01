import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_my_desk/widget_ads_taeed.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_my_desk/widget_hamkaran.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_my_desk/widget_message_favorate.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_my_desk/widget_nemodar.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_my_desk/widget_new_ads_you.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_my_desk/widget_not_ads_kole_see.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_my_desk/widget_row.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_my_desk/widget_titr_my_desk.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/widget/widget_JalaliHomePage%20.dart';
import 'package:flutter_svg/svg.dart';

class ProfileMyDesk extends StatelessWidget {
  const ProfileMyDesk({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar2(0),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: const Column(
                children: [
                  WidgetTitrMyDesk(),
                  SizedBox(height: 20),
                  Divider(
                    endIndent: 25,
                    indent: 25,
                    color: Color.fromRGBO(226, 226, 226, 1),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                children: [
                  const WidgetAdsTaeed(),
                  const SizedBox(height: 20),
                  const WidgetNotAdsKoleSee(),
                  const SizedBox(height: 20),
                  const WidgetMessageFavorate(),
                  const SizedBox(height: 20),
                  const Divider(
                    endIndent: 25,
                    indent: 25,
                    color: Color.fromRGBO(226, 226, 226, 1),
                  ),
                  const SizedBox(height: 20),
                  const WidgetRow(),
                  const SizedBox(height: 30),
                  const WidgetNemodar(),
                  const SizedBox(height: 20),
                  const WidgetHamkaran(),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 500,
                      child: const JalaliHomePage(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
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
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: SvgPicture.asset(
                          'assets/images/chart.svg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const WidgetNewAdsYou(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
