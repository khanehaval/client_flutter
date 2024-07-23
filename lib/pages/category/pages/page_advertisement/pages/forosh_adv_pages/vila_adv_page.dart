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
import 'package:flutter_application_1/pages/category/shared/more_emkanat/sanad.dart';
import 'package:flutter_application_1/pages/category/shared/namayesh.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';

import 'package:flutter_application_1/pages/category/shared/twoItemInRow.dart';
import 'package:flutter_application_1/pages/category/shared/widget/route_widget.dart';
import 'package:flutter_application_1/pages/category/shared/widget/submit_row.dart';
import 'package:flutter_application_1/pages/category/shared/widget/switachable.dart';
import 'package:flutter_application_1/pages/category/shared/widget/text_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:gradient_icon/gradient_icon.dart';

import '../../../../shared/switchItem.dart';

class VilaAdvPage extends StatefulWidget {
  @override
  State<VilaAdvPage> createState() => _VilaAdvPageState();
}

class _VilaAdvPageState extends State<VilaAdvPage> {
  final aghsatType = "".obs;

  final _onePrice = 0.0.obs;

  final submit = false.obs;

  final hasAnbari = false.obs;

  final hasAsansor = false.obs;

  final hasParking = false.obs;

  final _advInfo = AdvInfoModel();

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
  final _metragbanaTextController = TextEditingController();
  final _metrajzaminTextController = TextEditingController();

  final _buildAllFloorsCountController = TextEditingController();

  final _reBuildController = TextEditingController();

  final _countOfInstallmentsController = TextEditingController();

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

  final _numberOfInstallmentsController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _allPriceTextController.addListener(_checkFields);
    _metragbanaTextController.addListener(_checkFields);
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
    _metragTextController.dispose();

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
            route([" خرید و فروش ویلا", "فروش مسکونی", "  ثبت آگهی اکونومی"]),
            const SizedBox(
              height: 20,
            ),
            TwoItemInRow1(
              label1: "قیمت هر متر مربع (تومان)",
              label2: "قیمت کل (تومان)",
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
            TwoItemInRow2(
              label1: " متراژ بنا",
              label2: "متراژ زمین",
              widget1: SizedBox(
                height: 41,
                child: TextField(
                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.number,
                  onChanged: (m) {
                    _onePrice.value = m.isNotEmpty
                        ? int.parse(_buildAllFloorsCountController.text) /
                            int.parse(m)
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
              widget2: SizedBox(
                height: 41,
                width: getPageWidth(),
                child: TextField(
                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.number,
                  controller: _metragbanaTextController,
                  onChanged: (m) {
                    _onePrice.value = m.isNotEmpty
                        ? int.parse(_allPriceTextController.text) / int.parse(m)
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
                widget1: ReadOnlyTextField(_buildRoomsCountController, () {
                  showNumberPicker((_) {
                    _buildRoomsCountController.text = _;
                  });
                }, width: getPageWidth()),
                widget2: ReadOnlyTextField(_buildDateController, () {
                  persianDataPicker((date) => _buildDateController.text = date);
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
                    "تعداد طبقات ویلا",
                    style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY,
                        color: Color.fromRGBO(99, 99, 99, 1)),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            ReadOnlyTextField(_buildFloorsCountController, () {
              showNumberPicker((_) {
                _buildFloorsCountController.text = _;
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
                Text(
                  "نوع سند",
                  style: TextStyle(
                      color: Color.fromRGBO(166, 166, 166, 1),
                      fontFamily: MAIN_FONT_FAMILY),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            ReadOnlyTextField(_buildDocumentController, () {
              Sanad((p0) => _buildDocumentController.text = p0);
            }),
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
                  jahatSakhteman((p0) => _buildDirectionController.text = p0);
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
            const Divider(),
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
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'مبلغ را وارد کنید',
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
                          hintText: 'مبلغ را وارد کنید',
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
                        persianDataPicker((date) {
                          _timeOfInstallmentsController.text = date;
                        });
                      }, width: getPageWidth(), fontSize: 13),
                      widget2:
                          ReadOnlyTextField(_countOfInstallmentsController, () {
                        showNumberPicker((_) {
                          _countOfInstallmentsController.text = _;
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
                      widget1:
                          ReadOnlyTextField(_timeOfInstallmentsController, () {
                        persianDataPicker((date) {
                          _timeOfInstallmentsController.text = date;
                        });
                      }, width: getPageWidth(), fontSize: 13),
                      widget2:
                          ReadOnlyTextField(_countOfInstallmentsController, () {
                        showNumberPicker((_) {
                          _countOfInstallmentsController.text = _;
                        });
                      }, width: getPageWidth())),
                  const SizedBox(height: 25),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "تعداد اقساط (هر ماه)  ",
                      style: TextStyle(
                          color: Color.fromRGBO(166, 166, 166, 1),
                          fontFamily: MAIN_FONT_FAMILY),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(
                    height: 41,
                    child: TextField(
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
                    height: 30,
                  ),
                ],
              )
            : const SizedBox.shrink()),
      ],
    );
  }
}
