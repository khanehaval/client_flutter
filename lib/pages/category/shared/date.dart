import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_linear_datepicker/flutter_datepicker.dart';
import 'package:get/get.dart';

void persianDataPicker(Function(String) onDateSelected) {
  String selectedDate = "1400/03/03";
  Get.bottomSheet(Container(
    color: Colors.white,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 250,
          child: LinearDatePicker(
              startDate: "1370/01/01",
              endDate: "1440/03/0",
              initialDate: selectedDate,
              addLeadingZero: true,
              dateChangeListener: (date) => selectedDate = date,
              showDay: true,
              labelStyle: const TextStyle(
                fontFamily: MAIN_FONT_FAMILY,
                fontSize: 18.0,
                color: Colors.black26,
              ),
              selectedRowStyle: const TextStyle(
                fontFamily: MAIN_FONT_FAMILY,
                fontSize: 18.0,
                color: Colors.black,
              ),
              unselectedRowStyle: const TextStyle(
                fontFamily: MAIN_FONT_FAMILY,
                fontSize: 18.0,
                color: Colors.black26,
              ),
              yearText: "سال ",
              monthText: "ماه | month",
              dayText: "روز | day",
              showLabels: false,
              columnWidth: 100,
              showMonthName: true,
              isJalaali: true),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(colors: GRADIANT_COLOR),
                borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              icon: const Icon(
                CupertinoIcons.check_mark,
                color: Colors.white,
                weight: 20,
              ),
              onPressed: () {
                onDateSelected(selectedDate);
                Get.back();
              },
            ),
          ),
        ),
      ],
    ),
  ));
}
