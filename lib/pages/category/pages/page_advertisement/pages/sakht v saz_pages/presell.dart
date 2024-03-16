import 'dart:ffi';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/ejara_tejari/rent_store.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:flutter_application_1/pages/category/shared/date.dart';
import 'package:flutter_application_1/pages/category/shared/emkanat8.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/switchItem.dart';
import 'package:flutter_application_1/pages/category/shared/twoItemInRow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:image_picker/image_picker.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Presell extends StatelessWidget {
  final aghsatType = "".obs;
  final onvan = "".obs;
  final _selected = 0.obs;
  final _currentIndex = 0.obs;
  ItemScrollController scrollController = ItemScrollController();
  final ItemScrollController itemScrollController = ItemScrollController();

  final _selectedImagesPath = [].obs;

  final hasAnbari = false.obs;
  final hasAsansor = false.obs;
  final hasParking = false.obs;

  final _onePrice = 0.0.obs;

  final _allPriceTextController = TextEditingController();
  final _metragTextController = TextEditingController();
  final _index = 6.obs;

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
                Icon(
                  Icons.arrow_back,
                  color: Colors.green,
                  size: 20,
                ),
                Text(
                  "پیش فروش",
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
                  "ساخت و ساز",
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
              label1: "قیمت هر متر مربع (تومان)",
              label2: "قیمت کل (تومان)",
              w1: Obx(
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
              w2: SizedBox(
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
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            aghsatiForoshWidget(context),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            melkByVamBanki(context),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            zamin(context),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            Aparteman(context),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            Vila(context),
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
            Edari(context),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 25,
            ),
            const Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "نوع سند",
                style: TextStyle(
                    color: Color.fromRGBO(99, 99, 99, 1),
                    fontFamily: MAIN_FONT_FAMILY),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              height: 41,
              width: 372,
              child: TextField(
                readOnly: true,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: 'انتخاب نشده',
                  hintStyle: TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
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
            const SizedBox(
              height: 20,
            ),
            TwoItemInRow(
              label1: "تعداد تیپ ",
              label2: "مرحله ساخت ",
              w1: Container(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  readOnly: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'تایپ کنید',
                    hintStyle:
                        const TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              w2: Container(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  readOnly: true,
                  focusNode: FocusNode(canRequestFocus: false),
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
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TwoItemInRow(
              label1: "میزان پیشرفت فیزیکی",
              label2: "زمان تحویل ",
              w1: Container(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  readOnly: true,
                  focusNode: FocusNode(canRequestFocus: false),
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
              w2: Container(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  readOnly: true,
                  focusNode: FocusNode(canRequestFocus: false),
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'انتخاب نشده',
                    hintStyle: const TextStyle(
                      color: Color(0xFFA6A6A6),
                    ),
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
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "سایر امکانات",
              style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    buildButtom8();
                  },
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 5,
                          )
                        ],
                        border: Border.all(
                          color: Colors.black45,
                          width: 0.3,
                        )),
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
                ),
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
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/Group 1223.svg',
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(
                  height: 30,
                ),
                Obx(() => _selectedImagesPath.isNotEmpty
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                            height: 372,
                            child: Image.file(File(_selectedImagesPath.first))))
                    : const SizedBox.shrink()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 5,
                            )
                          ],
                          border: Border.all(
                            color: Colors.black45,
                            width: 0.3,
                          )),
                      child: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () async {
                          var filepath = await ImagePicker.platform
                              .getImageFromSource(source: ImageSource.gallery);
                          if (filepath != null) {
                            _selectedImagesPath.add(filepath.path);
                          }
                        },
                        child: const Icon(
                          Icons.add,
                        ),
                      ),
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
                SizedBox(
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
                  "عنوان و توضیحات آگهی",
                  style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                onvanWidget(context),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "*",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(156, 64, 64, 1),
                          fontFamily: MAIN_FONT_FAMILY),
                    ),
                    Text(
                      "عنوان آگهی",
                      style: TextStyle(
                          color: Color.fromRGBO(166, 166, 166, 1),
                          fontFamily: MAIN_FONT_FAMILY),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 41,
                      width: MediaQuery.of(context).size.width * 1 / 1.117,
                      child: TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'تایپ کنید',
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
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "توضیحات آگهی",
                      style: TextStyle(
                          color: Color.fromRGBO(166, 166, 166, 1),
                          fontFamily: MAIN_FONT_FAMILY),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 1 / 1.117,
                      height: 218,
                      child: TextField(
                        maxLines: 5,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'تایپ کنید',
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
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 30, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "...تایید و ادامه",
                        style: true
                            ? TextStyle(
                                fontSize: 20,
                                fontFamily: MAIN_FONT_FAMILY,
                                color: Colors.black38,
                              )
                            // ignore: dead_code
                            : TextStyle(
                                fontSize: 20, fontFamily: MAIN_FONT_FAMILY),
                      ),
                      Icon(
                        Icons.double_arrow,
                        color: Color.fromRGBO(76, 140, 237, 1),
                        size: 35,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  double getPageWidth_2(BuildContext context) =>
      MediaQuery.of(context).size.width * 0.43;
  Widget onvanWidget(BuildContext context) {
    final isSwitched = true.obs;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "فروش به صورت اقساطی",
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
                    style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 9),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TwoItemInRow(
                    label1: "مبلغ قسط (تومان)",
                    label2: "پیش پرداخت (تومان)",
                    w1: SizedBox(
                      height: 41,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'مبلغ را وارد کنید', //todo
                          hintStyle: const TextStyle(
                              color: Color(0xFFA6A6A6), fontSize: 13),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    w2: SizedBox(
                      height: 41,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'مبلغ را وارد کنید', //todo
                          hintStyle: const TextStyle(
                              color: Color(0xFFA6A6A6), fontSize: 13),
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
                      w1: SizedBox(
                        height: 41,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: TextField(
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
                                  persianDataPicker((date) {
                                    print(date);
                                  });
                                },
                              )),
                        ),
                      ),
                      w2: SizedBox(
                        height: 41,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: TextField(
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
                                showNumberPicker((_) {});
                              },
                            ),
                          ),
                        ),
                      )),
                  const SizedBox(
                    width: 30,
                    height: 10,
                  ),
                  SwitchItem(
                      type: aghsatType, items: const ["ضامن", "سفته", "چک"]),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 20,
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
                        fontSize: 9,
                        overflow: TextOverflow.clip),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TwoItemInRow(
                    label1: "مبلغ اقساط",
                    label2: "میزان وام (تومان)",
                    w1: SizedBox(
                      height: 41,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: '3,6000000', //todo
                          hintStyle: const TextStyle(
                              color: Color(0xFFA6A6A6), fontSize: 13),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    w2: SizedBox(
                      height: 41,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: '400000000', //todo
                          hintStyle: const TextStyle(
                              color: Color(0xFFA6A6A6), fontSize: 13),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
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
                      readOnly: true,
                      focusNode: FocusNode(canRequestFocus: false),
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

Widget zamin(BuildContext context) {
  final isSwitched = true.obs;
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "زمین",
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
          ? Column(
              children: [
                const SizedBox(height: 25),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "متراژ زمین  ",
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
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: '120',
                      hintStyle: const TextStyle(
                          color: Color(0xFFA6A6A6), fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                TwoItemInRow(
                  label1: "مبلغ اقساط",
                  label2: "میزان وام (تومان)",
                  w1: SizedBox(
                    height: 41,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: '3,6000000', //todo
                        hintStyle: const TextStyle(
                            color: Color(0xFFA6A6A6), fontSize: 13),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  w2: SizedBox(
                    height: 41,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: '400000000', //todo
                        hintStyle: const TextStyle(
                            color: Color(0xFFA6A6A6), fontSize: 13),
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
              ],
            )
          : const SizedBox.shrink()),
    ],
  );
}

Widget Aparteman(BuildContext context) {
  final isSwitched = true.obs;
  final hasAnbari = false.obs;
  final hasAsansor = false.obs;

  final _onePrice = 0.0.obs;
  final _allPriceTextController = TextEditingController();
  final _metragTextController = TextEditingController();
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "آپارتمان",
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
          ? Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                TwoItemInRow(
                  label1: "تعداد اتاق",
                  label2: "سن بنا ",
                  w2: Container(
                    height: 41,
                    width: getPageWidth_2(context),
                    child: TextField(
                      readOnly: true,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'تایپ کنید',
                        hintStyle:
                            TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  w1: Container(
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
                            showNumberPicker((_) {});
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "مدارک محرمیت",
                    style: TextStyle(
                        color: Color.fromRGBO(99, 99, 99, 1),
                        fontFamily: MAIN_FONT_FAMILY),
                    textAlign: TextAlign.start,
                  ),
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
                          fontSize: 13,
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
                    SizedBox(
                      width: 15,
                    ),
                    Row(
                      children: [
                        const Text(
                          "آسانسور",
                          style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY,
                              fontSize: 13,
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
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          "پارکینگ",
                          style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY,
                              fontSize: 13,
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
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 25),
                const SizedBox(
                  height: 20,
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

Widget Vila(BuildContext context) {
  final isSwitched = true.obs;
  final hasAnbari = false.obs;
  final hasAsansor = false.obs;

  final _onePrice = 0.0.obs;
  final _allPriceTextController = TextEditingController();
  final _metragTextController = TextEditingController();
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "ویلا",
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
          ? Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                TwoItemInRow(
                  label1: "تعداد اتاق ",
                  label2: "متراژ بنا ",
                  w2: Container(
                    height: 41,
                    width: getPageWidth_2(context),
                    child: TextField(
                      readOnly: true,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'تایپ کنید',
                        hintStyle:
                            TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  w1: Container(
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
                            showNumberPicker((_) {});
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "طبقات ویلا ",
                    style: TextStyle(
                        color: Color.fromRGBO(99, 99, 99, 1),
                        fontFamily: MAIN_FONT_FAMILY),
                    textAlign: TextAlign.start,
                  ),
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
                          TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
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
                    const SizedBox(
                      width: 10,
                    ),
                    const Row(
                      children: [],
                    ),
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
                              onChanged: (_) => hasAsansor.value = _,
                              value: hasAsansor.value,
                              activeColor: Colors.white,
                              activeTrackColor: Color.fromRGBO(54, 216, 89, 1),
                              inactiveThumbColor: Color.fromRGBO(11, 8, 8, 0.2),
                              inactiveTrackColor:
                                  Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
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

Widget Edari(BuildContext context) {
  final isSwitched = true.obs;
  final hasAnbari = false.obs;
  final hasAsansor = false.obs;

  final _onePrice = 0.0.obs;
  final _allPriceTextController = TextEditingController();
  final _metragTextController = TextEditingController();
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "تجاری و اداری",
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
          ? Column(
              children: [
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "متراژ زمین  ",
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
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: '120',
                      hintStyle: const TextStyle(
                          color: Color(0xFFA6A6A6), fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TwoItemInRow(
                  label1: "تعداد اتاق",
                  label2: "سن بنا ",
                  w2: Container(
                    height: 41,
                    width: getPageWidth_2(context),
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'تایپ کنید',
                        hintStyle:
                            TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  w1: Container(
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
                            showNumberPicker((_) {});
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "انباری",
                      style: TextStyle(
                          fontFamily: MAIN_FONT_FAMILY,
                          fontSize: 13,
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
                    SizedBox(
                      width: 15,
                    ),
                    Row(
                      children: [
                        const Text(
                          "آسانسور",
                          style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY,
                              fontSize: 13,
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
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          "پارکینگ",
                          style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY,
                              fontSize: 13,
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
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 25),
                const SizedBox(
                  height: 20,
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
