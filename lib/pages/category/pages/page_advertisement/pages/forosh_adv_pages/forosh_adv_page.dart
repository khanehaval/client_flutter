import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvInfoModel.dart';
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
import 'package:gradient_icon/gradient_icon.dart';

import '../../../../models/FacilitiesModel.dart';

class ForoshAdvPage extends StatefulWidget {
  @override
  State<ForoshAdvPage> createState() => _ForoshAdvPageState();
}

class _ForoshAdvPageState extends State<ForoshAdvPage> {
  final ImageController imageController = Get.put(ImageController());

  final aghsatType = "".obs;

  final onvan = "".obs;

  int selectedIndex = 0;

  final submit = false.obs;

  final hasAnbari = false.obs;

  final hasAsansor = false.obs;

  final hasParking = false.obs;

  final _onePrice = 0.0.obs;

  final _allPriceTextController = TextEditingController();

  final _metragTextController = TextEditingController();

  final _selectedImagesPath = [].obs;

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

  final _floorMaterialController = TextEditingController();

  final _cabinetController = TextEditingController();

  final _coldTypeController = TextEditingController();

  final _heatTypeController = TextEditingController();

  final _heatWaterController = TextEditingController();

  final _wcController = TextEditingController();

  final _numberOfInstallmentsController = TextEditingController();

  final _advInfo = AdvInfoModel();

  @override
  void initState() {
    super.initState();

    _allPriceTextController.addListener(_checkFields);
    _metragTextController.addListener(_checkFields);
    _buildRoomsCountController.addListener(_checkFields);
    _buildFloorController.addListener(_checkFields);
  }

  void _checkFields() {
    if (_allPriceTextController.text.isNotEmpty &&
        _metragTextController.text.isNotEmpty &&
        _buildFloorController.text.isNotEmpty &&
        _buildRoomsCountController.text.isNotEmpty) {
      submit.value = true;
    } else {
      submit.value = false;
    }
  }

