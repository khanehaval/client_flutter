import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvInfoModel.dart';
import 'package:flutter_application_1/pages/category/models/FacilitiesModel.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/facilities_selector.dart';
import 'package:flutter_application_1/pages/category/shared/images_picker/images_picker.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/Widget_NoeSanad.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/servises_wc.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_bazsazi.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_jenskaf.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_kabinet.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_sen_bana.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_system_garm.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_system_sarmayesh.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tamin_abe_garm.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tedad_aghsat.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tedad_koletabagheh.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tedad_vahed_dar%20tabagheh.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_time_aghsat.dart';
import 'package:flutter_application_1/pages/category/shared/namayesh.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/twoItemInRow.dart';
import 'package:flutter_application_1/pages/category/shared/widget/route_widget.dart';
import 'package:flutter_application_1/pages/category/shared/widget/switachable.dart';
import 'package:flutter_application_1/repo/account_repo.dart';
import 'package:flutter_application_1/services/models/server_model/sale_old_house.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:gradient_icon/gradient_icon.dart';

import '../../../../shared/adv_info/advInfo.dart';
import '../../../../shared/more_emkanat/jahat_sakhteman.dart';
import '../../../../shared/widget/text_field.dart';

class KolangiAdvPage extends StatefulWidget {
  KolangiAdvPage({super.key});

  @override
  State<KolangiAdvPage> createState() => _KolangiAdvPageState();
}

class _KolangiAdvPageState extends State<KolangiAdvPage> {
  final _buttonIsPressed = false.obs;
  final _accountRepo = GetIt.I.get<AccountRepo>();

  SaleOldHouseServerModel saleOldHouseServerModel = SaleOldHouseServerModel();
  final aghsatType = "".obs;
  final onvan = "".obs;
  final submit = false.obs;
  final hasAnbari = false.obs;
  final hasAsansor = false.obs;
  final _allPriceTextController = TextEditingController();
  final _metragTextController = TextEditingController();
  final _selectedImagesPath = [].obs;
  final _onePrice = 0.0.obs;
  final _advInfo = AdvInfoModel();
  final _facilities = <FacilitiesModel>[].obs;
  final _buildingSideController = TextEditingController();
  final _buildUnitOfAnyFloorCountController = TextEditingController();
  final _senBanaController = TextEditingController();
  final _buildFloorsCountController = TextEditingController();
  final _timeAghsatController = TextEditingController();
  final _buildDateController = TextEditingController();
  final _buildRoomsCountController = TextEditingController();
  final _buildDocumentController = TextEditingController();
  final _buildFloorController = TextEditingController();
  final _buildAllFloorsCountController = TextEditingController();
  final _reBuildController = TextEditingController();
  final _totalInstallmentsController = TextEditingController();
  final _flooringController = TextEditingController();
  final _cabinetController = TextEditingController();
  final _coolingSystemController = TextEditingController();
  final _heatingSystemController = TextEditingController();
  final _abeGarmController = TextEditingController();
  final _wcController = TextEditingController();
  final ValueNotifier<String> _persianWords = ValueNotifier<String>('');
  final _numberOfInstallmentsController = TextEditingController();
  // In the parent widget or controller
  final RxList<String> selectedImagesPath = RxList<String>();

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

