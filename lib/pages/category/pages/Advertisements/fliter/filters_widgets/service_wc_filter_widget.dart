import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/wc.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ServiceWcFilterWidget extends StatelessWidget {
  ServiceWcFilterWidget({super.key});
  final _show_item_wc_1 = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
          height: _show_item_wc_1.isTrue ? 130 : 50,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                icon: _show_item_wc_1.value
                    ? SvgPicture.asset(
                        'assets/images/=.svg',
                      )
                    : SvgPicture.asset('assets/images/down.svg'),
                onPressed: () {
                  _show_item_wc_1.value = !_show_item_wc_1.value;
                },
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "سرویس بهداشتی",
                  style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                ),
              ),
            ]),
            if (_show_item_wc_1.isTrue)
              Column(
                children: [wc(context)],
              ),
          ])),
    );
  }

  Widget wc(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 41,
          width: MediaQuery.of(context).size.width / 1.23,
          child: TextField(
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
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/images/left.svg",
                      width: 15,
                      height: 15,
                    ),
                  ))),
        ),
      ],
    );
  }
}
