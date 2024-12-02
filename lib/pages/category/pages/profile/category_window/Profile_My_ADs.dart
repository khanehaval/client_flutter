import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/category_window/widget_Ad_profile.dart';

class ProfileMyAds extends StatelessWidget {
  const ProfileMyAds({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      Divider(
        endIndent: 20,
        indent: 20,
      ),
      SizedBox(
        height: 20,
      ),
      WidgetAdProfile(),
      SizedBox(
        height: 20,
      ),
      WidgetAdProfile(),
      SizedBox(
        height: 20,
      ),
      WidgetAdProfile(),
      SizedBox(
        height: 20,
      ),
      WidgetAdProfile(),
      SizedBox(
        height: 20,
      ),
      WidgetAdProfile(),
      SizedBox(
        height: 20,
      ),
      WidgetAdProfile(),
      SizedBox(
        height: 20,
      ),
      WidgetAdProfile(),
      SizedBox(
        height: 20,
      ),
      WidgetAdProfile(),
      SizedBox(
        height: 20,
      ),
    ]);
  }
}
