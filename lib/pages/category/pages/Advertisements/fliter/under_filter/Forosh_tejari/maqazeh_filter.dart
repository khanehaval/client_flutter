import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/City&Filter_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/aghahifori_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/jens_kaf_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/location_melk_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/mahaleh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/metraj_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/other_emkanat_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/qemat_kole_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/sanad_tejari_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/sen_bana_filter_widhget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/tedadotagh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/taeedvaemalefilter.dart';
import 'package:flutter_application_1/services/models/filterModel.dart';
import 'package:get/get.dart';

class MaqazehFilter extends StatelessWidget {
  final shakhsi = false.obs;
  final amlak = false.obs;
  final moshaver = false.obs;
  final bazsazi = false.obs;
  final aksdar = false.obs;
  final videodar = false.obs;
  final fori = false.obs;
  final sanadtejari = false.obs;
  final sanadedari = false.obs;
  final asansor = false.obs;
  final anbari = false.obs;
  final parking = false.obs;
  Map<String, AdvretismentFilter> filters = Map();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: CityfilterFilterWidget()),
          const SizedBox(
            height: 20,
          ),
          MahalehFilterWidget(),
          const SizedBox(
            height: 20,
          ),
          QematKoleFilterWidget(),
          const SizedBox(
            height: 20,
          ),
          MetrajFilterWidget(),
          const SizedBox(
            height: 20,
          ),
          TedadotaghFilterWidget(),
          const SizedBox(
            height: 20,
          ),
          LocationMelkFilterWidget(),
          const SizedBox(
            height: 20,
          ),
          SenBanaFilterWidhget(),
          const SizedBox(
            height: 20,
          ),
          OtherEmkanatFilterWidget(),
          const SizedBox(
            height: 20,
          ),
          AghahiforiFilterWidget(),
          const SizedBox(
            height: 20,
          ),
          SanadTejariFilterWidget(),
          const SizedBox(
            height: 20,
          ),
          JensKafFilterWidget(),
          const SizedBox(
            height: 20,
          ),
          taeedvaemalefilter()
        ]),
      ),
    );
  }
}
