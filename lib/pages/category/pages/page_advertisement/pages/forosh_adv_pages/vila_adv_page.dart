import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvInfoModel.dart';
import 'package:flutter_application_1/pages/category/models/FacilitiesModel.dart';
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
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tedad_aghsat.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_time_aghsat.dart';
import 'package:flutter_application_1/pages/category/shared/namayesh.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/twoItemInRow.dart';
import 'package:flutter_application_1/pages/category/shared/widget/route_widget.dart';
import 'package:flutter_application_1/pages/category/shared/widget/switachable.dart';
import 'package:flutter_application_1/pages/category/shared/widget/text_field.dart';
import 'package:flutter_application_1/repo/account_repo.dart';
import 'package:flutter_application_1/services/models/server_model/sale_aparteman_res.dart';
import 'package:flutter_application_1/services/models/server_model/sale_vila.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:gradient_icon/gradient_icon.dart';

import '../../../../shared/switchItem.dart';

class VilaAdvPage extends StatefulWidget {
  @override
  State<VilaAdvPage> createState() => _VilaAdvPageState();
}

class _VilaAdvPageState extends State<VilaAdvPage> {
  final aghsatType = "".obs;
  final _accountRepo = GetIt.I.get<AccountRepo>();
  SaleVilaServerModel saleVilaServerModel = SaleVilaServerModel();
  final _onePrice = 0.0.obs;
  final submit = false.obs;

  final hasAnbari = false.obs;

  final hasAsansor = false.obs;
  final _buttonIsPressed = false.obs;

  final hasParking = false.obs;
// In the parent widget or controller
  final RxList<String> selectedImagesPath = RxList<String>();

  final _advInfo = AdvInfoModel();

  final _allPriceTextController = TextEditingController();

  final _metragTextController = TextEditingController();

  final _selectedImagesPath = [].obs;

  final _facilities = <FacilitiesModel>[].obs;

  final _buildingSideController = TextEditingController();

  final _buildUnitOfAnyFloorCountController = TextEditingController();

  final _buildFloorsCountController = TextEditingController();

  final _timeOfInstallmentsController = TextEditingController();
  final _timeAghsatController = TextEditingController();

  final _buildDateController = TextEditingController();

  final _buildRoomsCountController = TextEditingController();

  final _buildDocumentController = TextEditingController();

  final _buildFloorController = TextEditingController();
  final _metragbanaTextController = TextEditingController();
  final _metrajzaminTextController = TextEditingController();
  final _TedadOtaghTextController = TextEditingController();

  final _buildAllFloorsCountController = TextEditingController();

  final _reBuildController = TextEditingController();

  final _countOfInstallmentsController = TextEditingController();
  final _tedadaghsat_monthController = TextEditingController();

  final _totalInstallmentsController = TextEditingController();

  final _flooringController = TextEditingController();

  final _cabinetController = TextEditingController();

  final _coolingSystemController = TextEditingController();

  final _heatingSystemController = TextEditingController();

  final _abeGarmController = TextEditingController();

  final _wcController = TextEditingController();

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

