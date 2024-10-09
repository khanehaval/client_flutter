import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/profile_detail/widget_address_home.dart';
import 'package:flutter_application_1/pages/category/pages/profile/profile_detail/widget_bank_hesab.dart';
import 'package:flutter_application_1/pages/category/pages/profile/profile_detail/widget_bank_hesab_detail.dart';
import 'package:flutter_application_1/pages/category/pages/profile/profile_detail/widget_code_posti_detai.dart';
import 'package:flutter_application_1/pages/category/pages/profile/profile_detail/widget_email_web.dart';
import 'package:flutter_application_1/pages/category/pages/profile/profile_detail/widget_fothorname_birthday.dart';
import 'package:flutter_application_1/pages/category/pages/profile/profile_detail/widget_name_and_family_detail.dart';
import 'package:flutter_application_1/pages/category/pages/profile/profile_detail/widget_new_password.dart';
import 'package:flutter_application_1/pages/category/pages/profile/profile_detail/widget_number_shaba.dart';
import 'package:flutter_application_1/pages/category/pages/profile/profile_detail/widget_password_now.dart';
import 'package:flutter_application_1/pages/category/pages/profile/profile_detail/widget_phone_number.dart';
import 'package:flutter_application_1/pages/category/pages/profile/profile_detail/widget_photo_id_number_id.dart';
import 'package:flutter_application_1/pages/category/pages/profile/profile_detail/widget_save.dart';
import 'package:flutter_application_1/pages/category/pages/profile/profile_detail/widget_titr_detail.dart';
import 'package:flutter_application_1/pages/category/pages/profile/profile_detail/widget_try_password.dart';
import 'package:flutter_application_1/pages/category/pages/profile/profile_detail/widget_user_name_detail.dart';
import 'package:flutter_application_1/pages/category/pages/profile/profile_detail/widget_varedkonid.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar2(0),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: const Column(
            children: [
              SizedBox(
                height: 20,
              ),
              WidgetTitrDetail(),
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
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Divider(
                        indent: 25,
                        endIndent: 15,
                        color: Color.fromRGBO(226, 226, 226, 1),
                        thickness: 1,
                      ),
                    ),
                    Text(
                      '(2/4)',
                      style: TextStyle(
                        color: Color.fromRGBO(156, 64, 64, 1),
                        fontSize: 14,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'اطلاعات فردی',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Color.fromRGBO(159, 159, 159, 1),
                        fontSize: 14,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    SizedBox(width: 8),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              WidgetNameAndFamilyDetail(),
              SizedBox(
                height: 20,
              ),
              WidgetFothornameBirthday(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Divider(
                        indent: 25,
                        endIndent: 15,
                        color: Color.fromRGBO(226, 226, 226, 1),
                        thickness: 1,
                      ),
                    ),
                    Text(
                      '(0/6)',
                      style: TextStyle(
                        color: Color.fromRGBO(156, 64, 64, 1),
                        fontSize: 14,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'ارتباط با شما',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Color.fromRGBO(159, 159, 159, 1),
                        fontSize: 14,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    SizedBox(width: 8),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              WidgetPhoneNumber(),
              SizedBox(
                height: 20,
              ),
              WidgetEmailWeb(),
              SizedBox(
                height: 20,
              ),
              WidgetAddressHome(),
              SizedBox(
                height: 20,
              ),
              WidgetCodePostiDetai(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Divider(
                        indent: 20,
                        endIndent: 15,
                        color: Color.fromRGBO(226, 226, 226, 1),
                        thickness: 1,
                      ),
                    ),
                    Text(
                      '(1/2)',
                      style: TextStyle(
                        color: Color.fromRGBO(156, 64, 64, 1),
                        fontSize: 14,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'اطلاعات هویتی',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Color.fromRGBO(159, 159, 159, 1),
                        fontSize: 14,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    SizedBox(width: 8),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              WidgetBankHesab(),
              SizedBox(
                height: 20,
              ),
              WidgetPhotoIdNumberId(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Divider(
                        indent: 20,
                        endIndent: 15,
                        color: Color.fromRGBO(226, 226, 226, 1),
                        thickness: 1,
                      ),
                    ),
                    Text(
                      '(0/2)',
                      style: TextStyle(
                        color: Color.fromRGBO(156, 64, 64, 1),
                        fontSize: 14,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'اطلاعات مالی',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Color.fromRGBO(159, 159, 159, 1),
                        fontSize: 14,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    SizedBox(width: 8),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              WidgetBankHesabDetail(),
              SizedBox(
                height: 20,
              ),
              WidgetNumberShaba(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Divider(
                        indent: 20,
                        endIndent: 15,
                        color: Color.fromRGBO(226, 226, 226, 1),
                        thickness: 1,
                      ),
                    ),
                    Text(
                      '(1/1)',
                      style: TextStyle(
                        color: Color.fromRGBO(66, 159, 86, 1),
                        fontSize: 14,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'نام کاربری',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Color.fromRGBO(159, 159, 159, 1),
                        fontSize: 14,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    SizedBox(width: 8),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              WidgetUserNameDetail(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Divider(
                        indent: 20,
                        endIndent: 15,
                        color: Color.fromRGBO(226, 226, 226, 1),
                        thickness: 1,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'تغییر رمز عبور',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Color.fromRGBO(159, 159, 159, 1),
                        fontSize: 14,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    SizedBox(width: 8),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              WidgetPasswordNow(),
              SizedBox(
                height: 20,
              ),
              WidgetNewPassword(),
              SizedBox(
                height: 20,
              ),
              WidgetTryPassword(),
              SizedBox(
                height: 20,
              ),
              WidgetVaredkonid(),
              SizedBox(
                height: 50,
              ),
              WidgetSave(),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
