import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvInfoModel.dart';
import 'package:flutter_application_1/pages/category/models/FacilitiesModel.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/ejara_adv_pages/ejara_vila_page.dart';
import 'package:flutter_application_1/pages/category/shared/adv_info/advInfo.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/facilities_selector.dart';
import 'package:flutter_application_1/pages/category/shared/images_picker/images_picker.dart';
import 'package:flutter_application_1/pages/category/shared/namayesh.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/twoItemInRow.dart';
import 'package:flutter_application_1/pages/category/shared/widget/text_field.dart';
import 'package:flutter_application_1/pages/category/shared/widget/route_widget.dart';
import 'package:get/get.dart';
import 'package:gradient_icon/gradient_icon.dart';

import '../../../../shared/widget/submit_row.dart';
import '../../../../shared/widget/switachable.dart';

class EjaraKmVilaPage extends StatefulWidget {
  @override
  State<EjaraKmVilaPage> createState() => _EjaraKmVilaPageState();
}

class _EjaraKmVilaPageState extends State<EjaraKmVilaPage> {
  final fullTime = false.obs;

  final _advInfo = AdvInfoModel();

  final hasParking = false.obs;

  final hasmeli = false.obs;

  final _agreement = false.obs;

  final hasshenase = false.obs;

  final _onePrice = 0.0.obs;

  final _facilities = <FacilitiesModel>[].obs;

  final _recreation = <FacilitiesModel>[].obs;

  final _homeAppliances = <FacilitiesModel>[].obs;

  final _kitchenAppliances = <FacilitiesModel>[].obs;

  final _securityAppliances = <FacilitiesModel>[].obs;

  final _allPriceTextController = TextEditingController();

  final _metragTextController = TextEditingController();

  final submit = false.obs;

  final _selectedImagesPath = [].obs;

  final _incomingTimeController = TextEditingController();

  final _outTimeController = TextEditingController();

  final _buildRoomsCountController = TextEditingController();

  final _buildFloorController = TextEditingController();

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

  final _floorMaterialController = TextEditingController();

  final _cabinetController = TextEditingController();

  final _coldTypeController = TextEditingController();

  final _heatTypeController = TextEditingController();

  final _heatWaterController = TextEditingController();

  final _wcController = TextEditingController();

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
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(children: [
            route([
              "اجاره کوتاه مدت ویلا",
              "اجاره کوتاه مدت",
              " ثبت آگهی اکونومی"
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
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            TwoItemInRow2(
              label1: "متراژ بنا ",
              label2: "متراژ زمین",
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
              height: 30,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            TwoItemInRow2(
                label1: "ساعت خروج",
                label2: "ساعت ورود",
                widget1: ReadOnlyTextField(_outTimeController, () {},
                    width: getPageWidth()),
                widget2: ReadOnlyTextField(_incomingTimeController, () {},
                    width: getPageWidth())),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            TwoItemInRow2(
              label1: "نفر اضافه تا ",
              label2: "ظرفیت پایه",
              widget1: ReadOnlyTextField(_buildMaxCapacityController, () {
                showNumberPicker((_) {
                  _buildMaxCapacityController.text = _;
                });
              }, width: getPageWidth()),
              widget2: ReadOnlyTextField(_buildBaseCapacityController, () {
                showNumberPicker((_) {
                  _buildBaseCapacityController.text = _;
                });
              }, width: getPageWidth()),
            ),
            const SizedBox(
              height: 30,
            ),
            TwoItemInRow2(
              label2: "تعداد اتاق ",
              label1: " طبقه ",
              widget1: ReadOnlyTextField(_buildRoomsCountController, () {
                showNumberPicker((_) {
                  _buildRoomsCountController.text = _;
                });
              }, width: getPageWidth()),
              widget2: ReadOnlyTextField(_buildFloorController, () {
                showNumberPicker((_) {
                  _buildFloorController.text = _;
                });
              }, width: getPageWidth()),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                switchable(fullTime, "دربست"),
                switchable(hasParking, "پارکینگ"),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            TwoItemInRow(
              label1: "شرایط برگزاری مراسم",
              label2: "شرایط حیوانات خانگی",
              widget1: ReadOnlyTextField(_buildRiteController, () {},
                  width: getPageWidth()),
              widget2: ReadOnlyTextField(_buildAnimalController, () {},
                  width: getPageWidth()),
            ),
            const SizedBox(
              height: 20,
            ),
            TwoItemInRow(
                label1: "استعمال دخانیات",
                label2: "تردد با کفش",
                widget1: ReadOnlyTextField(_buildSmokingController, () {},
                    width: getPageWidth()),
                widget2: ReadOnlyTextField(_buildShoesController, () {},
                    width: getPageWidth())),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "مدارک محرمیت",
                  style: TextStyle(
                      color: Color.fromRGBO(99, 99, 99, 1),
                      fontFamily: MAIN_FONT_FAMILY),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            ReadOnlyTextField(
              _buildDeprivationController,
              () {},
            ),
            const SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              switchable(hasshenase, "شناسنامه"),
              switchable(hasmeli, "کارت ملی")
            ]),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
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
            ReadOnlyTextField(_buildSleepServiceCountController, () {
              showNumberPicker((_) {
                _buildSleepServiceCountController.text = _;
              });
            }),
            const SizedBox(
              height: 20,
            ),
            TwoItemInRow(
                label1: "تعداد تخت دو نفره",
                label2: "تعداد تخت یک نفره",
                widget1: ReadOnlyTextField(_twoBedCountController, () {
                  showNumberPicker((_) {
                    _twoBedCountController.text = _;
                  });
                }, width: getPageWidth()),
                widget2: ReadOnlyTextField(_oneBedCountController, () {
                  showNumberPicker((_) {
                    _oneBedCountController.text = _;
                  });
                }, width: getPageWidth())),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
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
                //todo
                // showNumberPicker((_) {
                //   _oneBedCountController.text = _;
                // });
              }, width: getPageWidth()),
              widget2: ReadOnlyTextField(_floorMaterialController, () {
                // showNumberPicker((_) {
                //   _oneBedCountController.text = _;
                // });
              }, width: getPageWidth()),
            ),
            const SizedBox(
              height: 15,
            ),
            TwoItemInRow(
              label1: "نوع سیستم گرمایش",
              label2: "نوع سیستم سرمایش",
              widget1: ReadOnlyTextField(_heatTypeController, () {
                // showNumberPicker((_) {
                //   _oneBedCountController.text = _;
                // });
              }, width: getPageWidth()),
              widget2: ReadOnlyTextField(_coldTypeController, () {},
                  width: getPageWidth()),
            ),
            const SizedBox(
              height: 10,
            ),
            TwoItemInRow(
              label1: "سرویس بهداشتی",
              label2: "تامین کننده آب گرم",
              widget1: ReadOnlyTextField(_wcController, () {},
                  width: getPageWidth()),
              widget2: ReadOnlyTextField(_heatWaterController, () {},
                  width: getPageWidth()),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
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
              height: 30,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
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
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
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
              endIndent: 20,
              indent: 20,
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
              endIndent: 20,
              indent: 20,
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
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 30,
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
        ),
      ),
    );
  }
}
