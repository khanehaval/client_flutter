import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvInfoModel.dart';
import 'package:flutter_application_1/pages/category/models/FacilitiesModel.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/ejara_adv_pages/ejara_vila_page.dart';
import 'package:flutter_application_1/pages/category/shared/adv_info/advInfo.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/date.dart';
import 'package:flutter_application_1/pages/category/shared/facilities_selector.dart';
import 'package:flutter_application_1/pages/category/shared/images_picker/images_picker.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/Widget_NoeSanad.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/jahat_sakhteman.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/sanad.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/servises_wc.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_bazsazi.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_jenskaf.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_kabinet.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_sen_bana.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_system_garm.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_system_sarmayesh.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tamin_abe_garm.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tedad_Otagh.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tedad_aghsat.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tedad_koletabagheh.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tedad_vahed_dar%20tabagheh.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_time_aghsat.dart';
import 'package:flutter_application_1/pages/category/shared/namayesh.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/switchItem.dart';
import 'package:flutter_application_1/pages/category/shared/twoItemInRow.dart';
import 'package:flutter_application_1/pages/category/shared/widget/route_widget.dart';
import 'package:flutter_application_1/pages/category/shared/widget/submit_row.dart';
import 'package:flutter_application_1/pages/category/shared/widget/text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gradient_icon/gradient_icon.dart';

class ForoshDaftarPage extends StatefulWidget {
  ForoshDaftarPage({super.key});

  @override
  State<ForoshDaftarPage> createState() => _ForoshDaftarPageState();
}

class _ForoshDaftarPageState extends State<ForoshDaftarPage> {
  final aghsatType = "".obs;

  final onvan = "".obs;
// In the parent widget or controller
  final RxList<String> selectedImagesPath = RxList<String>();

  final _facilities = <FacilitiesModel>[].obs;

  final hasAnbari = false.obs;

  final hasAsansor = false.obs;

  final hasParking = false.obs;

  final hasSanad = true.obs;

  int selectedIndex = 0;

  final submit = false.obs;

  final _onePrice = 0.0.obs;

  final _allPriceTextController = TextEditingController();

  final _metragTextController = TextEditingController();

  final _selectedImagesPath = [].obs;

  final _buildDirectionController = TextEditingController();

  final _buildUnitOfAnyFloorCountController = TextEditingController();

  final _buildFloorsCountController = TextEditingController();

  final _timeOfInstallmentsController = TextEditingController();
  final _timeOfInstallments_vamBankiController = TextEditingController();

  final _buildDateController = TextEditingController();

  final _buildRoomsCountController = TextEditingController();

  final _buildDocumentController = TextEditingController();

  final _buildFloorController = TextEditingController();
  final _buildAllFloorsCountController = TextEditingController();
  final _reBuildController = TextEditingController();
  final _countOfInstallmentsController = TextEditingController();
  final _countOfInstallmentsVamBankiController = TextEditingController();
  final _tedadaghsat_month_VamBankiController = TextEditingController();
  final TextEditingController _SarmayeshController = TextEditingController();
  final TextEditingController _GarmController = TextEditingController();
  final TextEditingController _JenskafController = TextEditingController();
  final TextEditingController _kabinetController = TextEditingController();
  final TextEditingController _WcController = TextEditingController();
  final TextEditingController _AbeGarmController = TextEditingController();

  final _advInfo = AdvInfoModel();
  final ValueNotifier<String> _persianWords = ValueNotifier<String>('');

  String numberToFarsiWords(int number) {
    if (number == 0) return 'صفر';

    const ones = [
      'صفر',
      'یک',
      'دو',
      'سه',
      'چهار',
      'پنج',
      'شش',
      'هفت',
      'هشت',
      'نه'
    ];
    const teens = [
      'ده',
      'یازده',
      'دوازده',
      'سیزده',
      'چهارده',
      'پانزده',
      'شانزده',
      'هفده',
      'هجده',
      'نوزده'
    ];
    const tens = [
      '',
      '',
      'بیست',
      'سی',
      'چهل',
      'پنجاه',
      'شصت',
      'هفتاد',
      'هشتاد',
      'نود'
    ];
    const hundreds = [
      '',
      'صد',
      'دویست',
      'سیصد',
      'چهارصد',
      'پانصد',
      'ششصد',
      'هفتصد',
      'هشتصد',
      'نهصد'
    ];
    const thousands = ['', 'هزار', 'میلیون', 'میلیارد'];

    String convertBelowThousand(int num) {
      if (num == 0) return '';
      if (num < 10) return ones[num];
      if (num < 20) return teens[num - 10];
      if (num < 100) {
        int tenPart = num ~/ 10;
        int onePart = num % 10;
        return '${tens[tenPart]}${onePart > 0 ? ' و ${ones[onePart]}' : ''}';
      } else {
        int hundredPart = num ~/ 100;
        int restPart = num % 100;
        return '${hundreds[hundredPart]}${restPart > 0 ? ' و ${convertBelowThousand(restPart)}' : ''}';
      }
    }

    String result = '';
    int unit = 0;

    while (number > 0) {
      int chunk = number % 1000;
      if (chunk > 0) {
        String chunkText = convertBelowThousand(chunk);
        result = '${chunkText} ${thousands[unit]} ${result}'.trim();
      }
      number ~/= 1000;
      unit++;
    }

    return result.trim();
  }

