import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/City&Filter_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/agahi_dahanda_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/aghahifori_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/ejara_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/emkanat_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/mahaleh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/metraj_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/rhna_filter_wigget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/tedadotagh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/shared.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/forosh_filter/Forosh_Vila_display.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/forosh_filter/Forosh_kolangi_filter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/forosh_filter/forosh_aparteman_filter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/taeedvaemalefilter.dart';
import 'package:flutter_application_1/services/models/filterModel.dart';
import 'package:get/get.dart';

class ForoshFilter extends StatelessWidget {
  SubFilterType type;
  final fori = false.obs;
  final shakhsi = false.obs;
  final amlak = false.obs;
  final moshaver = false.obs;
  final bazsazi = false.obs;
  final aksdar = false.obs;
  final videodar = false.obs;
  final asansor = false.obs;
  final anbari = false.obs;
  final parking = false.obs;

  Map<String, AdvretismentFilter> filters = Map();

  ForoshFilter(this.type);

  @override
  Widget build(BuildContext context) {
    if (type == SubFilterType.None) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const CityfilterFilterWidget(),
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
                height: 30,
              ),
              taeedvaemalefilter()
            ],
          ),
        ),
      );
    } else if (type == SubFilterType.ForoshAparteman) {
      return ForoshApartemanFilter();
    } else if (type == SubFilterType.ForoshVila) {
      return ForoshVilaFilter();
    }
    return ForoshKolangi();
  }
}
