import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/City&Filter_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/NoesystemSardayeshFilterWidget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/aghahifori_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/ejara_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/emkanat_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/jahat_sakhteman_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/jens_kaf_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/mahaleh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/metraj_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/noe_sanad_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/noesystem_garmayesh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/other_emkanat_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/rhna_filter_wigget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/sen_bana_filter_widhget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/service_wc_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/tabagheh.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/tamin_abegarm_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/tedad_koletabaghat_filter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/tedat_vahed_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/taeedvaemalefilter.dart';
import 'package:flutter_application_1/services/models/filterModel.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class ForoshApartemanFilter extends StatelessWidget {
  final shakhsi = false.obs;
  final asansor = false.obs;
  final anbari = false.obs;
  final parking = false.obs;
  final bazsazi = false.obs;
  final amlak = false.obs;
  final moshaver = false.obs;
  final aksdar = false.obs;
  final videodar = false.obs;
  final fori = false.obs;

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
          RahnFilterWidget(),
          const SizedBox(
            height: 20,
          ),
          EjaraFilterWidget(),
          const SizedBox(
            height: 20,
          ),
          MetrajFilterWidget(),
          const SizedBox(
            height: 20,
          ),
          TabaghehFilterWidget(),
          const SizedBox(
            height: 20,
          ),
          TedadKoletabaghatFilter(),
          const SizedBox(
            height: 20,
          ),
          TedatVahedFilterWidget(),
          const SizedBox(
            height: 20,
          ),
          SenBanaFilterWidhget(),
          const SizedBox(
            height: 20,
          ),
          NoeSanadFilterWidget(),
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
            height: 30,
          ),
          taeedvaemalefilter()
        ]),
      ),
    );
  }
}
