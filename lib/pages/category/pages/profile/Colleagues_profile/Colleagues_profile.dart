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
import 'package:jalali_flutter_datepicker/jalali_flutter_datepicker.dart';

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

class HamkarWidget extends StatefulWidget {
  @override
  _HamkarWidgetState createState() => _HamkarWidgetState();
}

class _HamkarWidgetState extends State<HamkarWidget> {
  bool _showMessage = false; // وضعیت نمایش متن
  String _buttonText = 'لغو همکاری'; // متن دکمه
  bool _isRequestCancelled = false; // وضعیت تغییر border

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Container(
              width: Get.width / 1.2,
              height: 390,
              decoration: ShapeDecoration(
                gradient:
                    const LinearGradient(colors: GRADIANT_COLOR_Colleagues),
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
                    const SizedBox(height: 10),
                    WidgetTaskManagementColleagues(),
                    const SizedBox(height: 10),
                    WidgetManagementAd(),
                    const SizedBox(height: 20),
                    const Divider(
                      indent: 25,
                      endIndent: 25,
                      color: Color.fromRGBO(226, 226, 226, 1),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (_isRequestCancelled) {
                            _showMessage = false;
                            _buttonText = 'لغو همکاری';
                            _isRequestCancelled = false;
                          } else {
                            _showMessage = true;
                            _buttonText = 'لغو درخواست';
                            _isRequestCancelled = true;
                          }
                        });
                      },
                      child: Container(
                        width: Get.width / 2.3,
                        height: Get.height / 24,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: _isRequestCancelled
                              ? Border.all(
                                  width: 1,
                                  style: BorderStyle.solid,
                                  color: const Color.fromRGBO(54, 216, 89, 1),
                                )
                              : Border.all(
                                  width: 1,
                                  color: const Color(0xFF9C4040),
                                ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              _buttonText, // استفاده از متغیر _buttonText
                              style: const TextStyle(
                                color: Color(0xFF626262),
                                fontSize: 12,
                                fontFamily: MAIN_FONT_FAMILY,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    if (_showMessage) // نمایش متن اگر وضعیت true باشد
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment
                              .center, // متن‌ها را در وسط قرار دهید
                          children: [
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'لغو همکاری', // فقط این بخش قرمز
                                    style: TextStyle(
                                      color:
                                          Color.fromRGBO(169, 0, 0, 1), // قرمز
                                      fontSize: 12,
                                      fontFamily: MAIN_FONT_FAMILY,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' با موفقیت ارسال شد', // بقیه متن در کنار آن
                                    style: TextStyle(
                                      color: Colors.black, // سیاه
                                      fontSize: 12,
                                      fontFamily: MAIN_FONT_FAMILY,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 4), // فاصله بین دو متن
                            const Text(
                              'لطفا منتظر تائید باشید', // متن دوم
                              style: TextStyle(
                                color: Colors.black, // سیاه
                                fontSize: 12,
                                fontFamily: MAIN_FONT_FAMILY,
                              ),
                            ),
                          ],
                        ),
                      ),
                    const Divider(
                      indent: 25,
                      endIndent: 25,
                      color: Color.fromRGBO(226, 226, 226, 1),
                    ),
                    const WidgetInformationRow(),
                    const SizedBox(height: 20),
                    const WidgetVitrinMessageCall(),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
