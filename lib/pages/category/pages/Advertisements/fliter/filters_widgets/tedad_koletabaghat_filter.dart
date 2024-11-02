import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/koletabagheh.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class TedadKoletabaghatFilter extends StatefulWidget {
  TedadKoletabaghatFilter({super.key});

  @override
  State<TedadKoletabaghatFilter> createState() =>
      _TedadKoletabaghatFilterState();
}

class _TedadKoletabaghatFilterState extends State<TedadKoletabaghatFilter> {
  final _show_item_koletabageh_1 = false.obs;

  final _countOfInstallmentsController = false.obs;

  final _countOfInstallmentsMaxController = false.obs;

  String _selectedOptionlow = "انتخاب کنید";

  String _selectedOptionMax = "انتخاب کنید";

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          height: _show_item_koletabageh_1.isTrue ? 230 : 50,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                icon: _show_item_koletabageh_1.value
                    ? SvgPicture.asset(
                        'assets/images/=.svg',
                      )
                    : SvgPicture.asset('assets/images/down.svg'),
                onPressed: () {
                  _show_item_koletabageh_1.value =
                      !_show_item_koletabageh_1.value;
                },
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "تعداد کل طبقات",
                  style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                ),
              ),
            ]),
            if (_show_item_koletabageh_1.isTrue)
              Column(
                children: [
                  koletabagheh(context),
                  const SizedBox(
                    height: 21,
                  ),
                  koletabagheh2(context)
                ],
              ),
          ]),
        ));
  }

  Widget koletabagheh(BuildContext context) {
    return Container(
      height: 50,
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
              width: 264,
              height: 35,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x11000000),
                    blurRadius: 7,
                    offset: Offset(0, 5),
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      showNumberPicker((selectedNumber) {
                        setState(() {
                          _selectedOptionlow =
                              selectedNumber; // Update the selected number
                        });
                      });
                    },
                    icon: SvgPicture.asset(
                      "assets/images/arrow_down.svg",
                      width: 10,
                      height: 10,
                      color: const Color.fromRGBO(
                        48,
                        48,
                        48,
                        1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Text(
                      _selectedOptionlow, // Display selected number
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
    );
  }

  Widget koletabagheh2(BuildContext context) {
    return Container(
      height: 50,
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
              width: 264,
              height: 35,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x11000000),
                    blurRadius: 7,
                    offset: Offset(0, 5),
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      showNumberPicker((selectedNumber) {
                        setState(() {
                          _selectedOptionMax =
                              selectedNumber; // Update the selected number
                        });
                      });
                    },
                    icon: SvgPicture.asset(
                      "assets/images/arrow_down.svg",
                      width: 10,
                      height: 10,
                      color: const Color.fromRGBO(
                        48,
                        48,
                        48,
                        1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Text(
                      _selectedOptionMax, // Display selected number
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
    );
  }
}
