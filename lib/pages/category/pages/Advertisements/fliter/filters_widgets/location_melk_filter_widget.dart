import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/component_filter/showLocationMelkBottomSheet.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/location_melk.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LocationMelkFilterWidget extends StatefulWidget {
  LocationMelkFilterWidget({super.key});

  @override
  State<LocationMelkFilterWidget> createState() =>
      _LocationMelkFilterWidgetState();
}

class _LocationMelkFilterWidgetState extends State<LocationMelkFilterWidget> {
  final _show_item_locationmelk = false.obs;

  final TextEditingController _customAmountController = TextEditingController();

  final TextEditingController _MaxAmountController = TextEditingController();

  bool _isFieldEnabled = false;

  final _show_item_mizanrahn = false.obs;

  final RxString _selectedMinAmount = 'انتخاب کنید'.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
          height: _show_item_locationmelk.isTrue ? 130 : 50,
          width: 370,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                icon: _show_item_locationmelk.value
                    ? SvgPicture.asset(
                        'assets/images/=.svg',
                      )
                    : SvgPicture.asset('assets/images/down.svg'),
                onPressed: () {
                  _show_item_locationmelk.value =
                      !_show_item_locationmelk.value;
                },
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "موقعیت ملک",
                  style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                ),
              ),
            ]),
            if (_show_item_locationmelk.isTrue)
              Column(
                children: [Locationmelk(context)],
              ),
          ])),
    );
  }

  Widget Locationmelk(BuildContext context) {
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
                      showLocationMelkBottomSheet((selected) {
                        setState(() {
                          _selectedMinAmount.value =
                              selected; // به‌روزرسانی مقدار انتخاب‌شده
                          _isFieldEnabled = selected == 'وارد کردن مبلغ دلخواه';
                          _customAmountController.text =
                              _isFieldEnabled ? '' : selected;
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
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Obx(
                      () => Text(
                        _selectedMinAmount.value,
                        style: const TextStyle(
                          fontFamily: MAIN_FONT_FAMILY_LIGHT,
                          fontSize: 12,
                          color: Color.fromRGBO(99, 99, 99, 1),
                        ),
                      ),
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
