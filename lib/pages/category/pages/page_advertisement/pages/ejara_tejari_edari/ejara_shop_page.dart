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
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_jenskaf.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_location.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_sen_bana.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_system_garm.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_system_sarmayesh.dart';
import 'package:flutter_application_1/pages/category/shared/namayesh.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/twoItemInRow.dart';
import 'package:flutter_application_1/pages/category/shared/widget/submit_row.dart';
import 'package:flutter_application_1/pages/category/shared/widget/text_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:gradient_icon/gradient_icon.dart';

class EjaraShopPage extends StatefulWidget {
  EjaraShopPage({super.key});

  @override
  State<EjaraShopPage> createState() => _EjaraShopPageState();
}

class _EjaraShopPageState extends State<EjaraShopPage> {
  final aghsatType = "".obs;

  final onvan = "".obs;

  int selectedIndex = 0;

  final hasAnbari = false.obs;

  final hasAsansor = false.obs;

  final hasParking = false.obs;
// In the parent widget or controller
  final RxList<String> selectedImagesPath = RxList<String>();

  final _onePrice = 0.0.obs;

  final _allPriceTextController = TextEditingController();

  final _metragTextController = TextEditingController();

  final _selectedImagesPath = [].obs;

  final _facilities = <FacilitiesModel>[].obs;

  final _buildDirectionController = TextEditingController();

  final _buildUnitOfAnyFloorCountController = TextEditingController();

  final _buildDateController = TextEditingController();

  final _buildRoomsCountController = TextEditingController();
  final _flooringController = TextEditingController();
  final TextEditingController _heatingSystemController =
      TextEditingController();
  final TextEditingController _coolingSystemController =
      TextEditingController();
  final submit = false.obs;

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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "رهن و اجاره مغازه  ",
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
                  ),
                  Text(
                    "اجاره تجاری و اداری",
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
                label1: "میزان اجاره (تومان)",
                label2: "میزان رهن (تومان) ",
                widget1: SizedBox(
                  height: 41,
                  width: getPageWidth(),
                  child: TextField(
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.number,
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
                widget2: SizedBox(
                  height: 41,
                  width: getPageWidth(),
                  child: TextField(
                    controller: _allPriceTextController,
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.number,
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
              const Text(
                "برای ثبت آگهی با عنوان رهن کامل، اجاره را وارد نکنید",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: MAIN_FONT_FAMILY,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              aghsatiForoshWidget(context),
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
              TwoItemInRow2(
                  label1: "تعداد اتاق ",
                  label2: "سن بنا ",
                  widget1: ReadOnlyTextField(_buildRoomsCountController, () {
                    showNumberPicker((_) {
                      _buildRoomsCountController.text = _;
                    });
                  }, width: getPageWidth(), fontSize: 13),
                  widget2: ReadOnlyTextField(_buildDateController, () {
                    SenBana((selectedOption) {
                      _buildDateController.text = selectedOption;
                    });
                  }, width: getPageWidth(), fontSize: 13)),
              const SizedBox(
                height: 15,
              ),
              TwoItemInRow1(
                  label1: "طبقه",
                  label2: "موقیعت",
                  widget1: ReadOnlyTextField(
                      _buildUnitOfAnyFloorCountController, () {
                    showNumberPicker((_) {
                      _buildUnitOfAnyFloorCountController.text = _;
                    });
                  }, width: getPageWidth()),
                  widget2: ReadOnlyTextField(_buildDirectionController, () {
                    Location((selectedOption) {
                      _buildDirectionController.text = selectedOption;
                    });
                  }, width: getPageWidth())),
              const SizedBox(
                height: 20,
              ),
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
                            inactiveTrackColor:
                                Color.fromRGBO(255, 255, 255, 1)),
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
                                activeTrackColor:
                                    Color.fromRGBO(54, 216, 89, 1),
                                inactiveThumbColor:
                                    Color.fromRGBO(11, 8, 8, 0.2),
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
                                        Color.fromRGBO(54, 216, 89, 1),
                                    inactiveThumbColor:
                                        Color.fromRGBO(11, 8, 8, 0.2),
                                    inactiveTrackColor:
                                        Color.fromRGBO(255, 255, 255, 1)),
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
                "امکانات",
                style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
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
                  controller: _flooringController,
                  readOnly: true,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'انتخاب نشده',
                    hintStyle: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Iran Sans',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA6A6A6),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: IconButton(
                      icon: SvgPicture.asset("assets/images/Vector-20.svg"),
                      onPressed: () {
                        JensKaf((selectedKey, selectedLabel) {
                          _flooringController.text = selectedLabel;
                        });
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
                    controller: _heatingSystemController,
                    readOnly: true,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'انتخاب نشده',
                      hintStyle: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Iran Sans',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFA6A6A6),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: SvgPicture.asset("assets/images/Vector-20.svg"),
                        onPressed: () {
                          Garmayesh((selectedKey, selectedLabel) {
                            _heatingSystemController.text = selectedLabel;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                widget2: Container(
                  height: 41,
                  width: getPageWidth(),
                  child: TextField(
                    controller: _coolingSystemController,
                    readOnly: true,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'انتخاب نشده',
                      hintStyle: const TextStyle(
                        fontSize: 13,
                        fontFamily: 'Iran Sans',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFA6A6A6),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: SvgPicture.asset("assets/images/Vector-20.svg"),
                        onPressed: () {
                          Sarmayesh((selectedKey, selectedLabel) {
                            _coolingSystemController.text = selectedLabel;
                          });
                        },
                      ),
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
              ImagesPicker(selectedImagesPath: selectedImagesPath),
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
          ),
        ));
  }
}

Widget aghsatiForoshWidget(BuildContext context) {
  final isSwitched = true.obs;
  return Column(children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "قابلیت تبدیل",
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
        ? Column(children: [
            const SizedBox(
              height: 20,
            ),
            TwoItemInRow2(
              label1: "میزان اجاره (تومان)",
              label2: "میزان رهن (تومان) ",
              widget1: SizedBox(
                height: 41,
                width: getPageWidth(),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'مبلغ را وارد کنید', //todo
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
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'مبلغ را وارد کنید', //todo
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
          ])
        : const SizedBox.shrink()),
    const SizedBox(
      height: 20,
    ),
  ]);
}