  void _updatePersianWords() {
    final text = _metragTextController.text;
    if (text.isNotEmpty) {
      final number = int.tryParse(text) ?? 0;
      _persianWords.value = numberToFarsiWords(number);
    } else {
      _persianWords.value = '';
    }
  }

  @override
  void initState() {
    super.initState();
    _metragTextController.addListener(_updatePersianWords);

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
    _persianWords.dispose();

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
                route([
                  "ثبت آگهی اکونومی",
                  "فروش تجاری اداری",
                  "خرید و فروش دفترکار"
                ]),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "*",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(156, 64, 64, 1),
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 7),
                      child: Text(
                        "(تومان) قیمت کل",
                        style: TextStyle(
                          color: Color.fromRGBO(166, 166, 166, 1),
                          fontFamily: MAIN_FONT_FAMILY,
                        ),
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
                    decoration: InputDecoration(
                      hintText: '120',
                      hintStyle: const TextStyle(
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
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: ValueListenableBuilder<String>(
                    valueListenable: _persianWords,
                    builder: (context, value, child) {
                      return Text(
                        "قیمت به حروف: $value  تومان",
                        style: const TextStyle(
                          fontSize: 14,
                          fontFamily: MAIN_FONT_FAMILY,
                          color: Color.fromRGBO(166, 166, 166, 1),
                        ),
                      );
                    },
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
                TwoItemInRow1(
                  label1: "قیمت هر متر مربع (تومان)",
                  label2: "متراژ",
                  widget1: Obx(
                    () => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1, //
                          color: const Color(0xffA6A6A6),
                        ),
                      ),
                      height: 41,
                      width: getPageWidth(),
                      child: Center(
                        child: Text(
                          _onePrice.string,
                          style: TextStyle(
                            color: Color(0xffA6A6A6),
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
                      controller: _allPriceTextController,
                      onChanged: (_) {
                        _onePrice.value = _.isNotEmpty
                            ? int.parse(_) /
                                int.parse(_metragTextController.text)
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
                aghsatiForoshWidget(context),
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
                TwoItemInRow2(
                    label1: "تعداد اتاق ",
                    label2: "سن بنا",
                    widget1: ReadOnlyTextField(_buildRoomsCountController, () {
                      TedadOtagh((selectedKey, selectedLabel) {
                        _buildRoomsCountController.text =
                            selectedLabel; // Set the label as the text in the controller
                      });
                    }, width: getPageWidth()),
                    widget2: ReadOnlyTextField(_buildDateController, () {
                      SenBana((selectedOption) {
                        _buildDateController.text = selectedOption;
                      });
                    }, width: getPageWidth(), fontSize: 13)),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "*",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(156, 64, 64, 1)),
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
                ),
                ReadOnlyTextField(_buildFloorController, () {
                  showNumberPicker((_) {
                    _buildFloorController.text = _;
                  });
                }),
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
                                          const Color.fromRGBO(54, 216, 89, 1),
                                      inactiveThumbColor:
                                          const Color.fromRGBO(11, 8, 8, 0.2),
                                      inactiveTrackColor: const Color.fromRGBO(
                                          255, 255, 255, 1)),
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
                  endIndent: 20,
                  indent: 20,
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
                    widget1: ReadOnlyTextField(_buildFloorsCountController, () {
                      TedadKoleTabagheh((selectedKey, selectedLabel) {
                        _buildFloorController.text = selectedLabel;
                      });
                    }, width: getPageWidth()),
                    widget2: ReadOnlyTextField(_buildDocumentController, () {
                      NoeSanad((selectedOption) {
                        _buildDocumentController.text = selectedOption;
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
                      TedadVahedTabagheh((selectedKey, selectedLabel) {});
                    }, width: getPageWidth())),
                const SizedBox(
                  height: 15,
                ),
                TwoItemInRow(
                    label1: "بازسازی",
                    label2: "جهت ساختمان",
                    widget1: ReadOnlyTextField(_reBuildController, () {
                      BazSazi((selectedOption) {
                        _reBuildController.text = selectedOption;
                      });
                    }, width: getPageWidth()),
                    widget2: ReadOnlyTextField(_buildDirectionController, () {
                      jahatSakhteman((selectedOption) {
                        _buildDirectionController.text = selectedOption;
                      });
                    }, width: getPageWidth())),
                const SizedBox(
                  height: 30,
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Text("سند اداری"),
                    Transform.scale(
                      scale: 0.80,
                      child: Obx(
                        () => Switch(
                            onChanged: (_) => hasSanad.value = _,
                            value: hasSanad.value,
                            activeColor: Colors.white,
                            activeTrackColor:
                                const Color.fromRGBO(54, 216, 89, 1),
                            inactiveThumbColor:
                                const Color.fromRGBO(11, 8, 8, 0.2),
                            inactiveTrackColor:
                                const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                  ]),
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
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 20,
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
                                fontFamily: 'Iran Sans',
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFA6A6A6),
                                fontSize: 13),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            prefixIcon: IconButton(
                              icon: SvgPicture.asset(
                                  "assets/images/Vector-20.svg"),
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
                              fontFamily: 'Iran Sans',
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFA6A6A6),
                              fontSize: 13),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: IconButton(
                            icon:
                                SvgPicture.asset("assets/images/Vector-20.svg"),
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
                          hintStyle: const TextStyle(
                              fontFamily: 'Iran Sans',
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFA6A6A6),
                              fontSize: 13),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: IconButton(
                            icon:
                                SvgPicture.asset("assets/images/Vector-20.svg"),
                            onPressed: () {
                              Garmayesh((selectedOption) {
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
                              fontFamily: 'Iran Sans',
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFA6A6A6),
                              fontSize: 13),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: IconButton(
                            icon:
                                SvgPicture.asset("assets/images/Vector-20.svg"),
                            onPressed: () {
                              Sarmayesh((selectedOption) {
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
                                fontFamily: 'Iran Sans',
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFA6A6A6),
                                fontSize: 13),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            prefixIcon: IconButton(
                              icon: SvgPicture.asset(
                                  "assets/images/Vector-20.svg"),
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
                              fontFamily: 'Iran Sans',
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFA6A6A6),
                              fontSize: 13),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: IconButton(
                            icon:
                                SvgPicture.asset("assets/images/Vector-20.svg"),
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
                    height: 20,
                  ),
                  FacilitiesSelectorWidget(
                    selectable: [
                      CCTV(),
                      CenterAntenna(),
                      Door(),
                      BurglarAlarm(),
                      FireExtinguishing(),
                      Internet(),
                      DinningSalon(),
                      Guard(),
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
                  AdvInfo(_advInfo),
                  const SizedBox(
                    height: 40,
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
                                        fontSize: 20,
                                        fontFamily: MAIN_FONT_FAMILY),
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
              ])),
        ));
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
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 9.5),
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
                  const SizedBox(
                    height: 17,
                  ),
                  TwoItemInRow(
                      label1: "زمان دریافت اقساط",
                      label2: "تعداد اقساط",
                      widget1:
                          ReadOnlyTextField(_timeOfInstallmentsController, () {
                        TimeAghsat((selectedOption) {
                          _timeOfInstallmentsController.text = selectedOption;
                        });
                      }, width: getPageWidth(), fontSize: 13),
                      widget2:
                          ReadOnlyTextField(_countOfInstallmentsController, () {
                        TedadAghsat((selectedOption) {
                          _countOfInstallmentsController.text = selectedOption;
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
                  TwoItemInRow(
                      label1: "زمان دریافت اقساط",
                      label2: "تعداد اقساط",
                      widget1: SizedBox(
                        height: 41,
                        width: getPageWidth(),
                        child: TextField(
                          controller: _timeOfInstallments_vamBankiController,
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
                              icon: SvgPicture.asset(
                                  "assets/images/Vector-20.svg"),
                              onPressed: () {
                                TimeAghsat((selectedOption) {
                                  _timeOfInstallments_vamBankiController.text =
                                      selectedOption;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      widget2: SizedBox(
                        height: 41,
                        width: getPageWidth(),
                        child: TextField(
                          controller: _countOfInstallmentsVamBankiController,
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
                              icon: SvgPicture.asset(
                                  "assets/images/Vector-20.svg"),
                              onPressed: () {
                                TedadAghsat((selectedOption) {
                                  _countOfInstallmentsVamBankiController.text =
                                      selectedOption;
                                });
                              },
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
                      controller: _tedadaghsat_month_VamBankiController,
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
                            TedadAghsat((selectedOption) {
                              _tedadaghsat_month_VamBankiController.text =
                                  selectedOption;
                            });
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
}
