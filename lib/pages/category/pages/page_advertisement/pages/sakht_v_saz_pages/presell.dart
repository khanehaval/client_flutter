import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvInfoModel.dart';
import 'package:flutter_application_1/pages/category/models/FacilitiesModel.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/ejara_adv_pages/ejara_vila_page.dart';
import 'package:flutter_application_1/pages/category/shared/adv_info/advInfo.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/date.dart';
import 'package:flutter_application_1/pages/category/shared/facilities_selector.dart';
import 'package:flutter_application_1/pages/category/shared/images_picker/images_picker.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/jahat_sakhteman.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/sanad.dart';
import 'package:flutter_application_1/pages/category/shared/namayesh.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/switchItem.dart';
import 'package:flutter_application_1/pages/category/shared/twoItemInRow.dart';
import 'package:flutter_application_1/pages/category/shared/widget/submit_row.dart';
import 'package:flutter_application_1/pages/category/shared/widget/text_field.dart';
import 'package:flutter_application_1/pages/category/shared/widget/route_widget.dart';
import 'package:flutter_application_1/pages/category/shared/widget/switachable.dart';

import 'package:get/get.dart';

class Presell extends StatefulWidget {
  @override
  State<Presell> createState() => _PresellState();
}

class _PresellState extends State<Presell> {
  final aghsatType = "".obs;

  final onvan = "".obs;

  final _selectedImagesPath = [].obs;

  final _facilities = <FacilitiesModel>[].obs;

  final _hasAnbari = false.obs;

  final _hasAsansor = false.obs;

  final _hasParking = false.obs;

  final _advInfo = AdvInfoModel();

  final _onePrice = 0.0.obs;

  final _countOfInstallmentsController = TextEditingController();

  final _buildUnitOfAnyFloorCountController = TextEditingController();

  final submit = false.obs;

  final _buildDirectionController = TextEditingController();

  final _timeToReceiveInstallmentsController = TextEditingController();

  final _buildFloorsCountController = TextEditingController();

  final _numberOfInstallmentsController = TextEditingController();

  final _buildRoomsCountController = TextEditingController();

  final _buildDocumentController = TextEditingController();

  final _buildFloorController = TextEditingController();

  final _allPriceTextController = TextEditingController();

  final _metragTextController = TextEditingController();

  final _countController = TextEditingController();

  final _buildStepController = TextEditingController();

  final _progressController = TextEditingController();

