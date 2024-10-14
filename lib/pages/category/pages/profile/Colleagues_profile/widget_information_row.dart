import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';

class WidgetInformationRow extends StatelessWidget {
  const WidgetInformationRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 20.0, left: 20),
      child: Column(children: [
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'امتیاز',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF303030),
                    fontSize: 12,
                    fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '4.7',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF303030),
                    fontSize: 12,
                    fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                  ),
                ),
              ],
            ),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'تعداد آگهی',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF303030),
                    fontSize: 12,
                    fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '125',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF303030),
                    fontSize: 12,
                    fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                  ),
                ),
              ],
            ),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'میزان رضایت مندی',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF303030),
                    fontSize: 12,
                    fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '% 92',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF303030),
                    fontSize: 12,
                    fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                  ),
                ),
              ],
            ),
            SizedBox(width: 7),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'محدوده فعالیت',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF303030),
                    fontSize: 12,
                    fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'سراسر کشور',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF303030),
                    fontSize: 12,
                    fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                  ),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
