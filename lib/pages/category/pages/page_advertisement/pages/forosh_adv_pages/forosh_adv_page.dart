import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvInfoModel.dart';
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
    if (_allPriceTextController.text.isEmpty ||
        _metragTextController.text.isEmpty ||
        _buildFloorController.text.isEmpty ||
        _buildRoomsCountController.text.isEmpty) {
      Fluttertoast.showToast(
        msg: "لطفا همه فیلدها را پر کنید",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return;
    }

    _buttonIsPressed.value = true;
    final success = await _accountRepo.saleAparteman(
        saleApartemanData: saleApartemanServerModel);
    _buttonIsPressed.value = false;
    if (success!) {
      Fluttertoast.showToast(
        msg: "اطلاعات با موفقیت ارسال شد",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    } else {
      Fluttertoast.showToast(
        msg: "خطا در ارسال اطلاعات",
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
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 41,
                width: MediaQuery.of(context).size.width * 0.95,
                child: TextField(
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
                      saleApartemanServerModel.meterage = int.parse(_);
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
                    showNumberPicker((_) {
                      _buildRoomsCountController.text = _;
                      saleApartemanServerModel.room = _;
                      //
                    });
                  }, width: getPageWidth()),
                  widget2: ReadOnlyTextField(
                    _buildDateController,
                    () {
                      persianDataPicker(
                          (date) => _buildDateController.text = date);
                      saleApartemanServerModel.age = _buildDateController.text;
                    },
                    width: getPageWidth(),
                  )),
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
                  saleApartemanServerModel.floorNumber = _;
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
                      saleApartemanServerModel.floorNumber = _;
                    });
                  }, width: getPageWidth()),
                  widget2: ReadOnlyTextField(_buildDocumentController, () {
                    Sanad((_) {
                      _buildDocumentController.text = _;
                      saleApartemanServerModel.docType = _;
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
                      _buildUnitOfAnyFloorCountController, (_) {
                    saleApartemanServerModel.totalUnits = int.parse(_);
                    showNumberPicker((_) {
                      _buildUnitOfAnyFloorCountController.text = _;
                      saleApartemanServerModel.unitInFloor = _;
                    });
                  }, width: getPageWidth())),
              const SizedBox(
                height: 15,
              ),
              TwoItemInRow(
                  label1: "بازسازی",
                  label2: "جهت ساختمان",
                  widget1: ReadOnlyTextField(_reBuildController, (_) {
                    //todo
                    saleApartemanServerModel.reconstruct = _;
                  }, width: getPageWidth()),
                  widget2: ReadOnlyTextField(_buildDirectionController, () {
                    jahatSakhteman((_) {
                      _buildDirectionController.text = _;
                      saleApartemanServerModel.buildingSide = _;
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
                widget1: ReadOnlyTextField(_floorMaterialController, (_) {
                  //todo
                  saleApartemanServerModel.flooringMaterialType = _;
                }, width: getPageWidth()),
                widget2: ReadOnlyTextField(_cabinetController, (_) {
                  //todo
                  saleApartemanServerModel.cabinetType = _;
                }, width: getPageWidth()),
              ),
              const SizedBox(
                height: 15,
              ),
              TwoItemInRow(
                label1: "نوع سیستم گرمایش",
                label2: "نوع سیستم سرمایش",
                widget1: ReadOnlyTextField(_heatTypeController, (_) {
                  //todo
                  saleApartemanServerModel.heatingSystemType = _;
                }, width: getPageWidth()),
                widget2: ReadOnlyTextField(_coldTypeController, (_) {
                  //todo
                  saleApartemanServerModel.coolingSystemType = _;
                }, width: getPageWidth()),
              ),
              const SizedBox(
                height: 15,
              ),
              TwoItemInRow(
                  label1: "سرویس بهداشتی",
                  label2: "تامین کننده آب گرم",
                  widget1: ReadOnlyTextField(_wcController, (_) {
                    //todo
                    saleApartemanServerModel.wc = _;
                  }, width: getPageWidth()),
                  widget2: ReadOnlyTextField(_heatWaterController, (_) {
                    //todo
                    saleApartemanServerModel.heatWaterSystemType = _;
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
                    saleApartemanServerModel.images = [
                      _selectedImagesPath.first
                    ];
                    saleApartemanServerModel.wc = _wcController.text;
                    saleApartemanServerModel.hasLobby =
                        _facilities.contains(Labi());
                    saleApartemanServerModel.hasBathTub =
                        _facilities.contains(Bathtub());
                    saleApartemanServerModel.hasMasterRoom =
                        _facilities.contains(MasterRoom());
                    saleApartemanServerModel.hasBalcony =
                        _facilities.contains(Teras());
                    saleApartemanServerModel.hasSwimmingPool =
                        _facilities.contains(SwimmingPool());
                    saleApartemanServerModel.hasRoofGarden =
                        _facilities.contains(RoofGarden());
                    saleApartemanServerModel.hasGamingRoom =
                        _facilities.contains(GameRoom());
                    saleApartemanServerModel.hasGazebo =
                        _facilities.contains(AlAchiq());
                    saleApartemanServerModel.hasGamingRoom =
                        _facilities.contains(GameRoom());
                    saleApartemanServerModel.hasSportingHall =
                        _facilities.contains(Gym());
                    saleApartemanServerModel.hasConferenceHall =
                        _facilities.contains(ConferenceHall());
                    saleApartemanServerModel.hasCentralAntenna =
                        _facilities.contains(CenterAntenna());
                    saleApartemanServerModel.hasSaunaJacuzzi =
                        _facilities.contains(Sona());
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
                        onChanged: (_) {
                          saleApartemanServerModel.loanInstallmentAmount =
                              int.parse(_);
                        },
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'تایپ کنید', //todo
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
                        onChanged: (_) {
                          saleApartemanServerModel.prepayment = int.parse(_);
                        },
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'تایپ کنید', //todo
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
                          ReadOnlyTextField(_timeOfInstallmentsController, (_) {
                        persianDataPicker((date) {
                          _timeOfInstallmentsController.text = date;
                          saleApartemanServerModel.installmentPaybackTime = _;
                        });
                      }, width: getPageWidth(), fontSize: 13),
                      widget2:
                          ReadOnlyTextField(_countOfInstallmentsController, () {
                        showNumberPicker((_) {
                          _countOfInstallmentsController.text = _;
                          saleApartemanServerModel.installmentNumber = _;
                        });
                      }, width: getPageWidth())),
                  const SizedBox(
                    width: 25,
                    height: 15,
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
                    "تعداد اقساط (هر ماه)  ",
                    style: TextStyle(
                        color: Color.fromRGBO(99, 99, 99, 1),
                        fontFamily: MAIN_FONT_FAMILY,
                        fontSize: 13),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
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
