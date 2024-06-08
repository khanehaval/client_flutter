import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_linear_datepicker/flutter_datepicker.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

void persianDataPicker(Function(String) onDateSelected) {
  String selectedDate = "1400/03/03";
  Get.bottomSheet(Container(
    width: double.infinity,
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: GRADIANT_COLOR,
      ),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
    ),
    child: Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 300,
              child: LinearDatePicker(
                  startDate: "1370/01/01",
                  endDate: "1440/03/0",
                  initialDate: selectedDate,
                  addLeadingZero: true,
                  dateChangeListener: (date) => selectedDate = date,
                  showDay: true,
                  labelStyle: const TextStyle(
                    fontFamily: MAIN_FONT_FAMILY,
                    fontSize: 16.0,
                    color: Colors.black26,
                  ),
                  selectedRowStyle: const TextStyle(
                    fontFamily: MAIN_FONT_FAMILY,
                    fontSize: 23.0,
                    color: Colors.black,
                  ),
                  unselectedRowStyle: const TextStyle(
                    fontFamily: MAIN_FONT_FAMILY,
                    fontSize: 16.0,
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
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 1),
                      ),
                    ]),
                child: IconButton(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: SvgPicture.asset(
                      'assets/images/tic.svg',
                      width: 33,
                      height: 26,
                    ),
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
      ),
    ),
  ));
}
