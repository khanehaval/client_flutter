import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/tabageh_vila.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class TedadTabaghVilaFilterWidget extends StatelessWidget {
  TedadTabaghVilaFilterWidget({super.key});
  final _show_item_tabaghehvila = false.obs;
  final RxString _selectedTabaghe =
      "انتخاب کنید".obs; // متغیر برای گزینه انتخاب شده

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
          height: _show_item_tabaghehvila.isTrue ? 130 : 50,
          width: 370,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                icon: _show_item_tabaghehvila.value
                    ? SvgPicture.asset(
                        'assets/images/=.svg',
                      )
                    : SvgPicture.asset('assets/images/down.svg'),
                onPressed: () {
                  _show_item_tabaghehvila.value =
                      !_show_item_tabaghehvila.value;
                },
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "تعداد طبقات ویلا",
                  style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                ),
              ),
            ]),
            if (_show_item_tabaghehvila.isTrue)
              Column(
                children: [tabaghehvila(context)],
              ),
          ])),
    );
  }

  Widget tabaghehvila(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: Color.fromRGBO(183, 183, 183, 1)),
          child: Padding(
            padding: const EdgeInsets.all(1.1),
            child: Container(
              width: 315,
              height: 35,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      showNumberPicker((selectedNumber) {
                        _selectedTabaghe.value =
                            selectedNumber; // به‌روزرسانی گزینه انتخاب شده
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
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Obx(() => Text(
                          _selectedTabaghe.value, // نمایش گزینه‌ی انتخاب‌شده
                          style: const TextStyle(
                              fontFamily: MAIN_FONT_FAMILY_LIGHT,
                              fontSize: 12,
                              color: Color.fromRGBO(99, 99, 99, 1)),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
