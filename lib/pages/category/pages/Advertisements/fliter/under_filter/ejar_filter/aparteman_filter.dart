import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/City&Filter_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/NoesystemSardayeshFilterWidget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/agahi_dahanda_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/aghahifori_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/ejara_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/emkanat_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/jahat_sakhteman_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/jens_kaf_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/mahaleh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/metraj_filter_widget.dart';
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
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/repo/advRepo.dart';
import 'package:flutter_application_1/services/models/filterModel.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';

class EjaraApartemanFilter extends StatefulWidget {
  @override
  State<EjaraApartemanFilter> createState() => _EjaraApartemanFilterState();
}

class _EjaraApartemanFilterState extends State<EjaraApartemanFilter> {
  final shakhsi = false.obs;

  final amlak = false.obs;

  final moshaver = false.obs;

  final aksdar = false.obs;

  final videodar = false.obs;

  final fori = false.obs;

  Map<String, AdvretismentFilter> filters = Map();

  final _advRepo = GetIt.I.get<AdvRepo>();

  List<AdvretismentFilter> _filters = [];

  @override
  void initState() {
    filters = _advRepo.filters;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          const Column(
            children: [
              CityfilterFilterWidget(),
            ],
          ),
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
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              height: 41,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x7F296FE2),
                      blurRadius: 7,
                      offset: Offset(0, 1),
                    )
                  ],
                  color: Colors.white),
              child: Container(
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 1.0, color: Color(0xFF296FE2)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    _advRepo.addFilters(_filters);
                    Get.back();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent),
                  child: const Text(
                    'تائید و اعمال فیلتر',
                    style: TextStyle(
                        color: Color.fromRGBO(48, 48, 48, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: MAIN_FONT_FAMILY),
                  ),
                ),
              ),
            ),
            Container(
              height: 41,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFF00BD61),
                      blurRadius: 4,
                      offset: Offset(0, 0),
                    )
                  ],
                  color: Colors.white),
              child: Container(
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 1.0, color: Color(0xFF00BD61)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    _advRepo.addFilters(_filters);
                    Get.back();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent),
                  child: const Text(
                    'ذخیره جستجو',
                    style: TextStyle(
                        color: Color.fromRGBO(48, 48, 48, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: MAIN_FONT_FAMILY),
                  ),
                ),
              ),
            ),
          ])
        ]),
      ),
    );
  }
}
