import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvInfoModel.dart';
import 'package:flutter_application_1/pages/category/shared/adv_info/advInfo.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/date.dart';
import 'package:flutter_application_1/pages/category/shared/facilities_selector.dart';
import 'package:flutter_application_1/pages/category/shared/images_picker/images_picker.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/Widget_NoeSanad.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/jahat_sakhteman.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/servises_wc.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_bazsazi.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_jenskaf.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_kabinet.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_system_garm.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_system_sarmayesh.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tamin_abe_garm.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tedad_koletabagheh.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tedad_vahed_dar%20tabagheh.dart';
import 'package:flutter_application_1/pages/category/shared/namayesh.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/twoItemInRow.dart';
import 'package:flutter_application_1/pages/category/shared/widget/text_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:gradient_icon/gradient_icon.dart';

import '../../../../models/FacilitiesModel.dart';

class EjaraApartemanPage extends StatefulWidget {
  const EjaraApartemanPage({super.key});

  @override
  _EjaraApartemanPageState createState() => _EjaraApartemanPageState();
}

class _EjaraApartemanPageState extends State<EjaraApartemanPage> {
  final aghsatType = "".obs;
  final onvan = "".obs;
  final submit = false.obs;
  int selectedIndex = 0;
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
  final TextEditingController _buildDateController = TextEditingController();
  final _buildRoomsCountController = TextEditingController();
  final _buildDocumentController = TextEditingController();
  final _buildAllFloorsCountController = TextEditingController();
  final _reBuildController = TextEditingController();
  final _countOfInstallmentsController = TextEditingController();
  final _advInfo = AdvInfoModel();
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _SarmayeshController = TextEditingController();
  final TextEditingController _GarmController = TextEditingController();
  final TextEditingController _JenskafController = TextEditingController();
  final TextEditingController _kabinetController = TextEditingController();
  final TextEditingController _WcController = TextEditingController();
  final TextEditingController _AbeGarmController = TextEditingController();
  final TextEditingController _BazSaziController = TextEditingController();
  final TextEditingController _JahatSakhtemanController =
      TextEditingController();
  final TextEditingController _TedadVahedTabaghehController =
      TextEditingController();
  final TextEditingController _TedadKoleTabaghehController =
      TextEditingController();
  final TextEditingController _NoeSanadController = TextEditingController();
// In the parent widget or controller
  final RxList<String> selectedImagesPath = RxList<String>();

  @override
  void initState() {
    super.initState();

    // Add listeners to text controllers
    _allPriceTextController.addListener(_checkFields);
    _metragTextController.addListener(_checkFields);
  }

  void _checkFields() {
    if (_allPriceTextController.text.isNotEmpty &&
        _metragTextController.text.isNotEmpty) {
      submit.value = true;
    } else {
      submit.value = false;
    }
  }

