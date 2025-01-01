import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_notification/widget_result_serch.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_notification/widget_result_serch2.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_notification/widget_save_serch1.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_notification/widget_save_serch2.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_notification/widget_titr_noitification_profile.dart';

class WidgetProfileNotification2 extends StatelessWidget {
  const WidgetProfileNotification2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
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
              const SizedBox(
                height: 20,
              ),
              const WidgetSaveSerch1(),
              const SizedBox(
                height: 20,
              ),
              const WidgetSaveSerch2(),
              const SizedBox(
                height: 20,
              ),
              const WidgetResultSerch(),
              const SizedBox(
                height: 20,
              ),
              WidgetResultSerch2(),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                indent: 25,
                endIndent: 30,
                color: Color.fromRGBO(183, 183, 183, 1),
              ),
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
