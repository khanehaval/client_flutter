import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvInfoModel.dart';
import 'package:flutter_application_1/pages/category/models/FacilitiesModel.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/ejara_adv_pages/ejara_vila_page.dart';
import 'package:flutter_application_1/pages/category/shared/adv_info/advInfo.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/date.dart';
import 'package:flutter_application_1/pages/category/shared/emkanat5.dart';
import 'package:flutter_application_1/pages/category/shared/facilities_selector.dart';
import 'package:flutter_application_1/pages/category/shared/images_picker/images_picker.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/jahat_sakhteman.dart';
import 'package:flutter_application_1/pages/category/shared/namayesh.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/switchItem.dart';
import 'package:flutter_application_1/pages/category/shared/twoItemInRow.dart';
import 'package:flutter_application_1/pages/category/shared/widget/submit_row.dart';
import 'package:flutter_application_1/pages/category/shared/widget/text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gradient_icon/gradient_icon.dart';

class SaleShop extends StatefulWidget {
  SaleShop({super.key});

  @override
  State<SaleShop> createState() => _SaleShopState();
}

class _SaleShopState extends State<SaleShop> {
  final aghsatType = "".obs;

  final onvan = "".obs;

  final submit = false.obs;

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

  final _buildDateController = TextEditingController();

  final _buildRoomsCountController = TextEditingController();

  final _advInfo = AdvInfoModel();

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
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "خرید و فروش مغازه  ",
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                ),
                Icon(
                  Icons.arrow_back,
                  color: Colors.green,
                  size: 18,
                ),
                Text(
                  "فروش مسکونی",
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                ),
                Icon(
                  Icons.arrow_back,
                  color: Colors.green,
                  size: 18,
                ),
                Text(
                  "  ثبت آگهی اکونومی",
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                ),
              ],
            ),
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
                  "متراژ",
                  style: TextStyle(
                      color: Color.fromRGBO(166, 166, 166, 1),
                      fontFamily: MAIN_FONT_FAMILY),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.95,
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
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            aghsatiForoshWidget(context),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            TwoItemInRow(
                label1: "تعداد اتاق ",
                label2: "سن بنا ",
                widget1: ReadOnlyTextField(_buildRoomsCountController, () {
                  showNumberPicker((_) {
                    _buildRoomsCountController.text = _;
                  });
                }, width: getPageWidth()),
                widget2: ReadOnlyTextField(_buildDateController, () {
                  persianDataPicker((date) => _buildDateController.text = date);
                }, width: getPageWidth(), fontSize: 13)),
            const SizedBox(
              height: 20,
            ),
            TwoItemInRow(
                label1: "طیقه",
                label2: "موقیعت",
                widget1:
                    ReadOnlyTextField(_buildUnitOfAnyFloorCountController, () {
                  showNumberPicker((_) {
                    _buildUnitOfAnyFloorCountController.text = _;
                  });
                }, width: getPageWidth()),
                widget2: ReadOnlyTextField(_buildDirectionController, () {
                  jahatSakhteman((_) {
                    _buildDirectionController.text = _;
                  });
                }, width: getPageWidth())),
            const SizedBox(
              height: 15,
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
                          activeTrackColor: Color.fromRGBO(54, 216, 89, 1),
                          inactiveThumbColor: Color.fromRGBO(11, 8, 8, 0.2),
                          inactiveTrackColor: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "آسانسور",
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
                              activeTrackColor: Color.fromRGBO(54, 216, 89, 1),
                              inactiveThumbColor: Color.fromRGBO(11, 8, 8, 0.2),
                              inactiveTrackColor:
                                  Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "پارکینگ",
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
                                  onChanged: (_) => hasParking.value = _,
                                  value: hasParking.value,
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
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "سایر ویژگی ها",
              style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 15),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: const Text(
                    "بازسازی ",
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
                  hintStyle: TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
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
              height: 15,
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text("سند تجاری"),
                Transform.scale(
                  scale: 0.80,
                  child: Obx(
                    () => Switch(
                        onChanged: (_) => hasSanad.value = _,
                        value: hasSanad.value,
                        activeColor: Colors.white,
                        activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                        inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                        inactiveTrackColor:
                            const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
              ]),
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
              const Text(
                "امکانات",
                style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: const Text(
                      "جنس کف ",
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
                        TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
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
                      hintStyle:
                          TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
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
                height: 20,
              ),
              FacilitiesSelectorWidget(
                selectable: [
                  Lift(),
                  Categorizing(),
                  BurglarAlarm(),
                  CCTV(),
                  FireExtinguishing(),
                  ElectricShutters(),
                  Guard(),
                  DinningSalon(),
                  Internet(),
                  Office(),
                  WaterWell(),
                  Weighbridge(),
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
              ImagesPicker(selectedImagesPath: _selectedImagesPath),
              const Divider(),
              const SizedBox(
                height: 15,
              ),
              AdvInfo(_advInfo),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  if (submit.value) {
                    Get.to(() => NamayeshAgahi());
                  }
                },
                child: Obx(() => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            "... تایید و ادامه",
                            style: !submit.value
                                ? const TextStyle(
                                    fontSize: 20,
                                    fontFamily: MAIN_FONT_FAMILY,
                                    color: Colors.black38,
                                  )
                                : const TextStyle(
                                    fontSize: 20, fontFamily: MAIN_FONT_FAMILY),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        GradientIcon(
                          icon: Icons.double_arrow,
                          gradient: LinearGradient(
                            colors: submit.value
                                ? GRADIANT_COLOR1
                                : BLACK_12_GRADIANT_COLOR,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          offset: const Offset(0, 0),
                          size: 34,
                        )
                      ],
                    )),
              )
            ]),
          ]),
        )));
  }
}

