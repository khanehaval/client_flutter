import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/category_advertisement.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:get/get.dart';

class Map1 extends StatefulWidget {
  const Map1({super.key});

  @override
  State<Map1> createState() => _SelectLocationOnMapState();
}

class _SelectLocationOnMapState extends State<Map1> {
  bool isChecked = false;
  final _selected = 0.obs;
  final type = "".obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildaAppBar(),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "ثبت آگهی اکونومی",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: MAIN_FONT_FAMILY),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 400,
                        height: 620,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1.50, color: Color(0xFF36D859)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: GestureDetector(
                            onTap: () {},
                            child: Image.asset('assets/images/Map1.png')),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ]))));
  }
}
