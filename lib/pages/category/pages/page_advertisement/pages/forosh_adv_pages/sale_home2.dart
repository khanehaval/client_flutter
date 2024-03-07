import 'package:bottom_picker/bottom_picker.dart';
import 'package:bottom_picker/resources/arrays.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/tabageh_sale.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/switchItem.dart';
import 'package:flutter_application_1/pages/category/shared/twoItemInRow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SaleHome2 extends StatelessWidget {
  final aghsatType = "".obs;
  final onvan = "".obs;
  final _selected = 0.obs;
  final _currentIndex = 0.obs;
  ItemScrollController scrollController = ItemScrollController();
  final ItemScrollController itemScrollController = ItemScrollController();
  int selectedIndex = 0;
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
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    " خرید و فروش آپارتمان",
                    style: TextStyle(
                      fontSize: 9,
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
                      fontSize: 9,
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
                      fontSize: 9,
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "*",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(156, 64, 64, 1),
                        fontFamily: MAIN_FONT_FAMILY),
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
              SizedBox(
                height: 50,
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
                      color: Color(0xFFA6A6A6),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
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
              TwoItemInRow(
                label1: "تعداد اتاق ",
                label2: "سن بنا ",
                w1: SizedBox(
                  height: 41,
                  width: getPageWidth_2(context),
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
                          icon: const Icon(CupertinoIcons.chevron_left_2),
                          onPressed: () {
                            // _show_item_1.value = !_show_item_1.isTrue;
                          },
                        )),
                  ),
                ),
                w2: SizedBox(
                  height: 41,
                  width: getPageWidth_2(context),
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
                        icon: const Icon(CupertinoIcons.chevron_left_2),
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
                      "طبقه ",
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
                      icon: const Icon(CupertinoIcons.chevron_left_2),
                      onPressed: () {
                        buildButtom();
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                                    const Color.fromRGBO(54, 216, 89, 1),
                                inactiveThumbColor:
                                    const Color.fromRGBO(11, 8, 8, 0.2),
                                inactiveTrackColor:
                                    const Color.fromRGBO(255, 255, 255, 1)),
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
                                fontSize: 13,
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
                label1: "تعداد کل طبقات",
                label2: "نوع سند",
                w1: SizedBox(
                  height: 41,
                  width: getPageWidth_2(context),
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
                          icon: const Icon(CupertinoIcons.chevron_left_2),
                          onPressed: () {
                            Get.bottomSheet(
                              Container(
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          if (_index.value > 0) {
                                            _index.value = _index.value - 1;
                                            itemScrollController.scrollTo(
                                                index: _index.value,
                                                duration:
                                                    const Duration(seconds: 1));
                                          }
                                        },
                                        child: const Icon(Icons.arrow_upward)),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.100,
                                      child: ScrollablePositionedList.builder(
                                          itemScrollController:
                                              itemScrollController,
                                          shrinkWrap: true,
                                          itemCount: 20,
                                          itemBuilder: (c, i) {
                                            return Obx(() => Text(
                                                (i).toString(),
                                                style: TextStyle(
                                                    fontSize: i == _index.value
                                                        ? 30
                                                        : 15)));
                                          }),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        if (_index.value < 15) {
                                          _index.value = _index.value + 1;
                                          selectedIndex = 1;
                                          itemScrollController.scrollTo(
                                              index: _index.value,
                                              duration:
                                                  const Duration(seconds: 1));
                                        }
                                      },
                                      child: const Icon(Icons.arrow_downward),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        )),
                  ),
                ),
                w2: SizedBox(
                  height: 41,
                  width: getPageWidth_2(context),
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
                        icon: const Icon(CupertinoIcons.chevron_left_2),
                        onPressed: () {
                          _openDatePicker(context);
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
                label1: "تعداد کل واحد ها",
                label2: "تعداد واحد در طبقه",
                w1: Container(
                  height: 41,
                  width: getPageWidth_2(context),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'تایپ کنید',
                      hintStyle: const TextStyle(
                          color: Color(0xFFA6A6A6), fontSize: 13),
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
                        icon: const Icon(CupertinoIcons.chevron_left_2),
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
                label1: "بازسازی",
                label2: "جهت ساختمان",
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
                          icon: const Icon(CupertinoIcons.chevron_left_2),
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
                      hintStyle: TextStyle(
                        color: Color(0xFFA6A6A6),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: const Icon(CupertinoIcons.chevron_left_2),
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
                          icon: const Icon(CupertinoIcons.chevron_left_2),
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
                      hintStyle:
                          TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: const Icon(CupertinoIcons.chevron_left_2),
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
                        icon: const Icon(CupertinoIcons.chevron_left_2),
                        onPressed: () {
                          // _show_item_1.value = !_show_item_1.isTrue;
                        },
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
                        icon: const Icon(CupertinoIcons.chevron_left_2),
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
                            TextStyle(color: Color(0xFFA6A6A6), fontSize: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: IconButton(
                          icon: const Icon(CupertinoIcons.chevron_left_2),
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
                      hintStyle:
                          TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: const Icon(CupertinoIcons.chevron_left_2),
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
              const Text(
                "سایر امکانات",
                style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
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
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
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
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
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
                    child: const Icon(
                      Icons.add,
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/Group 1223.svg',
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 372,
                    height: 193,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFB7B7B7)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Icon(
                      Icons.add,
                    ),
                  )
                ],
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
                    width: MediaQuery.of(context).size.width * 1 / 1.06,
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
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 9.5),
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
                                icon: const Icon(CupertinoIcons.chevron_left_2),
                                onPressed: () {},
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
                              icon: const Icon(CupertinoIcons.chevron_left_2),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      )),
                  const SizedBox(
                    width: 25,
                    height: 10,
                  ),
                  SwitchItem(
                      type: aghsatType, items: const ["ضامن", "سفته", "چک"]),
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
                                icon: const Icon(CupertinoIcons.chevron_left_2),
                                onPressed: () {},
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
                              icon: const Icon(CupertinoIcons.chevron_left_2),
                              onPressed: () {},
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
                          icon: const Icon(CupertinoIcons.chevron_left_2),
                          onPressed: () {
                            // _show_item_1.value = !_show_item_1.isTrue;
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

void _openDatePicker(BuildContext context) {
  BottomPicker.date(
    title: 'select a Date',
    dateOrder: DatePickerDateOrder.dmy,
    pickerTextStyle: const TextStyle(
      color: Colors.blue,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),
    titleStyle: const TextStyle(
        fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
    onChange: (index) {
      print(index);
    },
    bottomPickerTheme: BottomPickerTheme.plumPlate,
  ).show(context);
}

Future<void> _openPersianDatePicker(BuildContext context) async {
  Jalali? picked = await showPersianDatePicker(
    context: context,
    initialDate: Jalali.now(),
    firstDate: Jalali(1385, 8),
    lastDate: Jalali(1450, 9),
  );
  var label = picked?.formatFullDate();
  Jalali? pickedDate = await showModalBottomSheet<Jalali>(
    context: context,
    builder: (context) {
      Jalali tempPickedDate;
      return Container(
        height: 250,
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CupertinoButton(
                    child: const Text(
                      'لغو',
                      style: TextStyle(
                        fontFamily: 'Dana',
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  CupertinoButton(
                    child: const Text(
                      'تایید',
                      style: TextStyle(
                        fontFamily: 'Dana',
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const Divider(
              height: 0,
              thickness: 1,
            ),
            Expanded(
              child: Container(
                child: CupertinoTheme(
                  data: const CupertinoThemeData(
                    textTheme: CupertinoTextThemeData(
                      dateTimePickerTextStyle: TextStyle(fontFamily: "Dana"),
                    ),
                  ),
                  child: PCupertinoDatePicker(
                    mode: PCupertinoDatePickerMode.dateAndTime,
                    onDateTimeChanged: (Jalali dateTime) {
                      tempPickedDate = dateTime;
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

Widget _buildItem(String assetPath, int index) {
  final _selected = 0.obs;

  return GestureDetector(
    onTap: () {
      _selected.value = index;
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
      child: Obx(() => Container(
            width: 125,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                  )
                ],
                border: Border.all(
                  color: _selected.value == index
                      ? Colors.greenAccent
                      : Colors.black38,
                  width: _selected.value == index ? 2.5 : 1.5,
                )),
            child: Image.asset(
              assetPath,
            ),
          )),
    ),
  );
}
