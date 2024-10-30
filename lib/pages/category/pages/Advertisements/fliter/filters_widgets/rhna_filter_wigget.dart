import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/component_filter/showMizanRahnLowBottomSheet.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/component_filter/showMizanRahnMaxBottomSheet.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class RahnFilterWidget extends StatefulWidget {
  @override
  State<RahnFilterWidget> createState() => _RahnFilterWidgetState();
}

class _RahnFilterWidgetState extends State<RahnFilterWidget> {
  final _buildRoomsCountController = TextEditingController();

  final TextEditingController _customAmountController = TextEditingController();
  final TextEditingController _MaxAmountController = TextEditingController();

  bool _isFieldEnabled = false;
  // وضعیت برای تعیین اینکه آیا فیلد فعال است یا خیر
  final _show_item_mizanrahn = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          height: _show_item_mizanrahn.isTrue ? 230 : 50,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                IconButton(
                  icon: _show_item_mizanrahn.value
                      ? SvgPicture.asset(
                          'assets/images/=.svg',
                        )
                      : SvgPicture.asset('assets/images/down.svg'),
                  onPressed: () {
                    _show_item_mizanrahn.value = !_show_item_mizanrahn.value;
                  },
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    "میزان رهن",
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                  ),
                ),
              ]),
              if (_show_item_mizanrahn.isTrue)
                Column(
                  children: [
                    rahn(context),
                    const SizedBox(
                      height: 25,
                    ),
                    rahn2(context),
                  ],
                ),
            ],
          ),
        ));
  }

  Widget rahn(BuildContext context) {
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
                width: 250,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        showMizanRahnLowBottomSheet((selectedAmount) {
                          setState(() {
                            if (selectedAmount == 'وارد کردن مبلغ دلخواه') {
                              _isFieldEnabled = true; // فعال کردن فیلد
                              _customAmountController.text =
                                  ''; // خالی کردن فیلد
                            } else {
                              _isFieldEnabled = false; // غیرفعال کردن فیلد
                              _customAmountController.text =
                                  selectedAmount; // تنظیم متن انتخابی
                            }
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
                    Expanded(
                      child: TextField(
                        style: const TextStyle(
                            fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                            color: Color.fromRGBO(99, 99, 99, 1),
                            fontSize: 12),
                        controller: _customAmountController,
                        enabled: _isFieldEnabled, // فعال بودن یا نبودن فیلد
                        textDirection: TextDirection.rtl,
                        decoration: const InputDecoration(
                          hintText: 'انتخاب کنید (به تومان)',
                          hintStyle: TextStyle(fontSize: 12),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 30.0),
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          // اگر مقدار وارد شده خالی است، فیلد را غیرفعال کن
                          if (value.isNotEmpty) {
                            setState(() {
                              _isFieldEnabled = false; // غیرفعال کردن فیلد
                            });
                          }
                        },
                      ),
                    ),
                  ],
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

  Widget rahn2(BuildContext context) {
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
                width: 250,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        showMizanRahnMaxBottomSheet((selectedAmount) {
                          setState(() {
                            if (selectedAmount == 'وارد کردن مبلغ دلخواه') {
                              _isFieldEnabled = true; // فعال کردن فیلد
                              _MaxAmountController.text = ''; // خالی کردن فیلد
                            } else {
                              _isFieldEnabled = false; // غیرفعال کردن فیلد
                              _MaxAmountController.text =
                                  selectedAmount; // تنظیم متن انتخابی
                            }
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
                    Expanded(
                      child: TextField(
                        style: const TextStyle(
                            fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                            color: Color.fromRGBO(99, 99, 99, 1),
                            fontSize: 12),
                        controller: _MaxAmountController,
                        enabled: _isFieldEnabled, // فعال بودن یا نبودن فیلد
                        textDirection: TextDirection.rtl,
                        decoration: const InputDecoration(
                          hintText: 'انتخاب کنید (به تومان)',
                          hintStyle: TextStyle(fontSize: 12),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 30.0),
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          // اگر مقدار وارد شده خالی است، فیلد را غیرفعال کن
                          if (value.isNotEmpty) {
                            setState(() {
                              _isFieldEnabled = false; // غیرفعال کردن فیلد
                            });
                          }
                        },
                      ),
                    ),
                  ],
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
}
