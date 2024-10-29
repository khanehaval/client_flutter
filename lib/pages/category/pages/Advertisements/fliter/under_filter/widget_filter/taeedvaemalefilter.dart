import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/AdvretismentFilter.dart';
import 'package:flutter_application_1/pages/intro_screen.dart';
import 'package:flutter_application_1/repo/advRepo.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_it/get_it.dart';

class taeedvaemalefilter extends StatefulWidget {
  const taeedvaemalefilter({super.key});

  @override
  State<taeedvaemalefilter> createState() => _taeedvaemalefilterState();
}

class _taeedvaemalefilterState extends State<taeedvaemalefilter> {
  final _advRepo = GetIt.I.get<AdvRepo>();
  List<AdvretismentFilter> _filters = [];

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
              side: const BorderSide(width: 1.0, color: Color(0xFF296FE2)),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: ElevatedButton(
            onPressed: () {
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
              side: const BorderSide(width: 1.0, color: Color(0xFF00BD61)),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: ElevatedButton(
            onPressed: () {
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
    ]);
  }
}
