import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/otagh.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class TedadotaghFilterWidget extends StatelessWidget {
  TedadotaghFilterWidget({super.key});
  final _show_item_otagh = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: _show_item_otagh.isTrue ? 130 : 50,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(250, 250, 250, 1),
            border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                icon: _show_item_otagh.value
                    ? SvgPicture.asset(
                        'assets/images/=.svg',
                      )
                    : SvgPicture.asset('assets/images/down.svg'),
                onPressed: () {
                  _show_item_otagh.value = !_show_item_otagh.value;
                },
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "تعداد اتاق",
                  style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                ),
              ),
            ]),
            otagh(context)
          ],
        ),
      ),
    );
  }

  Obx otagh(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Obx(() => _show_item_otagh.value
        ? Column(
            children: [
              Container(
                height: 41,
                width: MediaQuery.of(context).size.width / 1.23,
                child: TextField(
                    controller: controller,
                    readOnly: true,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                        hintText: 'انتخاب کنید',
                        hintStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: MAIN_FONT_FAMILY),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: IconButton(
                          onPressed: () {
                            showNumberPicker((_) {
                              controller.text = _;
                            });
                          },
                          icon: SvgPicture.asset(
                            "assets/images/arrow_down.svg",
                            width: 10,
                            height: 10,
                          ),
                        ))),
              ),
            ],
          )
        : const SizedBox.shrink());
  }
}
