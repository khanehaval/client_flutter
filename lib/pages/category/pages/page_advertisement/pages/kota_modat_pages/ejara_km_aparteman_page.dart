import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvInfoModel.dart';
import 'package:flutter_application_1/pages/category/models/FacilitiesModel.dart';
import 'package:flutter_application_1/pages/category/shared/adv_info/advInfo.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/facilities_selector.dart';
import 'package:flutter_application_1/pages/category/shared/images_picker/images_picker.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/servises_wc.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_arrival%20time.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_jenskaf.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_kabinet.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_nafar_ezafe.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_service_sleep.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_system_garm.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_system_sarmayesh.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tamin_abe_garm.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tedad_Otagh.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tedad_takht_one_nafare.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tedad_takht_tow_nafare.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_zarfiat_paye.dart';
import 'package:flutter_application_1/pages/category/shared/namayesh.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/twoItemInRow.dart';
import 'package:flutter_application_1/pages/category/shared/widget/route_widget.dart';
import 'package:flutter_application_1/pages/category/shared/widget/switachable.dart';
import 'package:flutter_application_1/pages/category/shared/widget/text_field.dart';
import 'package:flutter_application_1/pages/category/shared/widget/widget_sowich_kotamodat.dart';
import 'package:get/get.dart';
import 'package:gradient_icon/gradient_icon.dart';

class EjaraKmApartemanPage extends StatefulWidget {
  EjaraKmApartemanPage({super.key});

  @override
  State<EjaraKmApartemanPage> createState() => _EjaraKmApartemanPageState();
}

class _EjaraKmApartemanPageState extends State<EjaraKmApartemanPage> {
  final aghsatType = "".obs;

  final onvan = "".obs;

  final _advInfo = AdvInfoModel();
// In the parent widget or controller
  final RxList<String> selectedImagesPath = RxList<String>();

  final hasAnbari = false.obs;
  final hasAsansor = false.obs;
  final hasParking = false.obs;

  final _agreement = false.obs;

  final hasshenase = false.obs;

  final _onePrice = 0.0.obs;

  final _buildDateController = TextEditingController();

  final _facilities = <FacilitiesModel>[].obs;

  final _recreation = <FacilitiesModel>[].obs;

  final _homeAppliances = <FacilitiesModel>[].obs;

  final _kitchenAppliances = <FacilitiesModel>[].obs;

  final _securityAppliances = <FacilitiesModel>[].obs;

  final _allPriceTextController = TextEditingController();

  final _metragTextController = TextEditingController();

  final _selectedImagesPath = [].obs;

  final _incomingTimeController = TextEditingController();

  final _outTimeController = TextEditingController();

  final _buildRoomsCountController = TextEditingController();

  final _buildBaseCapacityController = TextEditingController();

  final _buildMaxCapacityController = TextEditingController();

  final _buildRiteController = TextEditingController();

  final _buildAnimalController = TextEditingController();

  final _buildSmokingController = TextEditingController();

  final _buildShoesController = TextEditingController();

  final _buildDeprivationController = TextEditingController();

  final _buildSleepServiceCountController = TextEditingController();

  final _oneBedCountController = TextEditingController();

  final _twoBedCountController = TextEditingController();

  final _flooringController = TextEditingController();

  final _cabinetController = TextEditingController();

  final _coolingSystemController = TextEditingController();

  final _heatingSystemController = TextEditingController();

  final _abeGarmController = TextEditingController();

  final _wcController = TextEditingController();

