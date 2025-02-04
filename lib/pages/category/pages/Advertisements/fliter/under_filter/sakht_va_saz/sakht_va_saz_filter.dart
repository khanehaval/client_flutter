import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/City&Filter_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/agahi_dahanda_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/aghahifori_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/emkanat_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/mahaleh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/shared.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/sakht_va_saz/Pish_Forosh_filter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/sakht_va_saz/mosharekat_dar_sakht_filter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/taeedvaemalefilter.dart';
import 'package:flutter_application_1/pages/category/shared/widget/AdvretismentFilter.dart';
import 'package:get/get.dart';

class SakhtVaSazFilter extends StatelessWidget {
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

  SakhtVaSazFilter(this.type);
  Map<String, AdvretismentFilter> filters = Map();

  @override
  Widget build(BuildContext context) {
    if (type == SubFilterType.None) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              CityfilterFilterWidget(),
              const SizedBox(
                height: 10,
              ),
              MahalehFilterWidget(),
              const SizedBox(
                height: 10,
              ),
              AgahiDahandaFilterWidget(
                onChange: (_) {
                  if (filters.containsKey(_.key())) {
                    filters.remove(_.key());
                  } else {
                    filters[_.key()] = _ as AdvretismentFilter;
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
                height: 30,
              ),
              const taeedvaemalefilter(),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      );
    } else if (type == SubFilterType.pishfrosh) {
      return PishForoshFilter();
    }
    return MosharekatDarSakhtFilter();
  }
}