  @override
  void dispose() {
    _allPriceTextController.dispose();
    _metragTextController.dispose();
    _buildFloorController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: buildaAppBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(children: [
              route(
                  ["ثبت آگهی اکونومی", "فروش مسکونی", "خرید و فروش آپارتمان"]),
              const SizedBox(
                height: 30,
              ),
              TwoItemInRow1(
                label1: "قیمت هر متر مربع (تومان)",
                label2: "  قیمت کل (تومان)",
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
                        fontSize: 13,
                        fontFamily: 'Iran Sans',
                        fontWeight: FontWeight.w400,
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
                color: Color.fromRGBO(
                  226,
                  226,
                  226,
                  1,
                ),
                endIndent: 6,
                indent: 6,
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
                  SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 7),
                    child: Text(
                      "متراژ",
                      style: TextStyle(
                          color: Color.fromRGBO(166, 166, 166, 1),
                          fontFamily: MAIN_FONT_FAMILY),
                      textAlign: TextAlign.start,
                    ),
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
              aghsatiForoshWidget(context),
              const Divider(
                color: Color.fromRGBO(
                  226,
                  226,
                  226,
                  1,
                ),
                endIndent: 6,
                indent: 6,
              ),
              melkByVamBanki(context),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Color.fromRGBO(
                  226,
                  226,
                  226,
                  1,
                ),
                endIndent: 6,
                indent: 6,
              ),
              TwoItemInRow2(
                  label1: "تعداد اتاق ",
                  label2: "سن بنا",
                  widget1: ReadOnlyTextField(_buildRoomsCountController, () {
                    showNumberPicker((_) {
                      _buildRoomsCountController.text = _;
                    });
                  }, width: getPageWidth()),
                  widget2: ReadOnlyTextField(_buildDateController, () {
                    persianDataPicker(
                        (date) => _buildDateController.text = date);
                  }, width: getPageWidth(), fontSize: 13)),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "*",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromRGBO(156, 64, 64, 1)),
                  ),
                  Text(
                    "طبقه ",
                    style: TextStyle(
                        color: Color.fromRGBO(99, 99, 99, 1),
                        fontFamily: MAIN_FONT_FAMILY),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              ReadOnlyTextField(_buildFloorController, () {
                showNumberPicker((_) {
                  _buildFloorController.text = _;
                });
              }),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  switchable(
                    hasAnbari,
                    "انباری",
                  ),
                  switchable(
                    hasAsansor,
                    "آسانسور",
                  ),
                  switchable(
                    hasParking,
                    "پارکینگ",
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Color.fromRGBO(
                  226,
                  226,
                  226,
                  1,
                ),
                endIndent: 6,
                indent: 6,
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
              TwoItemInRow(
                  label1: "تعداد کل طبقات",
                  label2: "نوع سند",
                  widget1: ReadOnlyTextField(_buildFloorsCountController, () {
                    showNumberPicker((_) {
                      _buildFloorsCountController.text = _;
                    });
                  }, width: getPageWidth()),
                  widget2: ReadOnlyTextField(_buildDocumentController, () {
                    Sanad((_) {
                      _buildDocumentController.text = _;
                    });
                  }, width: getPageWidth())),
              const SizedBox(
                height: 15,
              ),
              TwoItemInRow(
                  label1: "تعداد کل واحد ها",
                  label2: "تعداد واحد در طبقه",
                  widget1: InputTextField(_buildAllFloorsCountController,
                      width: getPageWidth()),
                  widget2: ReadOnlyTextField(
                      _buildUnitOfAnyFloorCountController, () {
                    showNumberPicker((_) {
                      _buildUnitOfAnyFloorCountController.text = _;
                    });
                  }, width: getPageWidth())),
              const SizedBox(
                height: 15,
              ),
              TwoItemInRow(
                  label1: "بازسازی",
                  label2: "جهت ساختمان",
                  widget1: ReadOnlyTextField(_reBuildController, () {
                    //todo
                  }, width: getPageWidth()),
                  widget2: ReadOnlyTextField(_buildDirectionController, () {
                    jahatSakhteman((_) {
                      _buildDirectionController.text = _;
                    });
                  }, width: getPageWidth())),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Color.fromRGBO(
                  226,
                  226,
                  226,
                  1,
                ),
                endIndent: 6,
                indent: 6,
              ),
              const SizedBox(
                height: 10,
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
                }, width: getPageWidth()),
                widget2: ReadOnlyTextField(_cabinetController, () {
                  //todo
                }, width: getPageWidth()),
              ),
              const SizedBox(
                height: 15,
              ),
              TwoItemInRow(
                label1: "نوع سیستم گرمایش",
                label2: "نوع سیستم سرمایش",
                widget1: ReadOnlyTextField(_heatTypeController, () {
                  //todo
                }, width: getPageWidth()),
                widget2: ReadOnlyTextField(_coldTypeController, () {
                  //todo
                }, width: getPageWidth()),
              ),
              const SizedBox(
                height: 15,
              ),
              TwoItemInRow(
                  label1: "سرویس بهداشتی",
                  label2: "تامین کننده آب گرم",
                  widget1: ReadOnlyTextField(_wcController, () {
                    //todo
                  }, width: getPageWidth()),
                  widget2: ReadOnlyTextField(_heatWaterController, () {
                    //todo
                  }, width: getPageWidth())),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
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
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Color.fromRGBO(
                  226,
                  226,
                  226,
                  1,
                ),
                endIndent: 6,
                indent: 6,
              ),
              const SizedBox(
                height: 20,
              ),
              ImagesPicker(selectedImagesPath: _selectedImagesPath),
              const Divider(
                color: Color.fromRGBO(
                  226,
                  226,
                  226,
                  1,
                ),
                endIndent: 6,
                indent: 6,
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
          ),
        ));
  }

  Widget onvanWidget(BuildContext context) {
    final isSwitched = true.obs;
    return Column(
      children: [
        switchable(isSwitched, "فروش به صورت اقساطی"),
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
    final ImageController imageController = Get.put(ImageController());

    return Column(
      children: [
        switchable(isSwitched, "فروش به صورت اقساطی"),
        RichText(
          text: const TextSpan(
            text: "در صورت وارد نکردن آیتم ها، آگهی فقط با عنوان ",
            style: TextStyle(
              fontFamily: MAIN_FONT_FAMILY,
              fontSize: 12,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'اقساطی',
                style: TextStyle(color: Color.fromRGBO(156, 64, 64, 1)),
              ),
              TextSpan(
                text: ' منتشر میگردد',
                style: TextStyle(
                  fontFamily: MAIN_FONT_FAMILY,
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Obx(() => Stack(
              children: [
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.black
                        .withOpacity(1 - imageController.sliderValue.value),
                    BlendMode.srcATop,
                  ),
                  child: Image.asset(
                    "assets/images/progressbarRGB.png",
                    height: 100,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 52,
                  left: 10,
                  right: 20,
                  child: Slider(
                    value: imageController.sliderValue.value,
                    min: 0,
                    max: 1,
                    onChanged: (value) {
                      imageController.updateSliderValue(value);
                    },
                  ),
                ),
              ],
            )),
        const SizedBox(
          height: 20,
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
                hintText: 'مبلغ را وارد کنید', // todo
                hintStyle: const TextStyle(
                  fontSize: 13,
                  fontFamily: 'Iran Sans',
                  fontWeight: FontWeight.w400,
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
              keyboardType: TextInputType.number,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                hintText: 'مبلغ را وارد کنید', // todo
                hintStyle: const TextStyle(
                  fontSize: 13,
                  fontFamily: 'Iran Sans',
                  fontWeight: FontWeight.w400,
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
        TwoItemInRow(
          label1: "زمان دریافت اقساط",
          label2: "تعداد اقساط",
          widget1: ReadOnlyTextField(_timeOfInstallmentsController, () {
            persianDataPicker((date) {
              _timeOfInstallmentsController.text = date;
            });
          }, width: getPageWidth(), fontSize: 13),
          widget2: ReadOnlyTextField(_countOfInstallmentsController, () {
            showNumberPicker((_) {
              _countOfInstallmentsController.text = _;
            });
          }, width: getPageWidth()),
        ),
        const SizedBox(
          width: 25,
          height: 10,
        ),
        SwitchItems(onSelected: (_) {}, items: const ["ضامن", "سفته", "چک"]),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "قیمت نهایی ملک (پیش پرداخت + اقساط ) : 13.200.000.000 تومان",
          style: TextStyle(
            fontFamily: MAIN_FONT_FAMILY,
            fontSize: 10,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
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
                RichText(
                  text: const TextSpan(
                    text: "در صورت وارد نکردن آیتم ها، آگهی فقط با عنوان  ",
                    style: TextStyle(
                      fontFamily: MAIN_FONT_FAMILY,
                      fontSize: 12.3,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'دارای وام',
                        style: TextStyle(
                          fontFamily: MAIN_FONT_FAMILY,
                          fontSize: 12,
                          color: Color.fromRGBO(156, 64, 64, 1),
                        ),
                      ),
                      TextSpan(
                        text: ' منتشر میگردد',
                        style: TextStyle(
                          fontFamily: MAIN_FONT_FAMILY,
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
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
                          fontSize: 13,
                          fontFamily: 'Iran Sans',
                          fontWeight: FontWeight.w400,
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
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: '400000000', //todo
                        hintStyle: const TextStyle(
                          fontSize: 13,
                          fontFamily: 'Iran Sans',
                          fontWeight: FontWeight.w400,
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
                  height: 17,
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "تعداد اقساط   ",
                    style: TextStyle(
                        color: Color.fromRGBO(166, 166, 166, 1),
                        fontSize: 13,
                        fontFamily: MAIN_FONT_FAMILY),
                    textAlign: TextAlign.start,
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

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight;
    final trackLeft = 10.0;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final trackWidth = 400.0;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}

class ImageController extends GetxController {
  var sliderValue = 0.0.obs; // Initial dim value set to 50%

  void updateSliderValue(double value) {
    sliderValue.value = value;
  }
}
