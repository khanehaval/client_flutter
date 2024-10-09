import 'package:flutter_svg/svg.dart';
import 'package:jalali_flutter_datepicker/jalali_flutter_datepicker.dart';
import 'package:flutter/material.dart';

class JalaliHomePage extends StatelessWidget {
  const JalaliHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Light grayish background

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: JalaliFlutterDatePicker(
              onDateChanged: (value) {},
              initialDate: Jalali(1350, 5, 2),
              firstDateRange: Jalali(1340, 3, 1),
              lastDateRange: Jalali(1405, 8, 29),
              disabledDayColor: Colors.grey.shade300,
              enabledDayColor: Colors.black,
              selectedDayBackground:
                  const Color(0xffFF6370), // Orange for selected day
              selectedDayColor: Colors.white,
              todayColor: const Color.fromRGBO(
                226,
                226,
                226,
                1,
              ), // Softer orange for today
              footerIconColor:
                  const Color.fromRGBO(99, 99, 99, 1), // Orange icons
              footerTextStyle: const TextStyle(
                color: Color.fromRGBO(255, 99, 112, 1),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              headerTextStyle: const TextStyle(
                color: Color.fromRGBO(166, 166, 166, 1),
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              selectedMonthTextStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              monthDropDownItemTextStyle: const TextStyle(
                fontSize: 15,
                color: Colors.black54,
              ),
              selectedYearTextStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              yearsDropDownItemTextStyle: const TextStyle(
                fontSize: 15,
                color: Colors.black54,
              ),
              customArrowWidget: Padding(
                padding: const EdgeInsets.all(4.0),
                child: SvgPicture.asset(
                  'assets/images/arrow_down.svg',
                  color: const Color.fromRGBO(99, 99, 99, 1),
                ),
              )),
        ),
      ),
    );
  }
}
