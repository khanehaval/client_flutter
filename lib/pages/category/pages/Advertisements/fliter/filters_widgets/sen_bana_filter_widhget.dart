import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/senbana.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_sen_bana.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class SenBanaFilterWidhget extends StatefulWidget {
  SenBanaFilterWidhget({super.key});

  @override
  State<SenBanaFilterWidhget> createState() => _SenBanaFilterWidhgetState();
}

class _SenBanaFilterWidhgetState extends State<SenBanaFilterWidhget> {
  final _show_item_senbana_1 = false.obs;

  final _SenBanaMaxTextController = TextEditingController();
  final _SenBanaLowTextController = TextEditingController();

  String _selectedOption = 'انتخاب کنید';
  String _selectedOptionlow = 'انتخاب کنید';
  // متغیر برای نگهداری انتخاب
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
          height: _show_item_senbana_1.isTrue ? 230 : 50,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                icon: _show_item_senbana_1.value
                    ? SvgPicture.asset(
                        'assets/images/=.svg',
                      )
                    : SvgPicture.asset('assets/images/down.svg'),
                onPressed: () {
                  _show_item_senbana_1.value = !_show_item_senbana_1.value;
                },
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "سن بنا",
                  style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                ),
              ),
            ]),
            if (_show_item_senbana_1.isTrue)
              Column(
                children: [
                  senbana(context),
                  const SizedBox(
                    height: 21,
                  ),
                  senbana2(context)
                ],
              ),
          ])),
    );
  }

  Widget senbana(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromRGBO(183, 183, 183, 1),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(1.1),
        child: Container(
          height: 55,
          width: MediaQuery.of(context).size.width / 1.23,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 225, 225, 225),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(
                      183,
                      183,
                      183,
                      1,
                    )),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(183, 183, 183, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(1.1),
                    child: Container(
                      width: 250,
                      height: 35,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              SenBana((selectedOption) {
                                setState(() {
                                  _selectedOptionlow =
                                      selectedOption; // بروزرسانی متغیر انتخاب
                                  _SenBanaLowTextController.text =
                                      _selectedOptionlow;
                                });
                              });
                            },
                            icon: SvgPicture.asset(
                              "assets/images/arrow_down.svg",
                              width: 10,
                              height: 10,
                              color: const Color.fromRGBO(48, 48, 48, 1),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Text(
                              _selectedOptionlow, // نمایش انتخاب
                              style: const TextStyle(
                                fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                fontSize: 14,
                                color: Color.fromRGBO(48, 48, 48, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Text(
                "حداقل",
                style: TextStyle(
                  fontFamily: MAIN_FONT_FAMILY,
                  fontSize: 11,
                  color: Color.fromRGBO(99, 99, 99, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget senbana2(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromRGBO(183, 183, 183, 1),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(1.1),
        child: Container(
          height: 55,
          width: MediaQuery.of(context).size.width / 1.23,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 225, 225, 225),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: const Color.fromRGBO(183, 183, 183, 1),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(183, 183, 183, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(1.1),
                    child: Container(
                      width: 250,
                      height: 35,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              SenBana((selectedOption) {
                                setState(() {
                                  _selectedOption =
                                      selectedOption; // بروزرسانی متغیر انتخاب
                                  _SenBanaMaxTextController.text =
                                      selectedOption;
                                });
                              });
                            },
                            icon: SvgPicture.asset(
                              "assets/images/arrow_down.svg",
                              width: 10,
                              height: 10,
                              color: const Color.fromRGBO(48, 48, 48, 1),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Text(
                              _selectedOption, // نمایش انتخاب
                              style: const TextStyle(
                                fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                fontSize: 14,
                                color: Color.fromRGBO(48, 48, 48, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Text(
                "حداکثر",
                style: TextStyle(
                  fontFamily: MAIN_FONT_FAMILY,
                  fontSize: 11,
                  color: Color.fromRGBO(99, 99, 99, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
