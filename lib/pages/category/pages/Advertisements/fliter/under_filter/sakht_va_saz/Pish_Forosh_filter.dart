import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/City&Filter_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/agahi_dahanda_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/aghahifori_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/emkanat_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/mahaleh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/marhaleh_sakht_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/metraj_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/noe_melk_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/qemat_kole_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/tabagheh.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/tedadotagh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/taeedvaemalefilter.dart';
import 'package:flutter_application_1/services/models/filterModel.dart';
import 'package:get/get.dart';

class PishForoshFilter extends StatelessWidget {
  final shakhsi = false.obs;
  final amlak = false.obs;
  final moshaver = false.obs;
  final bazsazi = false.obs;
  final aksdar = false.obs;
  final videodar = false.obs;
  final fori = false.obs;
  final asansor = false.obs;
  final anbari = false.obs;
  final parking = false.obs;
  final zamin = false.obs;
  final aparteman = false.obs;
  final vila = false.obs;
  final edaritejari = false.obs;

  final _show_item_emkanatagahi_1 = false.obs;
  Map<String, AdvretismentFilter> filters = Map();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          const CityfilterFilterWidget(),
          const SizedBox(
            height: 10,
          ),
          MahalehFilterWidget(),
          const SizedBox(
            height: 10,
          ),
          QematKoleFilterWidget(),
          const SizedBox(
            height: 10,
          ),
          NoeMelkFilterWidget(),
          const SizedBox(
            height: 10,
          ),
          MetrajFilterWidget(),
          const SizedBox(
            height: 10,
          ),
          TedadotaghFilterWidget(),
          const SizedBox(
            height: 10,
          ),
          MarhalehSakhtFilterWidget(),
          const SizedBox(
            height: 10,
          ),
          TabaghehFilterWidget(),
          const SizedBox(
            height: 10,
          ),
          AgahiDahandaFilterWidget(
            onChange: (_) {
              if (filters.containsKey(_.key())) {
                filters.remove(_.key());
              } else {
                filters[_.key()] = _;
              }
            },
          ),
          const SizedBox(
            height: 10,
          ),
          EmkanatFilterWidget(),
          const SizedBox(
            height: 10,
          ),
          AghahiforiFilterWidget(),
          const SizedBox(
            height: 15,
          ),
          taeedvaemalefilter()
        ]),
      ),
    );
  }
}
