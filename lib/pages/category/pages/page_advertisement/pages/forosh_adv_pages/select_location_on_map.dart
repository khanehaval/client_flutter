import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/sale_home2.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/map.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/switchItem.dart';
import 'package:get/get.dart';
import '../../../../shared/contant.dart';

class SelectLocationOnMap extends StatefulWidget {
  const SelectLocationOnMap({super.key});

  @override
  State<SelectLocationOnMap> createState() => _SelectLocationOnMapState();
}

class _SelectLocationOnMapState extends State<SelectLocationOnMap> {
  bool isChecked = false;
  final _selected = 0.obs;

  final type = "".obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildaAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
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
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 1.50, color: Color(0xFF36D859)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: GestureDetector(
                    onTap: () {
                      Get.to(() => AdsMapSelect());
                    },
                    child: Image.asset('assets/images/Group 1440.png')),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "انتخاب محله ",
                        style: TextStyle(
                          color: Color.fromRGBO(166, 166, 166, 1),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 40,
                        child: TextField(
                          textAlign: TextAlign.right,
                          readOnly: true,
                          decoration: InputDecoration(
                            hintText: 'صادقیه شمالی',
                            hintStyle: const TextStyle(
                              color: Color(0xFFA6A6A6),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "*انتخاب شهر",
                        style:
                            TextStyle(color: Color.fromRGBO(166, 166, 166, 1)),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: TextField(
                          textAlign: TextAlign.right,
                          readOnly: true,
                          decoration: InputDecoration(
                            hintText: 'تهران',
                            hintStyle: const TextStyle(
                              color: Color(0xFFA6A6A6),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  maxLines: 2,
                  decoration: InputDecoration(
                      label: const Text(
                        "آدرس",
                        style: TextStyle(
                            fontFamily: MAIN_FONT_FAMILY,
                            color: Color.fromRGBO(166, 166, 166, 1)),
                        textAlign: TextAlign.right,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "نوع ملک شما",
                  style: TextStyle(
                    color: Color.fromRGBO(
                      166,
                      166,
                      166,
                      1,
                    ),
                    fontSize: 12,
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                ),
              ),
              SwitchItem(type: type, items: const ["سوئیت", "برج", "پنت هاوس"]),
              const SizedBox(
                height: 80,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => SaleHome2());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "...تایید و ادامه",
                      style: _selected.value == 0
                          ? const TextStyle(
                              fontSize: 20,
                              fontFamily: MAIN_FONT_FAMILY,
                              color: Colors.black38,
                            )
                          : const TextStyle(
                              fontSize: 20, fontFamily: MAIN_FONT_FAMILY),
                    ),
                    Icon(
                      Icons.double_arrow,
                      color: _selected.value == 0
                          ? Colors.black54
                          : const Color.fromRGBO(76, 140, 237, 1),
                      size: 35,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItem(String assetPath, int index) {
    return GestureDetector(
      onTap: () {
        _selected.value = index;
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Obx(() => Container(
              // height: 96,
              // width: 144,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 5,
                    )
                  ],
                  border: Border.all(
                    color: _selected.value == index
                        ? Colors.greenAccent
                        : Colors.black38,
                    width: _selected.value == index ? 2.5 : 1.5,
                  )),
              child: Image.asset(assetPath),
            )),
      ),
    );
  }
}
