import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/City&Filter_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/NoesystemSardayeshFilterWidget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/agahi_dahanda_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/aghahifori_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/emkanat_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/jahat_sakhteman_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/jens_kaf_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/mahaleh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/metraj_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/noesystem_garmayesh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/other_emkanat_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/qemat_kole_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/sanad_edari_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/sen_bana_filter_widhget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/service_wc_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/tamin_abegarm_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/tedad_tabagh_vila_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/tedadotagh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/taeedvaemalefilter.dart';
import 'package:flutter_application_1/services/models/filterModel.dart';
import 'package:get/get.dart';

class DaftarKarFilter extends StatelessWidget {
  final shakhsi = false.obs;
  final amlak = false.obs;
  final moshaver = false.obs;
  final bazsazi = false.obs;
  final aksdar = false.obs;
  final videodar = false.obs;
  final fori = false.obs;
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
          CityfilterFilterWidget(),
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
          TedadTabaghVilaFilterWidget(),
          const SizedBox(
            height: 20,
          ),
          SenBanaFilterWidhget(),
          const SizedBox(
            height: 20,
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
            height: 20,
          ),
          OtherEmkanatFilterWidget(),
          const SizedBox(
            height: 20,
          ),
          EmkanatFilterWidget(),
          const SizedBox(
            height: 20,
          ),
          AghahiforiFilterWidget(),
          const SizedBox(
            height: 20,
          ),
          SanadEdariFilterWidget(),
          const SizedBox(
            height: 20,
          ),
          JahatSakhtemanFilterWidget(),
          const SizedBox(
            height: 20,
          ),
          TaminAbegarmFilterWidget(),
          const SizedBox(
            height: 20,
          ),
          NoesystemGarmayeshFilterWidget(),
          const SizedBox(
            height: 20,
          ),
          Noesystemsardayeshfilterwidget(),
          const SizedBox(
            height: 20,
          ),
          ServiceWcFilterWidget(),
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
