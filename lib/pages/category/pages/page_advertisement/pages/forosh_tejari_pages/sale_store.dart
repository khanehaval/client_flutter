import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/switchItem.dart';
import 'package:flutter_application_1/pages/category/shared/twoItemInRow.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SaleStore extends StatelessWidget {
  final aghsatType = "".obs;
  final onvan = "".obs;

  final hasAnbari = false.obs;
  final hasAsansor = false.obs;

  final _onePrice = 0.0.obs;
  final _allPriceTextController = TextEditingController();
  final _metragTextController = TextEditingController();

  SaleStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildaAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.green,
                    size: 15,
                  ),
                  Text(
                    "خرید و فروش دفاتر صنعتی",
                    style: TextStyle(
                      fontSize: 9.5,
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
                  ),
                  Icon(
                    Icons.arrow_back,
                    color: Colors.green,
                    size: 15,
                  ),
                  Text(
                    "فروش مسکونی",
                    style: TextStyle(
                      fontSize: 9.5,
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
                  ),
                  Icon(
                    Icons.arrow_back,
                    color: Colors.green,
                    size: 15,
                  ),
                  Text(
                    "  ثبت آگهی اکونومی",
                    style: TextStyle(
                      fontSize: 9.5,
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
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
              TwoItemInRow(
                label1: "نوع سند ",
                label2: "متراژ زمین ",
                w1: SizedBox(
                  height: 41,
                  width: getPageWidth_2(context),
                  child: TextField(
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
              TwoItemInRow(
                label1: "عرض زمین",
                label2: "طول زمین",
                w1: SizedBox(
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
                w2: SizedBox(
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
                label1: "جنس دیواره",
                label2: "جنس کف",
                w1: Container(
                  height: 41,
                  width: getPageWidth_2(context),
                  child: TextField(
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
                label1: "نوع سیستم گرمایش",
                label2: "نوع سیستم سرمایش",
                w1: Container(
                  height: 41,
                  width: getPageWidth_2(context),
                  child: TextField(
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
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: const Text(
                      "تامین کننده آب گرم",
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
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "سایر امکانات",
                style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
              ),
              SizedBox(
                height: 10,
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
                    width: MediaQuery.of(context).size.width * 1 / 1.06,
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
            ]),
          ),
        ));
  }
}

double getPageWidth_2(BuildContext context) =>
    MediaQuery.of(context).size.width * 0.4;
Widget onvanWidget(BuildContext context) {
  final isSwitched = true.obs;
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "عنوان پیشنهادی خانه اول",
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
              children: [
                SizedBox(
                  height: 41,
                  width: MediaQuery.of(context).size.width * 1 / 1.06,
                  child: TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'آپارتمان 120 متری به صورت اقساطی',
                      hintStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                          fontFamily: MAIN_FONT_FAMILY,
                          fontSize: 16),
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
            "سوله و کارگاه",
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
                  label1: "سن بنا ",
                  label2: "متراژ ",
                  w1: SizedBox(
                    height: 41,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: ' را وارد کنید', //todo
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
                  label1: "تعداد اتاق ",
                  label2: "تعداد طبقات ",
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
                  ),
                ),
                SizedBox(
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
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "جرثقیل سقفی",
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

Widget melkByVamBanki(BuildContext context) {
  final isSwitched = true.obs;
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "خانه کلنگی",
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
      const SizedBox(
        height: 10,
      ),
      Obx(() => isSwitched.isTrue
          ? Column(
              children: [
                TwoItemInRow(
                  label1: "سن بنا ",
                  label2: "متراژ بنا ",
                  w1: SizedBox(
                    height: 41,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'تایپ کنید', //todo
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
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'تایپ کنید', //todo
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
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "تعداد اتاق ",
                    style: TextStyle(
                        color: Color.fromRGBO(99, 99, 99, 1),
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
                  height: 20,
                ),
              ],
            )
          : const SizedBox.shrink()),
    ],
  );
}