  final submit = false.obs;

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
            route([
              " ثبت آگهی اکونومی",
              "اجاره کوتاه مدت آپارتمان",
              "اجاره کوتاه مدت",
            ]),
            const SizedBox(
              height: 30,
            ),
            TwoItemInRow2(
              label1: " اجاره روز خاص (تومان)",
              label2: "اجاره روز عادی (تومان) ",
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
              height: 15,
            ),
            TwoItemInRow2(
              label1: " هزینه نفر اضافه (تومان)",
              label2: "   (تومان)اجاره روز تعطیل",
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
            switchable(_agreement, "توافقی"),
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
              height: 30,
            ),
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
                        color: Color.fromRGBO(166, 166, 166, 1),
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
              height: 30,
            ),
            TwoItemInRow(
                label1: "ساعت خروج",
                label2: "ساعت ورود",
                widget1: ReadOnlyTextField(_outTimeController, () {
                  ArrivalTime((selectedOption) {
                    _outTimeController.text = selectedOption;
                  });
                }, width: getPageWidth()),
                widget2: ReadOnlyTextField(_incomingTimeController, () {
                  ArrivalTime((selectedOption) {
                    _incomingTimeController.text = selectedOption;
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
              height: 30,
            ),
            TwoItemInRow(
              label1: "نفر اضافه تا ",
              label2: "ظرفیت پایه",
              widget1: ReadOnlyTextField(_buildMaxCapacityController, () {
                NafarEzafe((selectedOption) {
                  _buildMaxCapacityController.text = selectedOption;
                });
              }, width: getPageWidth()),
              widget2: ReadOnlyTextField(_buildBaseCapacityController, () {
                ZarfiatPaye((selectedOption) {
                  _buildBaseCapacityController.text = selectedOption;
                });
              }, width: getPageWidth()),
            ),
            const SizedBox(
              height: 30,
            ),
            TwoItemInRow(
                label2: "تعداد اتاق ",
                label1: " طبقه ",
                widget1: ReadOnlyTextField(_buildRoomsCountController, () {
                  TedadOtagh((selectedKey, selectedLabel) {
                    _buildRoomsCountController.text =
                        selectedLabel; // Set the label as the text in the controller
                  });
                }, width: getPageWidth()),
                widget2: ReadOnlyTextField(_buildDateController, () {
                  showNumberPicker((date) => _buildDateController.text = date);
                }, width: getPageWidth())),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                switchable(hasAsansor, "آسانسور"),
                switchable(hasParking, "پارکینگ"),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SwitchKotaModat(),
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
              height: 30,
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
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "تعداد سرویس خواب",
                  style: TextStyle(
                      color: Color.fromRGBO(99, 99, 99, 1),
                      fontFamily: MAIN_FONT_FAMILY),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            ReadOnlyTextField(_buildSleepServiceCountController, () {
              ServiceSleep((selectedOption) {
                _buildSleepServiceCountController.text = selectedOption;
              });
            }),
            const SizedBox(
              height: 20,
            ),
            TwoItemInRow(
                label1: "تعداد تخت دو نفره",
                label2: "تعداد تخت یک نفره",
                widget1: ReadOnlyTextField(_twoBedCountController, () {
                  TedadTakhtTowNafare((selectedOption) {
                    _twoBedCountController.text = selectedOption;
                  });
                }, width: getPageWidth()),
                widget2: ReadOnlyTextField(_oneBedCountController, () {
                  TedadTakhtOneNafare((selectedOption) {
                    _oneBedCountController.text = selectedOption;
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
              height: 30,
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
              height: 10,
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
              }, width: getPageWidth()),
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
              height: 30,
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
              height: 30,
            ),
            FacilitiesSelectorWidget(
              title: "امکانات تفریحی",
              selectable: [
                GameConsole(),
                Billiard(),
                Haki(),
                HandFootball(),
                PingPong(),
                Kabab()
              ],
              selected: _recreation,
            ),
            SizedBox(
              height: 20,
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
              height: 30,
            ),
            FacilitiesSelectorWidget(
              title: "لوازم خانگی",
              selectable: [
                Moble(),
                TV(),
                Digital(),
                Audio(),
                Hairdryer(),
                Iron()
              ],
              selected: _homeAppliances,
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
              height: 30,
            ),
            FacilitiesSelectorWidget(
              title: "لوازم آشپزخانه",
              selectable: [
                Refrigerator(),
                Kettle(),
                Stove(),
                Laundry(),
                TeaMaker(),
                Microwave()
              ],
              selected: _kitchenAppliances,
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
              height: 30,
            ),
            FacilitiesSelectorWidget(
              title: "امکانات امنیتی",
              selectable: [
                CCTV(),
                CenterAntenna(),
                Door(),
                BurglarAlarm(),
                FireExtinguishing(),
                Internet(),
                Guard()
              ],
              selected: _securityAppliances,
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
              height: 30,
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
      ),
    );
  }
}
