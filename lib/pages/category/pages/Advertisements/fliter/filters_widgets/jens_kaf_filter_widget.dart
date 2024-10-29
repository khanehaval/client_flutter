import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/jenskaf.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class JensKafFilterWidget extends StatelessWidget {
  JensKafFilterWidget({super.key});
  final _show_item_jensKaf_1 = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
          height: _show_item_jensKaf_1.isTrue ? 130 : 50,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                icon: _show_item_jensKaf_1.value
                    ? SvgPicture.asset(
                        'assets/images/=.svg',
                      )
                    : SvgPicture.asset('assets/images/down.svg'),
                onPressed: () {
                  _show_item_jensKaf_1.value = !_show_item_jensKaf_1.value;
                },
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "جنس کف",
                  style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                ),
              ),
            ]),
            if (_show_item_jensKaf_1.isTrue)
              Column(
                children: [jenskaf(context)],
              ),
          ])),
    );
  }

  Widget jenskaf(BuildContext context) {
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
                    onPressed: () {},
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
                  const Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Text(
                      'انتخاب کنید',
                      style: TextStyle(
                          fontFamily: MAIN_FONT_FAMILY_LIGHT,
                          fontSize: 12,
                          color: Color.fromRGBO(166, 166, 166, 1)),
                    ),
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
