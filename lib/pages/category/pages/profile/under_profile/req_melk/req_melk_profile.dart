import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/req_melk/widget_filter_req_melk.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/req_melk/widget_req_melk_profile.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/req_melk/widget_serch_req_melk1.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/req_melk/widget_titr_req_melk.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';

class ReqMelkProfile extends StatelessWidget {
  ReqMelkProfile({super.key});
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar2(0),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const WidgetTitrReqMelk(),
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
                WidgetSerchReqMelk1(),
                const SizedBox(
                  height: 20,
                ),
                const WidgetFilterReqMelk(),
                const SizedBox(
                  height: 20,
                ),
                const WidgetReqMelkProfile(),
                const SizedBox(
                  height: 20,
                ),
                const WidgetReqMelkProfile(),
                const SizedBox(
                  height: 20,
                ),
                const WidgetReqMelkProfile(),
                const SizedBox(
                  height: 20,
                ),
                const WidgetReqMelkProfile(),
                const SizedBox(
                  height: 20,
                ),
                const WidgetReqMelkProfile(),
                const SizedBox(
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
