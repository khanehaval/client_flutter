import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/component_filter/show_qematKol_low_BottomSheet.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/component_filter/show_qematKol_max_BottomSheet.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/qemat_kol.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class QematKoleFilterWidget extends StatefulWidget {
  QematKoleFilterWidget({super.key});

  @override
  State<QematKoleFilterWidget> createState() => _QematKoleFilterWidgetState();
}

class _QematKoleFilterWidgetState extends State<QematKoleFilterWidget> {
  final _showItemQematKol = false.obs;
  final TextEditingController _customAmountController = TextEditingController();
  final TextEditingController _maxAmountController = TextEditingController();

  bool _isFieldEnabled = false;
  final RxString selectedMinAmount = 'انتخاب کنید'.obs;
  final RxString selectedMaxAmount = 'انتخاب کنید'.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
          height: _showItemQematKol.isTrue ? 230 : 50,
          width: 370,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                icon: _showItemQematKol.value
                    ? SvgPicture.asset('assets/images/=.svg')
                    : SvgPicture.asset('assets/images/down.svg'),
                onPressed: () {
                  _showItemQematKol.value = !_showItemQematKol.value;
                },
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "قیمت کل",
                  style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                ),
              ),
            ]),
            if (_showItemQematKol.isTrue)
              Column(
                children: [
                  qematKol(context),
                  const SizedBox(height: 20),
                  qematKol2(context),
                ],
              ),
          ])),
    );
  }

  Widget qematKol(BuildContext context) {
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
                    color: const Color.fromRGBO(183, 183, 183, 1)),
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
                            showQematKolLowBottomSheet((selected) {
                              setState(() {
                                selectedMinAmount.value = selected;
                                _isFieldEnabled =
                                    selected == 'وارد کردن مبلغ دلخواه';
                                _customAmountController.text =
                                    _isFieldEnabled ? '' : selected;
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
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Text(
                            selectedMinAmount.value,
                            style: const TextStyle(
                                fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                fontSize: 12,
                                color: Color.fromRGBO(99, 99, 99, 1)),
                          ),
                        ),
                      ],
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

  Widget qematKol2(BuildContext context) {
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
                    color: const Color.fromRGBO(183, 183, 183, 1)),
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
                            showQematKolMaxBottomSheet((selected) {
                              setState(() {
                                selectedMaxAmount.value = selected;
                                _maxAmountController.text = selected;
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
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Text(
                            selectedMaxAmount.value,
                            style: const TextStyle(
                                fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                fontSize: 12,
                                color: Color.fromRGBO(99, 99, 99, 1)),
                          ),
                        ),
                      ],
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