  final _timeController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _allPriceTextController.addListener(_checkFields);
  }

  void _checkFields() {
    if (_allPriceTextController.text.isNotEmpty) {
      submit.value = true;
    } else {
      submit.value = false;
    }
  }

  @override
  void dispose() {
    _allPriceTextController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildaAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(children: [
            route(["پیش فروش", "ساخت وساز", "ثبت آگهی اکونومی"]),
            const SizedBox(
              height: 30,
            ),
            TwoItemInRow1(
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
                  width: getPageWidth(),
                  child: Center(
                    child: Text(_onePrice.string),
                  ),
                ),
              ),
              widget2: SizedBox(
                height: 41,
                width: getPageWidth(),
                child: TextField(
                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.number,
                  controller: _allPriceTextController,
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
            aghsatiForoshWidget(context),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            melkByVamBanki(context),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            zamin(context),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            _aparteman(context),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            _vila(context),
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
            _edari(context),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 25,
            ),
            const Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "نوع سند",
                style: TextStyle(
                    color: Color.fromRGBO(99, 99, 99, 1),
                    fontFamily: MAIN_FONT_FAMILY),
                textAlign: TextAlign.start,
              ),
            ),
            ReadOnlyTextField(_buildDocumentController, () {
              Sanad((_) {
                _buildDocumentController.text = _;
              });
            }, width: getPageWidth1()),
            const SizedBox(
              height: 20,
            ),
            TwoItemInRow(
                label1: "تعداد تیپ ",
                label2: "مرحله ساخت ",
                widget1: Container(
                  height: 41,
                  width: getPageWidth(),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'تایپ کنید',
                      hintStyle: const TextStyle(
                          color: Color(0xFFA6A6A6), fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                widget2: ReadOnlyTextField(_buildStepController, () {},
                    width: getPageWidth())),
            const SizedBox(
              height: 15,
            ),
            TwoItemInRow(
              label1: "میزان پیشرفت فیزیکی",
              label2: "زمان تحویل ",
              widget1: ReadOnlyTextField(_progressController, () {},
                  width: getPageWidth()),
              widget2: ReadOnlyTextField(_timeController, () {},
                  width: getPageWidth()),
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
            FacilitiesSelectorWidget(
              selectable: [
                Teras(),
                MasterRoom(),
                CenterAntenna(),
                Labi(),
                Sona(),
                SwimmingPool(),
                RoofGarden(),
                Bathtub(),
                Gym(),
                AlAchiq(),
                ConferenceHall(),
                GameRoom(),
              ],
              selected: _facilities,
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            ImagesPicker(selectedImagesPath: _selectedImagesPath),
            const Divider(),
            const SizedBox(
              height: 15,
            ),
            AdvInfo(_advInfo),
            const SizedBox(
              height: 30,
            ),
            SubmitRow(submit: submit, nextPage: NamayeshAgahi())
          ]),
        ),
      ),
    );
  }

  Widget onvanWidget(BuildContext context) {
    final isSwitched = true.obs;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "فروش به صورت اقساطی",
              style: TextStyle(
                  fontFamily: MAIN_FONT_FAMILY,
                  fontSize: 14,
                  color: Color.fromRGBO(99, 99, 99, 1)),
            ),
            Transform.scale(
              scale: 0.80,
              child: Obx(
                () => Switch(
                    onChanged: (_) => isSwitched.value = _,
                    value: isSwitched.value,
                    activeColor: Colors.white,
                    activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                    inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                    inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1)),
              ),
            ),
          ],
        ),
        Obx(() => isSwitched.isTrue
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 41,
                    width: MediaQuery.of(context).size.width * 1 / 1.117,
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'آپارتمان 120 متری به صورت اقساطی',
                        hintStyle: const TextStyle(
                            color: Color(0xFFA6A6A6),
                            fontFamily: MAIN_FONT_FAMILY,
                            fontSize: 13),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : const SizedBox.shrink()),
      ],
    );
  }

  Widget aghsatiForoshWidget(BuildContext context) {
    final isSwitched = true.obs;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "فروش به صورت اقساطی",
              style: TextStyle(
                  fontFamily: MAIN_FONT_FAMILY,
                  fontSize: 12,
                  color: Color.fromRGBO(99, 99, 99, 1)),
            ),
            Transform.scale(
              scale: 0.80,
              child: Obx(
                () => Switch(
                    onChanged: (_) => isSwitched.value = _,
                    value: isSwitched.value,
                    activeColor: Colors.white,
                    activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                    inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                    inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1)),
              ),
            ),
          ],
        ),
        Obx(() => isSwitched.isTrue
            ? Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "در صورت وارد نکردن آیتم ها، آگهی فقط با عنوان اقساطی منتشر میگردد",
                    style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 9),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TwoItemInRow(
                    label1: "مبلغ قسط (تومان)",
                    label2: "پیش پرداخت (تومان)",
                    widget1: SizedBox(
                      height: 41,
                      width: getPageWidth(),
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
                    widget2: SizedBox(
                      height: 41,
                      width: getPageWidth(),
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
                  //numberOfInstallments
                  TwoItemInRow(
                      label1: "زمان دریافت اقساط",
                      label2: "تعداد اقساط",
                      widget1: ReadOnlyTextField(
                          _timeToReceiveInstallmentsController, () {
                        persianDataPicker((date) {
                          _timeToReceiveInstallmentsController.text = date;
                        });
                      }, width: getPageWidth(), fontSize: 13),
                      widget2: ReadOnlyTextField(
                          _numberOfInstallmentsController, () {
                        showNumberPicker((_) {
                          _numberOfInstallmentsController.text = _;
                        });
                      }, width: getPageWidth(), fontSize: 13)),
                  const SizedBox(
                    width: 30,
                    height: 10,
                  ),
                  SwitchItems(
                      onSelected: (_) {}, items: const ["ضامن", "سفته", "چک"]),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "قیمت نهایی ملک (پیش پرداخت + اقساط ) : 13.200.000.000 تومان",
                    style: TextStyle(
                      fontFamily: MAIN_FONT_FAMILY,
                      fontSize: 9,
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

  Widget melkByVamBanki(BuildContext context) {
    final isSwitched = true.obs;
    return Column(
      children: [
        switchable(isSwitched, "ملک با وام بانکی"),
        const SizedBox(
          height: 10,
        ),
        Obx(() => isSwitched.isTrue
            ? Column(
                children: [
                  const Text(
                    "در صورت وارد نکردن آیتم ها، آگهی فقط با عنوان دارای وام منتشر میگردد",
                    style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY,
                        fontSize: 9,
                        overflow: TextOverflow.clip),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TwoItemInRow(
                    label1: "مبلغ اقساط",
                    label2: "میزان وام (تومان)",
                    widget1: SizedBox(
                      height: 41,
                      width: getPageWidth(),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: '3,6000000', //todo
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
                      width: getPageWidth(),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: '400000000', //todo
                          hintStyle: const TextStyle(
                              color: Color(0xFFA6A6A6), fontSize: 13),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "تعداد اقساط (هر ماه)  ",
                      style: TextStyle(
                          color: Color.fromRGBO(166, 166, 166, 1),
                          fontSize: 13,
                          fontFamily: MAIN_FONT_FAMILY),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  ReadOnlyTextField(_countController, () {
                    showNumberPicker((_) {
                      _countController.text = _;
                    });
                  }),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              )
            : const SizedBox.shrink()),
      ],
    );
  }

  Widget zamin(BuildContext context) {
    final isSwitched = true.obs;
    return Column(
      children: [
        switchable(isSwitched, "زمین"),
        Obx(() => isSwitched.isTrue
            ? Column(
                children: [
                  const SizedBox(height: 25),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "متراژ زمین  ",
                      style: TextStyle(
                          color: Color.fromRGBO(166, 166, 166, 1),
                          fontSize: 13,
                          fontFamily: MAIN_FONT_FAMILY),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(
                    height: 41,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: '120',
                        hintStyle: const TextStyle(
                            color: Color(0xFFA6A6A6), fontSize: 13),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  TwoItemInRow(
                    label1: "مبلغ اقساط",
                    label2: "میزان وام (تومان)",
                    widget1: SizedBox(
                      height: 41,
                      width: getPageWidth(),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: '3,6000000', //todo
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
                      width: getPageWidth(),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: '400000000', //todo
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
                    height: 30,
                  ),
                ],
              )
            : const SizedBox.shrink()),
      ],
    );
  }

  Widget _aparteman(BuildContext context) {
    final isSwitched = true.obs;

    return Column(
      children: [
        switchable(isSwitched, "آپارتمان"),
        Obx(() => isSwitched.isTrue
            ? Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  TwoItemInRow2(
                      label1: "تعداد اتاق",
                      label2: "سن بنا ",
                      widget2: Container(
                        height: 41,
                        width: getPageWidth(),
                        child: TextField(
                          readOnly: true,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: 'تایپ کنید',
                            hintStyle: TextStyle(
                                color: Color(0xFFA6A6A6), fontSize: 13),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      widget1:
                          ReadOnlyTextField(_buildRoomsCountController, () {
                        showNumberPicker((_) {
                          _buildRoomsCountController.text = _;
                        });
                      }, width: getPageWidth())),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "تعداد اتاق",
                      style: TextStyle(
                          color: Color.fromRGBO(99, 99, 99, 1),
                          fontFamily: MAIN_FONT_FAMILY),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  ReadOnlyTextField(
                    _countOfInstallmentsController,
                    () {
                      showNumberPicker((_) {
                        _countOfInstallmentsController.text = _;
                      });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [_anbari(), _asansor(), _parking()],
                  ),
                  const SizedBox(width: 25),
                  const SizedBox(
                    height: 20,
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

  Widget _vila(BuildContext context) {
    final isSwitched = true.obs;

    return Column(
      children: [
        switchable(isSwitched, "ویلا"),
        Obx(() => isSwitched.isTrue
            ? Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  TwoItemInRow2(
                      label1: "تعداد اتاق ",
                      label2: "متراژ بنا ",
                      widget2: Container(
                        height: 41,
                        width: getPageWidth(),
                        child: TextField(
                          readOnly: true,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: 'تایپ کنید',
                            hintStyle: TextStyle(
                                color: Color(0xFFA6A6A6), fontSize: 13),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      widget1: ReadOnlyTextField(_buildFloorController, () {
                        showNumberPicker(
                            (p0) => _buildFloorController.text = p0);
                      }, width: getPageWidth())),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "طبقات ویلا ",
                      style: TextStyle(
                          color: Color.fromRGBO(99, 99, 99, 1),
                          fontFamily: MAIN_FONT_FAMILY),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  ReadOnlyTextField(_buildFloorsCountController, () {
                    showNumberPicker(
                        (p0) => _buildFloorsCountController.text = p0);
                  }, width: getPageWidth1()),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [_parking(), _anbari()],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              )
            : const SizedBox.shrink()),
      ],
    );
  }

  Widget _anbari() => switchable(_hasAnbari, "انباری");

  Widget _asansor() => switchable(_hasAsansor, "آسانسور");

  Widget _parking() => switchable(_hasParking, "پارکینگ");

  Widget _edari(BuildContext context) {
    final isSwitched = true.obs;

    return Column(
      children: [
        switchable(isSwitched, "تجاری و اداری"),
        Obx(() => isSwitched.isTrue
            ? Column(
                children: [
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "متراژ زمین  ",
                      style: TextStyle(
                          color: Color.fromRGBO(166, 166, 166, 1),
                          fontSize: 13,
                          fontFamily: MAIN_FONT_FAMILY),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(
                    height: 41,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: '120',
                        hintStyle: const TextStyle(
                            color: Color(0xFFA6A6A6), fontSize: 13),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TwoItemInRow2(
                      label1: "موقعیت",
                      label2: "طبقه ",
                      widget1: ReadOnlyTextField(_buildDirectionController, () {
                        jahatSakhteman(
                            (p0) => _buildDirectionController.text = p0);
                      }, width: getPageWidth()),
                      widget2: ReadOnlyTextField(
                          _buildUnitOfAnyFloorCountController, () {
                        showNumberPicker((_) {
                          _buildUnitOfAnyFloorCountController.text = _;
                        });
                      }, width: getPageWidth())),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [_anbari(), _asansor(), _parking()],
                  ),
                  const SizedBox(width: 25),
                  const SizedBox(
                    height: 20,
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

double getPageWidth1() => Get.width * 0.90;

scaffoldKey() => GlobalKey<ScaffoldState>();
