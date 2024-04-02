import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/FacilitiesModel.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/kolangi_adv_page.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/date.dart';
import 'package:flutter_application_1/pages/category/shared/facilities_selector.dart';
import 'package:flutter_application_1/pages/category/shared/images_picker/images_picker.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/twoItemInRow.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class EjaraVilaPage extends StatelessWidget {
  final aghsatType = "".obs;
  final onvan = "".obs;

  final hasAnbari = false.obs;
  final hasAsansor = false.obs;
  final hasParking = false.obs;
  final _allPriceTextController = TextEditingController();
  final _metragTextController = TextEditingController();
  final _selectedImagesPath = [].obs;
  final _onePrice = 0.0.obs;

  final _facilities = <FacilitiesModel>[].obs;

  EjaraVilaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildaAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(children: [
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
              TwoItemInRow(
                label1: "میزان اجاره (تومان)",
                label2: "میزان رهن (تومان) ",
                widget1: SizedBox(
                  height: 41,
                  width: getPageWidth_2(context),
                  child: TextField(
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "0",
                      hintStyle: const TextStyle(
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
                  width: getPageWidth_2(context),
                  child: TextField(
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "0",
                      hintStyle: const TextStyle(
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
              TwoItemInRow(
                label1: " متراژ بنا",
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
                    width: getPageWidth_2(context),
                    child: Center(
                      child: Text(_onePrice.string),
                    ),
                  ),
                ),
                widget2: SizedBox(
                  height: 41,
                  width: getPageWidth_2(context),
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
                endIndent: 20,
                indent: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              TwoItemInRow(
                label1: "تعداد اتاق ",
                label2: "سن بنا ",
                widget1: SizedBox(
                  height: 41,
                  width: getPageWidth_2(context),
                  child: TextField(
                    readOnly: true,
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
                            showNumberPicker((_) {});
                          },
                        )),
                  ),
                ),
                widget2: SizedBox(
                  height: 41,
                  width: getPageWidth_2(context),
                  child: TextField(
                    readOnly: true,
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
                          persianDataPicker((date) {
                            print(date);
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
                      "تعداد طبقات ویلا  ",
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
                    hintStyle:
                        const TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: IconButton(
                      icon: SvgPicture.asset("assets/images/Vector-20.svg"),
                      onPressed: () {
                        showNumberPicker((_) {});
                      },
                    ),
                  ),
                ),
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
                "سایر ویژگی ها",
                style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 15),
              ),
              const SizedBox(
                height: 15,
              ),
              TwoItemInRow(
                label1: "بازسازی",
                label2: "جهت ساختمان",
                widget1: Container(
                  height: 41,
                  width: getPageWidth_2(context),
                  child: TextField(
                    readOnly: true,
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
                            // _show_item_1.value = !_show_item_1.isTrue;
                          },
                        )),
                  ),
                ),
                widget2: Container(
                  height: 41,
                  width: getPageWidth_2(context),
                  child: TextField(
                    readOnly: true,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'انتخاب نشده',
                      hintStyle:
                          TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: SvgPicture.asset("assets/images/Vector-20.svg"),
                        onPressed: () {
                          // _show_item_1.value = !_show_item_1.isTrue;
                        },
                      ),
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
                widget1: Container(
                  height: 41,
                  width: getPageWidth_2(context),
                  child: TextField(
                    readOnly: true,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                        hintText: 'انتخاب نشده',
                        hintStyle:
                            TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: IconButton(
                          icon: SvgPicture.asset("assets/images/Vector-20.svg"),
                          onPressed: () {
                            // _show_item_1.value = !_show_item_1.isTrue;
                          },
                        )),
                  ),
                ),
                widget2: Container(
                  height: 41,
                  width: getPageWidth_2(context),
                  child: TextField(
                    readOnly: true,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'انتخاب نشده',
                      hintStyle:
                          TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: SvgPicture.asset("assets/images/Vector-20.svg"),
                        onPressed: () {
                          // _show_item_1.value = !_show_item_1.isTrue;
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
                  width: getPageWidth_2(context),
                  child: TextField(
                    readOnly: true,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'انتخاب نشده',
                      hintStyle:
                          TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: SvgPicture.asset("assets/images/Vector-20.svg"),
                        onPressed: () {
                          // _show_item_1.value = !_show_item_1.isTrue;
                        },
                      ),
                    ),
                  ),
                ),
                widget2: Container(
                  height: 41,
                  width: getPageWidth_2(context),
                  child: TextField(
                    readOnly: true,
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
                          // _show_item_1.value = !_show_item_1.isTrue;
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TwoItemInRow(
                label1: "سرویس بهداشتی",
                label2: "تامین کننده آب گرم",
                widget1: Container(
                  height: 41,
                  width: getPageWidth_2(context),
                  child: TextField(
                    readOnly: true,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                        hintText: 'انتخاب نشده',
                        hintStyle:
                            TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: IconButton(
                          icon: SvgPicture.asset("assets/images/Vector-20.svg"),
                          onPressed: () {
                            // _show_item_1.value = !_show_item_1.isTrue;
                          },
                        )),
                  ),
                ),
                widget2: Container(
                  height: 41,
                  width: getPageWidth_2(context),
                  child: TextField(
                    readOnly: true,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'انتخاب نشده',
                      hintStyle:
                          TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: SvgPicture.asset("assets/images/Vector-20.svg"),
                        onPressed: () {
                          // _show_item_1.value = !_show_item_1.isTrue;
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
                selectable: [Teras(), MasterRoom(), CenterAntenna(), Labi()],
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
              ImagesPicker(selectedImagesPath: _selectedImagesPath)
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
            TwoItemInRow(
              label1: "میزان اجاره (تومان)",
              label2: "میزان رهن (تومان) ",
              widget1: SizedBox(
                height: 41,
                width: MediaQuery.of(context).size.width * 0.43,
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'مبلغ را وارد کنید', //todo
                    hintStyle:
                        const TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              widget2: SizedBox(
                height: 41,
                width: MediaQuery.of(context).size.width * 0.43,
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'مبلغ را وارد کنید', //todo
                    hintStyle:
                        const TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
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
