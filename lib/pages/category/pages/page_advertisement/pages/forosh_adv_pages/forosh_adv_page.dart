import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvInfoModel.dart';
import 'package:flutter_application_1/pages/category/shared/adv_info/advInfo.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/facilities_selector.dart';
import 'package:flutter_application_1/pages/category/shared/images_picker/images_picker.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/Widget_NoeSanad.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/jahat_sakhteman.dart';
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
import 'package:flutter_application_1/pages/category/shared/widget/switachable.dart';
import 'package:flutter_application_1/pages/category/shared/widget/text_field.dart';
import 'package:flutter_application_1/repo/account_repo.dart';
import 'package:flutter_application_1/services/models/server_model/sale_aparteman.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:gradient_icon/gradient_icon.dart';

import '../../../../models/FacilitiesModel.dart';

class ForoshAdvPage extends StatefulWidget {
  // Location location;
  Location location = const Location();
  //todo
  @override
  State<ForoshAdvPage> createState() => _ForoshAdvPageState();
}

class _ForoshAdvPageState extends State<ForoshAdvPage> {
  final _accountRepo = GetIt.I.get<AccountRepo>();

  final ImageController imageController = Get.put(ImageController());
  SaleApartemanServerModel saleApartemanServerModel =
      SaleApartemanServerModel();

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
  final loanInstallmentAmount = TextEditingController();
  final prepayment = TextEditingController();

// In the parent widget or controller
  final RxList<String> selectedImagesPath = RxList<String>();

  final _facilities = <FacilitiesModel>[].obs;

  final _buildDirectionController = TextEditingController();

  final _TedadVahedTabaghehController = TextEditingController();

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
  final _SenBanaController = TextEditingController();

  final _heatTypeController = TextEditingController();
  final _heatWaterController = TextEditingController();
  final _buttonIsPressed = false.obs;

  final _wcController = TextEditingController();
  final ValueNotifier<String> _persianWords = ValueNotifier<String>('');

  final _advInfo = AdvInfoModel();
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
    // saleApartemanServerModel.location = widget.location;
    saleApartemanServerModel.location = const Location();
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

