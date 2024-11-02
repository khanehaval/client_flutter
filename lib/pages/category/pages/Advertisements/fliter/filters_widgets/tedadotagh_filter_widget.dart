import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/otagh.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tedad_Otagh.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class TedadotaghFilterWidget extends StatelessWidget {
  TedadotaghFilterWidget({super.key});

  final _showItemOtagh = false.obs;
  final _selectedItemText =
      "انتخاب کنید".obs; // Observable for selected item text
  final _buildRoomsCountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: _showItemOtagh.isTrue ? 110 : 50,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(250, 250, 250, 1),
            border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: _showItemOtagh.value
                      ? SvgPicture.asset('assets/images/=.svg')
                      : SvgPicture.asset('assets/images/down.svg'),
                  onPressed: () {
                    _showItemOtagh.value = !_showItemOtagh.value;
                  },
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    "تعداد اتاق",
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                  ),
                ),
              ],
            ),
            otagh(context)
          ],
        ),
      ),
    );
  }

  Obx otagh(BuildContext context) {
    return Obx(() => _showItemOtagh.value
        ? Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Color.fromRGBO(183, 183, 183, 1),
                ),
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
                            TedadOtagh((selectedText) {
                              _selectedItemText.value =
                                  selectedText; // Update selected item
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
                            _selectedItemText
                                .value, // Display selected item text
                            style: const TextStyle(
                              fontFamily: MAIN_FONT_FAMILY_LIGHT,
                              fontSize: 12,
                              color: Color.fromRGBO(99, 99, 99, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        : const SizedBox.shrink());
  }
}