  @override
  void dispose() {
    _allPriceTextController.dispose();
    _metragTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildaAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "رهن و اجاره آپارتمان",
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
                label1: "میزان اجاره (تومان)",
                label2: "میزان رهن (تومان) ",
                widget1: SizedBox(
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
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(23, 102, 175, 1),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(23, 102, 175, 1),
                        ),
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
                        fontSize: 13,
                        fontFamily: 'Iran Sans',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFA6A6A6),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(23, 102, 175, 1),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(23, 102, 175, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "برای ثبت آگهی با عنوان ",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: MAIN_FONT_FAMILY,
                        color: Colors.black, // Default text color
                      ),
                    ),
                    TextSpan(
                      text: "رهن کامل",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: MAIN_FONT_FAMILY,
                        color: Color.fromRGBO(
                          156,
                          64,
                          64,
                          1,
                        ), // Red color for this specific text
                      ),
                    ),
                    TextSpan(
                      text: "، اجاره را وارد نکنید",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: MAIN_FONT_FAMILY,
                        color: Colors.black, // Default text color
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              aghsatiForoshWidget(context),
              const Padding(
                padding: EdgeInsets.only(right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "*",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(156, 64, 64, 1),
                          fontFamily: MAIN_FONT_FAMILY),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "متراژ",
                      style: TextStyle(
                          color: Color(0xff636363),
                          fontFamily: MAIN_FONT_FAMILY),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 41,
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
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(23, 102, 175, 1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(23, 102, 175, 1),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
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
              TwoItemInRow2(
                  label1: "تعداد اتاق ",
                  label2: "سن بنا ",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "*",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromRGBO(156, 64, 64, 1)),
                  ),
                  Container(
                    child: const Text(
                      "طبقه ",
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
                    hintStyle: const TextStyle(
                      fontSize: 13,
                      fontFamily: 'Iran Sans',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA6A6A6),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: ReadOnlyTextField(
                      _countOfInstallmentsController,
                      () {
                        showNumberPicker((_) {
                          _countOfInstallmentsController.text = _;
                        });
                      },
                    ),
                  ),
                ),
              ),
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
                            activeTrackColor: Color.fromRGBO(54, 216, 89, 1),
                            inactiveThumbColor: Color.fromRGBO(11, 8, 8, 0.2),
                            inactiveTrackColor:
                                const Color.fromRGBO(255, 255, 255, 1)),
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
                                    const Color.fromRGBO(54, 216, 89, 1),
                                inactiveThumbColor:
                                    const Color.fromRGBO(11, 8, 8, 0.2),
                                inactiveTrackColor:
                                    const Color.fromRGBO(255, 255, 255, 1)),
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
                widget1: SizedBox(
                    height: 41,
                    width: getPageWidth(),
                    child: TextField(
                      controller: _TedadKoleTabaghehController,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'انتخاب نشده',
                        hintStyle: const TextStyle(
                          fontFamily: 'Iran Sans',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA6A6A6),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon:
                            ReadOnlyTextField(_TedadKoleTabaghehController, () {
                          TedadKoleTabagheh((selectedOption) {
                            _TedadKoleTabaghehController.text = selectedOption;
                          });
                        }),
                      ),
                    )),
                widget2: SizedBox(
                  height: 41,
                  width: getPageWidth(),
                  child: TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'انتخاب نشده',
                      hintStyle: const TextStyle(
                        fontSize: 13,
                        fontFamily: MAIN_FONT_FAMILY_LIGHT,
                        color: Color(0xFFA6A6A6),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: ReadOnlyTextField(_NoeSanadController, () {
                        NoeSanad((selectedOption) {
                          _NoeSanadController.text = selectedOption;
                        });
                      }),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TwoItemInRow(
                  label1: "تعداد کل واحد ها",
                  label2: "تعداد واحد در طبقه",
                  widget1: InputTextField(_buildAllFloorsCountController,
                      width: getPageWidth()),
                  widget2: ReadOnlyTextField(_TedadVahedTabaghehController, () {
                    TedadVahedTabagheh((selectedOption) {
                      _TedadVahedTabaghehController.text = selectedOption;
                    });
                  }, width: getPageWidth())),
              const SizedBox(
                height: 20,
              ),
              TwoItemInRow(
                  label1: "بازسازی",
                  label2: "جهت ساختمان",
                  widget1: ReadOnlyTextField(
                    _BazSaziController,
                    () {
                      BazSazi((selectedOption) {
                        _BazSaziController.text = selectedOption;
                      });
                    },
                    width: getPageWidth(),
                  ),
                  widget2: ReadOnlyTextField(_JahatSakhtemanController, () {
                    jahatSakhteman((selectedOption) {
                      _JahatSakhtemanController.text = selectedOption;
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
                label1: "نوع کابینت",
                label2: "جنس کف",
                widget1: Container(
                  height: 41,
                  width: getPageWidth(),
                  child: TextField(
                    controller: _kabinetController,
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
                            Kabinet((selectedOption) {
                              _kabinetController.text = selectedOption;
                            });
                          },
                        )),
                  ),
                ),
                widget2: Container(
                  height: 41,
                  width: getPageWidth(),
                  child: TextField(
                    controller: _JenskafController,
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
                          JensKaf((selectedOption) {
                            _JenskafController.text = selectedOption;
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
              TwoItemInRow(
                label1: "نوع سیستم گرمایش",
                label2: "نوع سیستم سرمایش",
                widget1: Container(
                  height: 41,
                  width: getPageWidth(),
                  child: TextField(
                    controller: _GarmController,
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
                          Garmayesh((selectedOption) {
                            // Update the TextField with the selected option
                            _GarmController.text = selectedOption;
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
                    controller: _SarmayeshController,
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
                          Sarmayesh((selectedOption) {
                            // Update the TextField with the selected option
                            _SarmayeshController.text = selectedOption;
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
              TwoItemInRow(
                label1: "سرویس بهداشتی",
                label2: "تامین کننده آب گرم",
                widget1: Container(
                  height: 41,
                  width: getPageWidth(),
                  child: TextField(
                    controller: _WcController,
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
                            Wc((selectedOption) {
                              _WcController.text = selectedOption;
                            });
                          },
                        )),
                  ),
                ),
                widget2: Container(
                  height: 41,
                  width: getPageWidth(),
                  child: TextField(
                    controller: _AbeGarmController,
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
                          AbeGarm((selectedOption) {
                            _AbeGarmController.text = selectedOption;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
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
                height: 40,
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
              ImagesPicker(selectedImagesPath: selectedImagesPath),
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
            ],
          ),
        ),
      ),
    );
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
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'مبلغ را وارد کنید', //todo
                    hintStyle:
                        const TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(23, 102, 175, 1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(23, 102, 175, 1),
                      ),
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
                    hintText: 'مبلغ را وارد کنید', //todo
                    hintStyle:
                        const TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(23, 102, 175, 1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(23, 102, 175, 1),
                      ),
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