  Future<void> _aparteman() async {
    if (submit.value) {
      _buttonIsPressed.value = true;
      final success = await _accountRepo.saleAparteman(
          saleApartemanData: saleApartemanServerModel);
      _buttonIsPressed.value = false;

      Fluttertoast.showToast(
        msg: success! ? "اطلاعات با موفقیت ارسال شد" : "خطا در ارسال اطلاعات",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        backgroundColor: success ? Colors.green : Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    } else {
      Fluttertoast.showToast(
        msg: "لطفا همه فیلدهای داری * را پر کنید",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "*",
                    style: TextStyle(
                      fontSize: 13,
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
                          color: Color.fromRGBO(99, 99, 99, 1),
                          fontFamily: MAIN_FONT_FAMILY,
                          fontSize: 13),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 41,
                width: MediaQuery.of(context).size.width * 0.95,
                child: TextField(
                  style: const TextStyle(fontFamily: MAIN_FONT_FAMILY),
                  textAlign: TextAlign.right,
                  controller: _metragTextController,
                  onChanged: (_) {
                    saleApartemanServerModel.totalPrice = int.parse(_);
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'تایپ کنید',
                    hintStyle: const TextStyle(
                      fontSize: 13,
                      fontFamily: MAIN_FONT_FAMILY,
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
                        color: Color.fromRGBO(99, 99, 99, 1),
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
                          color: Theme.of(context)
                              .hintColor //  <--- border width here
                          ),
                    ),
                    height: 41,
                    width: getPageWidth(),
                    child: Center(
                      child: Text(
                        _onePrice.string,
                        style: const TextStyle(fontFamily: MAIN_FONT_FAMILY),
                      ),
                    ),
                  ),
                ),
                widget2: SizedBox(
                  height: 41,
                  width: getPageWidth(),
                  child: TextField(
                    style: const TextStyle(fontFamily: MAIN_FONT_FAMILY),
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.number,
                    controller: _allPriceTextController,
                    onChanged: (_) {
                      _onePrice.value = _.isNotEmpty
                          ? int.parse(_) / int.parse(_metragTextController.text)
                          : 0;
                      saleApartemanServerModel.meterage = int.parse(_);
                    },
                    decoration: InputDecoration(
                      hintText: "0",
                      hintStyle: const TextStyle(
                        fontSize: 13,
                        fontFamily: MAIN_FONT_FAMILY,
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
              const Divider(
                color: Color.fromRGBO(
                  226,
                  226,
                  226,
                  1,
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
              const SizedBox(
                height: 20,
              ),
              TwoItemInRow2(
                  label1: "تعداد اتاق ",
                  label2: "سن بنا",
                  widget1: ReadOnlyTextField(_buildRoomsCountController, () {
                    TedadOtagh((_) {
                      _buildRoomsCountController.text = _;
                      saleApartemanServerModel.room =
                          _buildRoomsCountController.text;
                      //
                    });
                  }, width: getPageWidth()),
                  widget2: ReadOnlyTextField(_SenBanaController, () {
                    SenBana((selectedOption) {
                      _SenBanaController.text = selectedOption;
                      saleApartemanServerModel.age = _SenBanaController.text;
                    });
                  }, width: getPageWidth(), fontSize: 12)),
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
                          fontSize: 13, color: Color.fromRGBO(156, 64, 64, 1)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "طبقه ",
                      style: TextStyle(
                          fontSize: 13,
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
                  saleApartemanServerModel.floorNumber =
                      _buildFloorController.text;
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
                    TedadKoleTabagheh((selectedOption) {
                      _buildFloorsCountController.text = selectedOption;
                      saleApartemanServerModel.floorNumber =
                          _buildFloorsCountController.text;
                    });
                  }, width: getPageWidth()),
                  widget2: ReadOnlyTextField(_buildDocumentController, () {
                    NoeSanad((selectedOption) {
                      _buildDocumentController.text = selectedOption;
                      saleApartemanServerModel.docType =
                          _buildDocumentController.text;
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
                  widget2: ReadOnlyTextField(_TedadVahedTabaghehController, () {
                    TedadVahedTabagheh((selectedOption) {
                      _TedadVahedTabaghehController.text = selectedOption;
                      saleApartemanServerModel.unitInFloor =
                          _TedadVahedTabaghehController.text;
                    });
                  }, width: getPageWidth())),
              const SizedBox(
                height: 15,
              ),
              TwoItemInRow(
                  label1: "بازسازی",
                  label2: "جهت ساختمان",
                  widget1: ReadOnlyTextField(
                    _reBuildController,
                    () {
                      BazSazi((selectedOption) {
                        _reBuildController.text = selectedOption;
                        saleApartemanServerModel.reconstruct =
                            _reBuildController.text;
                      });
                    },
                    width: getPageWidth(),
                    fontSize: 10,
                  ),
                  widget2: ReadOnlyTextField(_buildDirectionController, () {
                    jahatSakhteman((selectedOption) {
                      _buildDirectionController.text = selectedOption;
                      saleApartemanServerModel.buildingSide =
                          _buildDirectionController.text;
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
                widget1: ReadOnlyTextField(_cabinetController, () {
                  Kabinet((selectedOption) {
                    _cabinetController.text = selectedOption;
                    saleApartemanServerModel.cabinetType =
                        _cabinetController.text;
                  });
                }, width: getPageWidth()),
                widget2: ReadOnlyTextField(_floorMaterialController, () {
                  JensKaf((selectedOption) {
                    _floorMaterialController.text = selectedOption;
                    saleApartemanServerModel.flooringMaterialType =
                        _floorMaterialController.text;
                  });
                }, width: getPageWidth()),
              ),
              const SizedBox(
                height: 15,
              ),
              TwoItemInRow(
                label1: "نوع سیستم گرمایش",
                label2: "نوع سیستم سرمایش",
                widget1: ReadOnlyTextField(_heatTypeController, () {
                  Garmayesh((selectedOption) {
                    _heatTypeController.text = selectedOption;
                    saleApartemanServerModel.heatingSystemType =
                        _heatTypeController.text;
                  });
                }, width: getPageWidth()),
                widget2: ReadOnlyTextField(_coldTypeController, () {
                  Sarmayesh((selectedOption) {
                    _coldTypeController.text = selectedOption;
                    saleApartemanServerModel.coolingSystemType =
                        _coldTypeController.text;
                  });
                }, width: getPageWidth()),
              ),
              const SizedBox(
                height: 15,
              ),
              TwoItemInRow(
                  label1: "سرویس بهداشتی",
                  label2: "تامین کننده آب گرم",
                  widget1: ReadOnlyTextField(_wcController, () {
                    Wc((selectedOption) {
                      _wcController.text = selectedOption;
                      saleApartemanServerModel.wc = _wcController.text;
                    });
                  }, width: getPageWidth()),
                  widget2: ReadOnlyTextField(_heatWaterController, () {
                    AbeGarm((selectedOption) {
                      _heatWaterController.text = selectedOption;
                      saleApartemanServerModel.heatWaterSystemType =
                          _heatWaterController.text;
                    });
                  }, width: getPageWidth())),
              const SizedBox(
                height: 40,
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
                height: 50,
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
              AdvInfo(_advInfo),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  if (submit.value) {
                    _aparteman();
                    Get.to(() => NamayeshAgahi());
                  }
                  if (submit.value) {
                    saleApartemanServerModel.images = selectedImagesPath.value;
                    saleApartemanServerModel.wc = _wcController.text;
                    saleApartemanServerModel.hasLobby =
                        _facilities.value.contains(Labi());
                    saleApartemanServerModel.hasBathTub =
                        _facilities.value.contains(Bathtub());
                    saleApartemanServerModel.hasMasterRoom =
                        _facilities.value.contains(MasterRoom());
                    saleApartemanServerModel.hasBalcony =
                        _facilities.value.contains(Teras());
                    saleApartemanServerModel.hasSwimmingPool =
                        _facilities.value.contains(SwimmingPool());
                    saleApartemanServerModel.hasRoofGarden =
                        _facilities.value.contains(RoofGarden());
                    saleApartemanServerModel.hasGamingRoom =
                        _facilities.value.contains(GameRoom());
                    saleApartemanServerModel.hasGazebo =
                        _facilities.value.contains(AlAchiq());
                    saleApartemanServerModel.hasGamingRoom =
                        _facilities.value.contains(GameRoom());
                    saleApartemanServerModel.hasSportingHall =
                        _facilities.value.contains(Gym());
                    saleApartemanServerModel.hasConferenceHall =
                        _facilities.value.contains(ConferenceHall());
                    saleApartemanServerModel.hasCentralAntenna =
                        _facilities.value.contains(CenterAntenna());
                    saleApartemanServerModel.hasSaunaJacuzzi =
                        _facilities.value.contains(Sona());
                    _aparteman();
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
                        ),
                        const SizedBox(
                          height: 40,
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
                        controller: loanInstallmentAmount,
                        focusNode: FocusNode(),
                        style: const TextStyle(
                          fontFamily: MAIN_FONT_FAMILY,
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (_) {
                          saleApartemanServerModel.loanInstallmentAmount =
                              int.parse(_);
                        },
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'تایپ کنید', //todo
                          hintStyle: const TextStyle(
                            fontSize: 13,
                            fontFamily: MAIN_FONT_FAMILY,
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
                        controller: prepayment,
                        focusNode: FocusNode(),
                        style: const TextStyle(
                          fontFamily: MAIN_FONT_FAMILY,
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (_) {
                          saleApartemanServerModel.prepayment = int.parse(_);
                        },
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'تایپ کنید', //todo
                          hintStyle: const TextStyle(
                            fontSize: 13,
                            fontFamily: MAIN_FONT_FAMILY,
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
                    height: 17,
                  ),
                  TwoItemInRow(
                      label1: "زمان دریافت اقساط",
                      label2: "تعداد اقساط",
                      widget1:
                          ReadOnlyTextField(_timeOfInstallmentsController, () {
                        TimeAghsat((selectedOption) {
                          _timeOfInstallmentsController.text = selectedOption;
                          saleApartemanServerModel.installmentPaybackTime =
                              selectedOption;
                        });
                      }, width: getPageWidth(), fontSize: 13),
                      widget2:
                          ReadOnlyTextField(_countOfInstallmentsController, () {
                        TedadAghsat((selectedOption) {
                          _countOfInstallmentsController.text = selectedOption;
                          saleApartemanServerModel.installmentNumber =
                              selectedOption;
                        });
                      }, width: getPageWidth())),
                  const SizedBox(
                    width: 25,
                    height: 15,
                  ),
                  SwitchItems(
                      onSelected: (_) {
                        saleApartemanServerModel.installmentPledge;
                      },
                      items: const ["ضامن", "سفته", "چک"]),
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
                    height: 20,
                  ),
                ],
              )
            : const SizedBox.shrink()),
      ],
    );
  }
}

Widget melkByVamBanki(BuildContext context) {
  final _countOfInstallmentsController = TextEditingController();
  SaleApartemanServerModel saleApartemanServerModel =
      SaleApartemanServerModel();

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
                      style: const TextStyle(
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                      onChanged: (_) {
                        saleApartemanServerModel.installmentAmount =
                            int.parse(_);
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'تایپ کنید', //todo
                        hintStyle: const TextStyle(
                          fontSize: 13,
                          fontFamily: MAIN_FONT_FAMILY,
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
                      style: const TextStyle(
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                      onChanged: (_) {
                        saleApartemanServerModel.loanInstallmentAmount =
                            int.parse(_);
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'تایپ کنید', //todo
                        hintStyle: const TextStyle(
                          fontSize: 13,
                          fontFamily: MAIN_FONT_FAMILY,
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
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "تعداد اقساط (هر ماه)  ",
                    style: TextStyle(
                        color: Color.fromRGBO(99, 99, 99, 1),
                        fontFamily: MAIN_FONT_FAMILY,
                        fontSize: 13),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 41,
                  child: TextField(
                    onChanged: (_) {
                      saleApartemanServerModel.loanInstallmentNumber = _;
                    },
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'انتخاب نشده',
                      hintStyle: const TextStyle(
                          color: Color(0xFFA6A6A6), fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: ReadOnlyTextField(
                        _countOfInstallmentsController,
                        () {
                          TedadAghsat((selectedOption) {
                            _countOfInstallmentsController.text =
                                selectedOption;
                          });
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
