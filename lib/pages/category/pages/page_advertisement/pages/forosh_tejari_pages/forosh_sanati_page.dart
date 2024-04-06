import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvInfoModel.dart';
import 'package:flutter_application_1/pages/category/models/FacilitiesModel.dart';
import 'package:flutter_application_1/pages/category/shared/adv_info/advInfo.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/date.dart';
import 'package:flutter_application_1/pages/category/shared/facilities_selector.dart';
import 'package:flutter_application_1/pages/category/shared/images_picker/images_picker.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/sanad.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';

import 'package:flutter_application_1/pages/category/shared/twoItemInRow.dart';
import 'package:flutter_application_1/pages/category/shared/widget/text_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ForoshSanatiPage extends StatelessWidget {
  final aghsatType = "".obs;
  final onvan = "".obs;
  final _facilities = <FacilitiesModel>[].obs;

  final hasAnbari = false.obs;
  final hasAsansor = false.obs;
  final hasParking = false.obs;
  final hasSanad = true.obs;
  int selectedIndex = 0;

  final _onePrice = 0.0.obs;
  final _allPriceTextController = TextEditingController();
  final _metragTextController = TextEditingController();
  final _selectedImagesPath = [].obs;

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

  final _advInfo = AdvInfoModel();

  ForoshSanatiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildaAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "خرید و فروش دفاتر صنعتی",
                    style: TextStyle(
                      fontSize: 9.5,
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
                  ),
                  Icon(
                    Icons.arrow_back,
                    color: Colors.green,
                    size: 15,
                  ),
                  Text(
                    "فروش مسکونی",
                    style: TextStyle(
                      fontSize: 9.5,
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
                  ),
                  Icon(
                    Icons.arrow_back,
                    color: Colors.green,
                    size: 15,
                  ),
                  Text(
                    "  ثبت آگهی اکونومی",
                    style: TextStyle(
                      fontSize: 9.5,
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
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
              TwoItemInRow(
                  label1: "نوع سند ",
                  label2: "متراژ زمین ",
                  widget2: SizedBox(
                    height: 41,
                    width: getPageWidth(),
                    child: TextField(
                      readOnly: true,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                          hintText: 'انتخاب نشده',
                          hintStyle: const TextStyle(
                              color: Color(0xFFA6A6A6), fontSize: 13),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: IconButton(
                            icon:
                                SvgPicture.asset("assets/images/Vector-20.svg"),
                            onPressed: () {
                              // _show_item_1.value = !_show_item_1.isTrue;
                            },
                          )),
                    ),
                  ),
                  widget1: ReadOnlyTextField(_buildDocumentController, () {
                    Sanad((_) {
                      _buildDocumentController.text = _;
                    });
                  }, width: getPageWidth())),
              const SizedBox(
                height: 20,
              ),
              TwoItemInRow(
                label1: "عرض زمین",
                label2: "طول زمین",
                widget1: SizedBox(
                  height: 41,
                  width: getPageWidth(),
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
                  width: getPageWidth(),
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
              const SizedBox(
                height: 20,
              ),
              const Text(
                "امکانات",
                style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
              ),
              const SizedBox(
                height: 15,
              ),
              TwoItemInRow(
                label1: "جنس دیواره",
                label2: "جنس کف",
                widget1: Container(
                  height: 41,
                  width: getPageWidth(),
                  child: TextField(
                    readOnly: true,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                        hintText: 'انتخاب نشده',
                        hintStyle: const TextStyle(
                            color: Color(0xFFA6A6A6), fontSize: 13),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: IconButton(
                          icon: SvgPicture.asset("assets/images/Vector-20.svg"),
                          onPressed: () {
                            // _show_item_1.value = !_show_item_1.isTrue;
                          },
                        )),
                  ),
                ),
                widget2: Container(
                  height: 41,
                  width: getPageWidth(),
                  child: TextField(
                    readOnly: true,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'انتخاب نشده',
                      hintStyle: const TextStyle(
                          color: Color(0xFFA6A6A6), fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: SvgPicture.asset("assets/images/Vector-20.svg"),
                        onPressed: () {
                          // _show_item_1.value = !_show_item_1.isTrue;
                        },
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TwoItemInRow(
                label1: "نوع سیستم گرمایش",
                label2: "نوع سیستم سرمایش",
                widget1: Container(
                  height: 41,
                  width: getPageWidth(),
                  child: TextField(
                    readOnly: true,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'انتخاب نشده',
                      hintStyle: const TextStyle(
                          color: Color(0xFFA6A6A6), fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: SvgPicture.asset("assets/images/Vector-20.svg"),
                        onPressed: () {
                          // _show_item_1.value = !_show_item_1.isTrue;
                        },
                      ),
                    ),
                  ),
                ),
                widget2: Container(
                  height: 41,
                  width: getPageWidth(),
                  child: TextField(
                    readOnly: true,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'انتخاب نشده',
                      hintStyle: const TextStyle(
                          color: Color(0xFFA6A6A6), fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: SvgPicture.asset("assets/images/Vector-20.svg"),
                        onPressed: () {
                          // _show_item_1.value = !_show_item_1.isTrue;
                        },
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: const Text(
                      "تامین کننده آب گرم",
                      style: TextStyle(
                          color: Color.fromRGBO(99, 99, 99, 1),
                          fontFamily: MAIN_FONT_FAMILY),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              Container(
                height: 41,
                width: 372,
                child: TextField(
                  readOnly: true,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'انتخاب نشده',
                    hintStyle:
                        const TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: IconButton(
                      icon: SvgPicture.asset("assets/images/Vector-20.svg"),
                      onPressed: () {
                        // _show_item_1.value = !_show_item_1.isTrue;
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 20,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 41,
                    width: MediaQuery.of(context).size.width * 1 / 1.117,
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'تایپ کنید',
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

  double getPageWidth_2(BuildContext context) =>
      getPageWidth();
  Widget onvanWidget(BuildContext context) {
    final isSwitched = true.obs;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "عنوان پیشنهادی خانه اول",
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
                            fontSize: 16),
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
    final hasAnbari = false.obs;
    final hasAsansor = false.obs;

    final _onePrice = 0.0.obs;
    final _allPriceTextController = TextEditingController();
    final _metragTextController = TextEditingController();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "سوله و کارگاه",
              style: TextStyle(
                  fontFamily: MAIN_FONT_FAMILY,
                  fontSize: 13,
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
                  TwoItemInRow(
                    label1: "سن بنا ",
                    label2: "متراژ ",
                    widget1: SizedBox(
                      height: 41,
                      width: getPageWidth(),
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
                  TwoItemInRow(
                      label1: "تعداد اتاق ",
                      label2: "تعداد طبقات ",
                      widget1:
                          ReadOnlyTextField(_buildRoomsCountController, () {
                        showNumberPicker((_) {
                          _buildRoomsCountController.text = _;
                        });
                      }, width: getPageWidth()),
                      widget2: ReadOnlyTextField(_buildDateController, () {
                        persianDataPicker(
                            (date) => _buildDateController.text = date);
                      }, width: getPageWidth(),fontSize: 13)),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "انباری",
                        style: TextStyle(
                            fontFamily: MAIN_FONT_FAMILY,
                            fontSize: 14,
                            color: Color.fromRGBO(99, 99, 99, 1)),
                      ),
                      Container(
                        child: Transform.scale(
                          scale: 0.80,
                          child: Obx(
                            () => Switch(
                                onChanged: (_) => hasAnbari.value = _,
                                value: hasAnbari.value,
                                activeColor: Colors.white,
                                activeTrackColor:
                                    Color.fromRGBO(54, 216, 89, 1),
                                inactiveThumbColor:
                                    Color.fromRGBO(11, 8, 8, 0.2),
                                inactiveTrackColor:
                                    Color.fromRGBO(255, 255, 255, 1)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "جرثقیل سقفی",
                            style: TextStyle(
                                fontFamily: MAIN_FONT_FAMILY,
                                fontSize: 14,
                                color: Color.fromRGBO(99, 99, 99, 1)),
                          ),
                          Container(
                            child: Transform.scale(
                              scale: 0.80,
                              child: Obx(
                                () => Switch(
                                    onChanged: (_) => hasAsansor.value = _,
                                    value: hasAsansor.value,
                                    activeColor: Colors.white,
                                    activeTrackColor:
                                        const Color.fromRGBO(54, 216, 89, 1),
                                    inactiveThumbColor:
                                        const Color.fromRGBO(11, 8, 8, 0.2),
                                    inactiveTrackColor:
                                        const Color.fromRGBO(255, 255, 255, 1)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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

  Widget melkByVamBanki(BuildContext context) {
    final isSwitched = true.obs;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "خانه کلنگی",
              style: TextStyle(
                  fontFamily: MAIN_FONT_FAMILY,
                  fontSize: 13,
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
                      width: getPageWidth(),
                      child: TextField(
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
                      width: getPageWidth(),
                      child: TextField(
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
                  SizedBox(
                    height: 41,
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'انتخاب نشده',
                        hintStyle: const TextStyle(
                            color: Color(0xFFA6A6A6), fontSize: 13),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: IconButton(
                          icon: const Icon(CupertinoIcons.chevron_left_2),
                          onPressed: () {
                            // _show_item_1.value = !_show_item_1.isTrue;
                          },
                        ),
                      ),
                    ),
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
}
