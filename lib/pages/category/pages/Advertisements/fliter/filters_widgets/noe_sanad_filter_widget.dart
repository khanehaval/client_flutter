import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/component_filter/showWidget_Noe_sanad.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class NoeSanadFilterWidget extends StatefulWidget {
  NoeSanadFilterWidget({super.key});

  @override
  State<NoeSanadFilterWidget> createState() => _NoeSanadFilterWidgetState();
}

class _NoeSanadFilterWidgetState extends State<NoeSanadFilterWidget> {
  final _show_item_noesanad_1 = false.obs;
  final TextEditingController _customAmountController = TextEditingController();

  bool _isFieldEnabled = false;
  final RxString _selectedMinAmount = 'انتخاب کنید'.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          height: _show_item_noesanad_1.isTrue ? 130 : 50,
          width: 370,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                icon: _show_item_noesanad_1.value
                    ? SvgPicture.asset('assets/images/=.svg')
                    : SvgPicture.asset('assets/images/down.svg'),
                onPressed: () {
                  _show_item_noesanad_1.value = !_show_item_noesanad_1.value;
                },
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "نوع سند",
                  style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                ),
              ),
            ]),
            if (_show_item_noesanad_1.isTrue)
              Column(
                children: [NoeSanad(context)],
              ),
          ]),
        ));
  }

  Widget NoeSanad(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 41,
          width: MediaQuery.of(context).size.width / 1.23,
          child: TextField(
              controller: _customAmountController,
              readOnly: !_isFieldEnabled,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                  hintText: _selectedMinAmount.value, // نمایش مقدار انتخاب شده
                  hintStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: MAIN_FONT_FAMILY),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: IconButton(
                    onPressed: () {
                      showWidgetNoeSanadBottomSheet((selectedAmount) {
                        setState(() {
                          if (selectedAmount == 'وارد کردن مبلغ دلخواه') {
                            _isFieldEnabled = true;
                            _customAmountController.text = '';
                          } else {
                            _isFieldEnabled = false;
                            _customAmountController.text = selectedAmount;
                          }
                          _selectedMinAmount.value =
                              selectedAmount; // به‌روزرسانی مقدار
                        });
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
    );
  }
}
