import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/Colleagues_profile/widget_colleaguess.dart';
import 'package:flutter_application_1/pages/category/pages/profile/Colleagues_profile/widget_information_row.dart';
import 'package:flutter_application_1/pages/category/pages/profile/Colleagues_profile/widget_titr_colleagues.dart';
import 'package:flutter_application_1/pages/category/pages/profile/Colleagues_profile/widget_vitrin_message_call.dart';
import 'package:flutter_application_1/pages/category/pages/profile/widget_Colleagues_profile/widget_Task_management_Colleagues.dart';
import 'package:flutter_application_1/pages/category/pages/profile/widget_Colleagues_profile/widget_management_ad.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:get/get.dart';

class ColleaguesProfile extends StatefulWidget {
  ColleaguesProfile({super.key});

  @override
  State<ColleaguesProfile> createState() => _ColleaguesProfileState();
}

class _ColleaguesProfileState extends State<ColleaguesProfile> {
  bool _isContainerVisible = false; // حالت برای نمایش یا عدم نمایش کانتینر

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar2(0),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                WidgetTitrColleagues(),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  endIndent: 25,
                  indent: 25,
                  color: Color.fromRGBO(226, 226, 226, 1),
                ),
                SizedBox(
                  height: 20,
                ),
                WidgetColleaguess(),
                SizedBox(
                  height: 20,
                ),
                WidgetColleaguess(),
                SizedBox(
                  height: 20,
                ),
                WidgetColleaguess(),
                SizedBox(
                  height: 20,
                ),
                WidgetColleaguess(),
                SizedBox(
                  height: 20,
                ),
                WidgetColleaguess(),
                SizedBox(
                  height: 20,
                ),
                WidgetColleaguess(),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget hamkar() {
  return SingleChildScrollView(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SingleChildScrollView(
          child: Container(
            width: Get.width / 1.1,
            height: 390,
            decoration: ShapeDecoration(
              gradient: const LinearGradient(colors: GRADIANT_COLOR_Colleagues),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 3.0,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  WidgetTaskManagementColleagues(),
                  const SizedBox(
                    height: 10,
                  ),
                  WidgetManagementAd(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Color.fromRGBO(226, 226, 226, 1),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: Get.width / 2.3,
                    height: Get.height / 24,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFF9C4040)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x7F9C4040),
                          blurRadius: 7,
                          offset: Offset(0, 1),
                        )
                      ],
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'لغو همکاری',
                          style: TextStyle(
                            color: Color(0xFF626262),
                            fontSize: 12,
                            fontFamily: MAIN_FONT_FAMILY,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Color.fromRGBO(226, 226, 226, 1),
                  ),
                  const WidgetInformationRow(),
                  const SizedBox(
                    height: 20,
                  ),
                  const WidgetVitrinMessageCall()
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