  Future<void> _saleOldHouse() async {
    if (_allPriceTextController.text.isEmpty ||
        _metragTextController.text.isEmpty ||
        _buildFloorController.text.isEmpty ||
        _buildRoomsCountController.text.isEmpty) {
      Fluttertoast.showToast(
        msg: "لطفا همه فیلدهای داری * را پر کنید",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return;
    }

    _buttonIsPressed.value = true;
    final success = await _accountRepo.saleOldHouse(
        saleOldHouseData: saleOldHouseServerModel);
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
                  onChanged: (_) {
                    saleOldHouseServerModel.totalPrice = int.parse(_);
                  },
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
                        color: const Color(0xFFA6A6A6),
                      ),
                    ),
                    height: 41,
                    width: getPageWidth(),
                    child: Center(
                      child: Text(
                        _onePrice.string,
                        style: const TextStyle(
                          color: Color(0xFFA6A6A6),
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
              const SizedBox(
                height: 15,
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
                style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
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
                    NoeSanad(
                      (selectedKey, selectedLabel) {
                        _buildDocumentController.text = selectedLabel;
                      },
                    );
                    ;
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
                    BazSazi((selectedKey, selectedLabel) {
                      _reBuildController.text =
                          selectedLabel; // ذخیره برچسب در کنترلر
                    });
                  }, width: getPageWidth()),
                  widget2: ReadOnlyTextField(_buildingSideController, () {
                    jahatSakhteman((selectedKey, selectedLabel) {
                      _buildingSideController.text =
                          selectedLabel; // نمایش برچسب در کنترلر
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
                widget1: ReadOnlyTextField(_cabinetController, () {
                  Kabinet((selectedKey, selectedLabel) {
                    _cabinetController.text =
                        selectedLabel; // نمایش برچسب در کنترلر
                  });
                }, width: getPageWidth()),
                widget2: ReadOnlyTextField(_flooringController, () {
                  JensKaf((selectedKey, selectedLabel) {
                    _flooringController.text = selectedLabel;
                  });
                }, width: getPageWidth()),
              ),
              const SizedBox(
                height: 15,
              ),
              TwoItemInRow(
                label1: "نوع سیستم گرمایش",
                label2: "نوع سیستم سرمایش",
                widget1: ReadOnlyTextField(_heatingSystemController, () {
                  Garmayesh((selectedKey, selectedLabel) {
                    _heatingSystemController.text = selectedLabel;
                  });
                }, width: getPageWidth()),
                widget2: ReadOnlyTextField(_coolingSystemController, () {
                  Sarmayesh((selectedKey, selectedLabel) {
                    _coolingSystemController.text = selectedLabel;
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
                    Wc((selectedKey, selectedLabel) {
                      _wcController.text = selectedLabel;
                    });
                  }, width: getPageWidth()),
                  widget2: ReadOnlyTextField(_abeGarmController, () {
                    AbeGarm((selectedKey, selectedLabel) {
                      _abeGarmController.text = selectedLabel;
                    });
                  }, width: getPageWidth())),
              const SizedBox(
                height: 40,
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
              ImagesPicker(
                selectedImagesPath: selectedImagesPath,
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
                  TwoItemInRow2(
                    label1: "سن بنا ",
                    label2: "متراژ بنا ",
                    widget1: ReadOnlyTextField(_senBanaController, () {
                      SenBana((selectedOption) {
                        _senBanaController.text = selectedOption;
                      });
                    }, width: getPageWidth()),
                    widget2: SizedBox(
                      height: 41,
                      width: getPageWidth(),
                      child: TextField(
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
                    height: 15,
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "*",
                          style: TextStyle(
                              color: Color.fromRGBO(
                                156,
                                64,
                                64,
                                1,
                              ),
                              fontFamily: MAIN_FONT_FAMILY,
                              fontSize: 16),
                        ),
                        Text(
                          "تعداد اتاق ",
                          style: TextStyle(
                              color: Color.fromRGBO(99, 99, 99, 1),
                              fontFamily: MAIN_FONT_FAMILY),
                          textAlign: TextAlign.start,
                        ),
                      ],
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

  double getPageWidth_2(BuildContext context) => getPageWidth();

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
                      width: getPageWidth(),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: ' را وارد کنید', //todo
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
                      widget1: ReadOnlyTextField(_timeAghsatController, () {
                        TimeAghsat((selectedKey, selectedLabel) {
                          _timeAghsatController.text = selectedLabel;
                        });
                      }, width: getPageWidth(), fontSize: 13),
                      widget2:
                          ReadOnlyTextField(_totalInstallmentsController, () {
                        TedadAghsat((selectedKey, selectedLabel) {
                          _totalInstallmentsController.text = selectedLabel;
                        });
                      }, width: getPageWidth())),
                  const SizedBox(
                    height: 40,
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
