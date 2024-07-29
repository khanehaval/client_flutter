import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/City&Filter_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/agahi_dahanda_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/aghahifori_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/ejara_rozaneh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/emkanat_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/mahaleh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/metraj_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/tedadotagh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/shared.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/kota_modat/ejara_kota_aparteman.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/kota_modat/ejara_kota_vila.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/taeedvaemalefilter.dart';
import 'package:flutter_application_1/services/models/filterModel.dart';
import 'package:get/get.dart';

class KotaModatFilter extends StatelessWidget {
  SubFilterType type;
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

  KotaModatFilter(this.type);

  @override
  Widget build(BuildContext context) {
    if (type == SubFilterType.None) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: CityfilterFilterWidget()),
              const SizedBox(
                height: 20,
              ),
              MahalehFilterWidget(),
              const SizedBox(
                height: 20,
              ),
              EjaraRozanehFilterWidget(),
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
              EmkanatFilterWidget(),
              const SizedBox(
                height: 20,
              ),
              AghahiforiFilterWidget(),
              const SizedBox(
                height: 20,
              ),
              taeedvaemalefilter()
            ],
          ),
        ),
      );
    } else if (type == SubFilterType.kotamodataparteman) {
      return EjaraKotAparteman();
    }
    return EjaraKotaVila();
  }
}