double getPageWidth_2(BuildContext context) => getPageWidth();

Widget onvanWidget(BuildContext context) {
  final isSwitched = true.obs;
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
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
  final _timeOfInstallmentsController = TextEditingController();
  final _countOfInstallmentsController = TextEditingController();

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
                TwoItemInRow(
                    label1: "زمان دریافت اقساط",
                    label2: "تعداد اقساط",
                    widget1:
                        ReadOnlyTextField(_timeOfInstallmentsController, () {
                      persianDataPicker((date) {
                        _timeOfInstallmentsController.text = date;
                      });
                    }, width: getPageWidth(), fontSize: 13),
                    widget2:
                        ReadOnlyTextField(_countOfInstallmentsController, () {
                      showNumberPicker((_) {
                        _countOfInstallmentsController.text = _;
                      });
                    }, width: getPageWidth())),
                const SizedBox(
                  width: 25,
                  height: 10,
                ),
                SwitchItems(
                    onSelected: (_) {}, items: const ["ضامن", "سفته", "چک"]),
                const SizedBox(
                  height: 10,
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
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "ملک با وام بانکی",
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
                      fontSize: 9.5,
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
                  height: 17,
                ),
                TwoItemInRow(
                    label1: "زمان دریافت اقساط",
                    label2: "تعداد اقساط",
                    widget1: SizedBox(
                      height: 41,
                      width: getPageWidth(),
                      child: TextField(
                        textAlign: TextAlign.right,
                        readOnly: true,
                        focusNode: FocusNode(canRequestFocus: false),
                        decoration: InputDecoration(
                            hintText: 'انتخاب نشده',
                            hintStyle: const TextStyle(
                                color: Color(0xFFA6A6A6), fontSize: 13),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            prefixIcon: IconButton(
                              icon: const Icon(CupertinoIcons.chevron_left_2),
                              onPressed: () {},
                            )),
                      ),
                    ),
                    widget2: SizedBox(
                      height: 41,
                      width: getPageWidth(),
                      child: TextField(
                        textAlign: TextAlign.right,
                        readOnly: true,
                        focusNode: FocusNode(canRequestFocus: false),
                        decoration: InputDecoration(
                          hintText: 'انتخاب نشده',
                          hintStyle: const TextStyle(
                              color: Color(0xFFA6A6A6), fontSize: 13),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: IconButton(
                            icon: const Icon(CupertinoIcons.chevron_left_2),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    )),
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
                  height: 30,
                ),
              ],
            )
          : const SizedBox.shrink()),
    ],
  );
}
