import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvInfoModel.dart';
import 'package:flutter_application_1/pages/category/models/FacilitiesModel.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/date.dart';
import 'package:flutter_application_1/pages/category/shared/facilities_selector.dart';
import 'package:flutter_application_1/pages/category/shared/images_picker/images_picker.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/sanad.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/twoItemInRow.dart';
import 'package:flutter_application_1/pages/category/shared/widget/route_widget.dart';
import 'package:flutter_application_1/pages/category/shared/widget/switachable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../shared/adv_info/advInfo.dart';
import '../../../../shared/more_emkanat/jahat_sakhteman.dart';
import '../../../../shared/widget/text_field.dart';

class KolangiAdvPage extends StatelessWidget {
  final aghsatType = "".obs;
  final onvan = "".obs;

  final hasAnbari = false.obs;
  final hasAsansor = false.obs;
  final _allPriceTextController = TextEditingController();
  final _metragTextController = TextEditingController();
  final _selectedImagesPath = [].obs;
  final _onePrice = 0.0.obs;
  final _advInfo = AdvInfoModel();
  final _facilities = <FacilitiesModel>[].obs;

  final _buildDirectionController = TextEditingController();
  final _buildUnitOfAnyFloorCountController = TextEditingController();
  final _buildFloorsCountController = TextEditingController();
  final _timeOfInstallmentsController = TextEditingController();
  final _buildDateController = TextEditingController();
  final _buildRoomsCountController = TextEditingController();
  final _buildDocumentController = TextEditingController();
  final _buildFloorController = TextEditingController();
  final _buildAllFloorsCountController = TextEditingController();
  final _reBuildController = TextEditingController();
  final _countOfInstallmentsController = TextEditingController();
  final _buildMaxCapacityController = TextEditingController();
  final _buildRiteController = TextEditingController();
  final _buildAnimalController = TextEditingController();
  final _buildSmokingController = TextEditingController();
  final _buildShoesController = TextEditingController();
  final _buildDeprivationController = TextEditingController();
  final _buildSleepServiceCountController = TextEditingController();
  final _oneBedCountController = TextEditingController();
  final _twoBedCountController = TextEditingController();
  final _floorMaterialController = TextEditingController();
  final _cabinetController = TextEditingController();
  final _coldTypeController = TextEditingController();
  final _heatTypeController = TextEditingController();
  final _heatWaterController = TextEditingController();
  final _wcController = TextEditingController();
  final _numberOfInstallmentsController = TextEditingController();

  KolangiAdvPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildaAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(children: [
              route([
                "ثبت آگهی اکونومی",
                "فروش مسکونی",
                "خرید و فروش خانه کلنگی"
              ]),
              const SizedBox(
                height: 30,
              ),
              TwoItemInRow(
                label1: "قیمت هر متر مربع (تومان)",
                label2: "قیمت کل (تومان)",
                widget1: Obx(
                  () => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 1, //
                          color: Theme.of(context)
                              .hintColor //  <--- border width here
                          ),
                    ),
                    height: 41,
                    width: getPageWidth_2(context),
                    child: Center(
                      child: Text(_onePrice.string),
                    ),
                  ),
                ),
                widget2: SizedBox(
                  height: 41,
                  width: getPageWidth_2(context),
                  child: TextField(
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.number,
                    controller: _allPriceTextController,
                    onChanged: (_) {
                      _onePrice.value = _.isNotEmpty
                          ? int.parse(_) / int.parse(_metragTextController.text)
                          : 0;
                    },
                    decoration: InputDecoration(
                      hintText: "0",
                      hintStyle: const TextStyle(
                        color: Color(0xFFA6A6A6),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  ":قیمت به حروف ",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: MAIN_FONT_FAMILY,
                      color: Color.fromRGBO(166, 166, 166, 1)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                endIndent: 20,
                indent: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "*",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(156, 64, 64, 1),
                        fontFamily: MAIN_FONT_FAMILY),
                  ),
                  Text(
                    " متراژ زمین",
                    style: TextStyle(
                        color: Color.fromRGBO(166, 166, 166, 1),
                        fontFamily: MAIN_FONT_FAMILY),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  textAlign: TextAlign.right,
                  controller: _metragTextController,
                  keyboardType: TextInputType.number,
                  onChanged: (m) {
                    _onePrice.value = m.isNotEmpty
                        ? int.parse(_allPriceTextController.text) / int.parse(m)
                        : 0;
                  },
                  decoration: InputDecoration(
                    hintText: '120',
                    hintStyle: const TextStyle(
                      color: Color(0xFFA6A6A6),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TwoItemInRow(
                label1: "عرض زمین",
                label2: "طول زمین",
                widget1: SizedBox(
                  height: 41,
                  width: getPageWidth_2(context),
                  child: TextField(
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "0",
                      hintStyle: const TextStyle(
                        color: Color(0xFFA6A6A6),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                widget2: SizedBox(
                  height: 41,
                  width: getPageWidth_2(context),
                  child: TextField(
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "0",
                      hintStyle: const TextStyle(
                        color: Color(0xFFA6A6A6),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                endIndent: 20,
                indent: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              aghsatiForoshWidget(context),
              const Divider(
                endIndent: 20,
                indent: 20,
              ),
              melkByVamBanki(context),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                endIndent: 20,
                indent: 20,
              ),
              const Text(
                "سایر ویژگی ها",
                style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
              ),
              const SizedBox(
                height: 15,
              ),
              TwoItemInRow(
                  label1: "تعداد کل طبقات",
                  label2: "نوع سند",
                  widget1: ReadOnlyTextField(_buildFloorsCountController, () {
                    showNumberPicker((_) {
                      _buildFloorsCountController.text = _;
                    });
                  }, width: getPageWidth_2(context)),
                  widget2: ReadOnlyTextField(_buildDocumentController, () {
                    Sanad((_) {
                      _buildDocumentController.text = _;
                    });
                  }, width: getPageWidth_2(context))),
              const SizedBox(
                height: 15,
              ),
              TwoItemInRow(
                  label1: "تعداد کل واحد ها",
                  label2: "تعداد واحد در طبقه",
                  widget1: InputTextField(_buildAllFloorsCountController,
                      width: getPageWidth_2(context)),
                  widget2: ReadOnlyTextField(
                      _buildUnitOfAnyFloorCountController, () {
                    showNumberPicker((_) {
                      _buildUnitOfAnyFloorCountController.text = _;
                    });
                  }, width: getPageWidth_2(context))),
              const SizedBox(
                height: 15,
              ),
              TwoItemInRow(
                  label1: "بازسازی",
                  label2: "جهت ساختمان",
                  widget1: ReadOnlyTextField(_reBuildController, () {
                    //todo
                  }, width: getPageWidth_2(context)),
                  widget2: ReadOnlyTextField(_buildDirectionController, () {
                    jahatSakhteman((_) {
                      _buildDirectionController.text = _;
                    });
                  }, width: getPageWidth_2(context))),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                endIndent: 20,
                indent: 20,
              ),
              const Text(
                "امکانات",
                style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
              ),
              const SizedBox(
                height: 15,
              ),
              TwoItemInRow(
                label1: "نوع کابینت",
                label2: "جنس کف",
                widget1: ReadOnlyTextField(_floorMaterialController, () {
                  //todo
                }, width: getPageWidth_2(context)),
                widget2: ReadOnlyTextField(_cabinetController, () {
                  //todo
                }, width: getPageWidth_2(context)),
              ),
              const SizedBox(
                height: 15,
              ),
              TwoItemInRow(
                label1: "نوع سیستم گرمایش",
                label2: "نوع سیستم سرمایش",
                widget1: ReadOnlyTextField(_heatTypeController, () {
                  //todo
                }, width: getPageWidth_2(context)),
                widget2: ReadOnlyTextField(_coldTypeController, () {
                  //todo
                }, width: getPageWidth_2(context)),
              ),
              const SizedBox(
                height: 15,
              ),
              TwoItemInRow(
                  label1: "سرویس بهداشتی",
                  label2: "تامین کننده آب گرم",
                  widget1: ReadOnlyTextField(_wcController, () {
                    //todo
                  }, width: getPageWidth_2(context)),
                  widget2: ReadOnlyTextField(_heatWaterController, () {
                    //todo
                  }, width: getPageWidth_2(context))),
              const SizedBox(
                height: 20,
              ),
              FacilitiesSelectorWidget(
                selectable: [Teras(), MasterRoom(), CenterAntenna(), Labi()],
                selected: _facilities,
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                endIndent: 20,
                indent: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              ImagesPicker(
                selectedImagesPath: _selectedImagesPath,
              ),
              const Divider(),
              AdvInfo(_advInfo)
            ]),
          ),
        ));
  }

  Widget melkByVamBanki(BuildContext context) {
    final isSwitched = true.obs;
    return Column(
      children: [
        switchable(isSwitched, "خانه کلنگی"),
        const SizedBox(
          height: 10,
        ),
        Obx(() => isSwitched.isTrue
            ? Column(
                children: [
                  TwoItemInRow(
                    label1: "سن بنا ",
                    label2: "متراژ بنا ",
                    widget1: SizedBox(
                      height: 41,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'تایپ کنید', //todo
                          hintStyle: const TextStyle(
                              color: Color(0xFFA6A6A6), fontSize: 13),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    widget2: SizedBox(
                      height: 41,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'تایپ کنید', //todo
                          hintStyle: const TextStyle(
                              color: Color(0xFFA6A6A6), fontSize: 13),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "تعداد اتاق ",
                      style: TextStyle(
                          color: Color.fromRGBO(99, 99, 99, 1),
                          fontFamily: MAIN_FONT_FAMILY),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  ReadOnlyTextField(_buildRoomsCountController, () {
                    showNumberPicker((_) {
                      _buildRoomsCountController.text = _;
                    });
                  }),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              )
            : const SizedBox.shrink()),
      ],
    );
  }

  double getPageWidth_2(BuildContext context) =>
      MediaQuery.of(context).size.width * 0.4;

  Widget aghsatiForoshWidget(BuildContext context) {
    final isSwitched = true.obs;
    return Column(
      children: [
        switchable(isSwitched, "عنوان پیشنهادی خانه اول"),
        Obx(() => isSwitched.isTrue
            ? Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "در صورت وارد نکردن آیتم ها، آگهی فقط با عنوان اقساطی منتشر میگردد",
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 9.6),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TwoItemInRow(
                    label1: "مبلغ قسط (تومان)",
                    label2: "پیش پرداخت (تومان)",
                    widget1: SizedBox(
                      height: 41,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: ' را وارد کنید', //todo
                          hintStyle: const TextStyle(
                              color: Color(0xFFA6A6A6), fontSize: 13),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    widget2: SizedBox(
                      height: 41,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'مبلغ را وارد کنید', //todo
                          hintStyle: const TextStyle(
                              color: Color(0xFFA6A6A6), fontSize: 13),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  TwoItemInRow(
                      label1: "زمان دریافت اقساط",
                      label2: "تعداد اقساط",
                      widget1:
                          ReadOnlyTextField(_timeOfInstallmentsController, () {
                        persianDataPicker((date) {
                          _timeOfInstallmentsController.text = date;
                        });
                      }, width: MediaQuery.of(context).size.width * 0.4),
                      widget2:
                          ReadOnlyTextField(_countOfInstallmentsController, () {
                        showNumberPicker((_) {
                          _countOfInstallmentsController.text = _;
                        });
                      }, width: MediaQuery.of(context).size.width * 0.4)),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "قیمت نهایی ملک (پیش پرداخت + اقساط ) : 13.200.000.000 تومان",
                    style: TextStyle(
                      fontFamily: MAIN_FONT_FAMILY,
                      fontSize: 9.5,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              )
            : const SizedBox.shrink()),
      ],
    );
  }
}