  Future<void> _SaleVila() async {
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
    final success =
        await _accountRepo.saleVila(saleVilaData: saleVilaServerModel);
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
            route(["ثبت آگهی اکونومی", "فروش مسکونی", "خرید و فروش ویلا"]),
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
                        color: Color.fromRGBO(99, 99, 99, 1),
                        fontFamily: MAIN_FONT_FAMILY,
                        fontSize: 13),
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
                  saleVilaServerModel.totalPrice = double.parse(_);
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
              label2: "متراژ زمین",
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
                    saleVilaServerModel.buildingMeterage = double.parse(_);
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
                        color: Color.fromRGBO(
                          48,
                          48,
                          48,
                          1,
                        )),
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
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: const Text(
                      "قیمت هر متر مربع (تومان)",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: MAIN_FONT_FAMILY,
                          color: Color.fromRGBO(166, 166, 166, 1)),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    width: 1, //
                    color:
                        Theme.of(context).hintColor //  <--- border width here
                    ),
              ),
              height: 41,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      _onePrice.string,
                      style: const TextStyle(
                          color: Color.fromRGBO(
                        166,
                        166,
                        166,
                        1,
                      )),
                    )),
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
                label2: "سن بنا ",
                widget1: ReadOnlyTextField(_TedadOtaghTextController, () {
                  showNumberPicker((selectedOption) {
                    _TedadOtaghTextController.text = selectedOption;
                    saleVilaServerModel.room = selectedOption;
                  });
                }, width: getPageWidth()),
                widget2: ReadOnlyTextField(_buildDateController, () {
                  SenBana((selectedOption) {
                    _buildDateController.text = selectedOption;
                    saleVilaServerModel.age = selectedOption;
                  });
                }, width: getPageWidth(), fontSize: 13)),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "*",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromRGBO(156, 64, 64, 1)),
                  ),
                  Container(
                    child: const Text(
                      "تعداد طبقات ویلا",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: MAIN_FONT_FAMILY,
                          color: Color.fromRGBO(99, 99, 99, 1)),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
            ReadOnlyTextField(_buildFloorsCountController, () {
              showNumberPicker((_) {
                _buildFloorsCountController.text = _;
                saleVilaServerModel.villaTotalFloors =
                    _buildFloorsCountController.text;
              });
            }),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                switchable(hasAnbari, "انباری"),
                switchable(hasParking, "پارکینگ"),
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
              style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 5.0),
                  child: Text(
                    "نوع سند",
                    style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff636363),
                        fontFamily: MAIN_FONT_FAMILY),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            ReadOnlyTextField(_buildDocumentController, () {
              NoeSanad((selectedOption) {
                _buildDocumentController.text = selectedOption;
                saleVilaServerModel.docType = selectedOption;
              });
            }),
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
                  _cabinetController.text = selectedLabel;
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
              height: 20,
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
            const Divider(),
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
                if (submit.value) {
                  saleVilaServerModel.images = _selectedImagesPath.value.first;
                  saleVilaServerModel.wc = _wcController.text;
                  saleVilaServerModel.hasBalcony =
                      _facilities.value.contains(Teras());
                  saleVilaServerModel.hasBathTub =
                      _facilities.value.contains(Bathtub());
                  saleVilaServerModel.hasCentralAnthena =
                      _facilities.value.contains(CenterAntenna());
                  saleVilaServerModel.hasConferenceHall =
                      _facilities.value.contains(ConferenceHall());
                  saleVilaServerModel.hasGamingRoom =
                      _facilities.value.contains(GameRoom());
                  saleVilaServerModel.hasGazebo =
                      _facilities.value.contains(AlAchiq());
                  saleVilaServerModel.hasMasterRoom =
                      _facilities.value.contains(MasterRoom());
                  saleVilaServerModel.hasRoofGarden =
                      _facilities.value.contains(RoofGarden());
                  saleVilaServerModel.hasSaunaJacuzzi =
                      _facilities.value.contains(Sona());
                  saleVilaServerModel.hasSportingHall =
                      _facilities.value.contains(Gym());
                  saleVilaServerModel.hasSwimmingPool =
                      _facilities.value.contains(SwimmingPool());
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
      ),
    );
  }

  Widget aghsatiForoshWidget(BuildContext context) {
    final isSwitched = true.obs;

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
                        keyboardType: TextInputType.number,
                        onChanged: (_) {
                          saleVilaServerModel.loanInstallmentAmount =
                              double.parse(_);
                        },
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'مبلغ را وارد کنید',
                          hintStyle: const TextStyle(
                            fontSize: 13,
                            fontFamily: MAIN_FONT_FAMILY,
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
                        onChanged: (_) {
                          saleVilaServerModel.prepayment = double.parse(_);
                        },
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'مبلغ را وارد کنید',
                          hintStyle: const TextStyle(
                            fontSize: 13,
                            fontFamily: MAIN_FONT_FAMILY,
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
                          ReadOnlyTextField(_countOfInstallmentsController, () {
                        TedadAghsat((selectedKey, selectedLabel) {
                          _totalInstallmentsController.text = selectedLabel;
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
        switchable(
          isSwitched,
          "ملک با وام بانکی",
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
                        keyboardType: TextInputType.number,
                        onChanged: (_) {
                          saleVilaServerModel.installmentAmount =
                              double.parse(_);
                        },
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
                        onChanged: (_) {
                          saleVilaServerModel.loanInstallmentAmount =
                              double.parse(_);
                        },
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
                  const SizedBox(height: 25),
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
                    height: 41,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'انتخاب نشده',
                        hintStyle: const TextStyle(
                            color: Color(0xFFA6A6A6), fontSize: 13),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: ReadOnlyTextField(
                          _tedadaghsat_monthController,
                          () {
                            TedadAghsat((selectedKey, selectedLabel) {
                              _totalInstallmentsController.text = selectedLabel;
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
