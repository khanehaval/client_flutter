import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/City&Filter_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/NoesystemSardayeshFilterWidget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/agahi_dahanda_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/aghahifori_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/ejara_rozaneh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/emkanat_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/mahaleh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/metraj_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/noesystem_garmayesh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/other_emkanat_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/service_sleep_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/service_wc_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/tabagheh.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/tedadotagh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/zarfiat_nafarat_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/taeedvaemalefilter.dart';
import 'package:flutter_application_1/services/models/filterModel.dart';
import 'package:get/get.dart';

class EjaraKotAparteman extends StatelessWidget {
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
  Map<String, AdvretismentFilter> filters = Map();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          CityfilterFilterWidget(),
          const SizedBox(
            height: 10,
          ),
          MahalehFilterWidget(),
          const SizedBox(
            height: 10,
          ),
          EjaraRozanehFilterWidget(),
          const SizedBox(
            height: 10,
          ),
          MetrajFilterWidget(),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          ZarfiatNafaratFilterWidget(),
          const SizedBox(
            height: 10,
          ),
          TedadotaghFilterWidget(),
          const SizedBox(
            height: 10,
          ),
          TabaghehFilterWidget(),
          const SizedBox(
            height: 10,
          ),
          ServiceSleepFilterWidget(),
          const SizedBox(
            height: 9,
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
          OtherEmkanatFilterWidget(),
          const SizedBox(
            height: 10,
          ),
          AghahiforiFilterWidget(),
          const SizedBox(
            height: 10,
          ),
          NoesystemGarmayeshFilterWidget(),
          const SizedBox(
            height: 10,
          ),
          Noesystemsardayeshfilterwidget(),
          const SizedBox(
            height: 10,
          ),
          ServiceWcFilterWidget(),
          const SizedBox(
            height: 20,
          ),
          taeedvaemalefilter()
        ]),
      ),
    );
  }
}
