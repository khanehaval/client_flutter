import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/City&Filter_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/New_Mosharekat_dar_Sakght_Fliter_Widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/agahi_dahanda_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/aghahifori_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/emkanat_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/mahaleh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/metraj_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/noe_melk_mojod_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/taeedvaemalefilter.dart';
import 'package:flutter_application_1/services/models/filterModel.dart';
import 'package:get/get.dart';

class MosharekatDarSakhtFilter extends StatelessWidget {
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
  final aparteman = false.obs;
  final sharakvilaei = false.obs;
  final mojtamaetejari = false.obs;
  final zamin = false.obs;
  final vila = false.obs;
  final edaritejari = false.obs;
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
          MetrajFilterWidget(),
          const SizedBox(
            height: 9,
          ),
          NoeMelkMojodFilterWidget(),
          const SizedBox(
            height: 10,
          ),
          NewMosharekatdarSakghtFliterWidget(),
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
            height: 20,
          ),
          taeedvaemalefilter()
        ]),
      ),
    );
  }
}
