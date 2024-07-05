import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/sakht_v_saz_pages/partnership.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/location_Info.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/map_info_page.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/widget/submit_row.dart';
import 'package:get/get.dart';

class SelectLocationPartbership extends StatelessWidget {
  LocationInfo locationInfo;

  SelectLocationPartbership({required this.locationInfo, super.key});

  final submit = true.obs;

  final type = "".obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildaAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MapInfoPage(locationInfo),
              const SizedBox(
                height: 80,
              ),
              SubmitRow(submit: submit, nextPage: PartnerShip())
            ],
          ),
        ),
      ),
    );
  }

}
