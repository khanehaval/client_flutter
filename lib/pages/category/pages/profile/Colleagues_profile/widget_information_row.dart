import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';

class WidgetInformationRow extends StatelessWidget {
  const WidgetInformationRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: 30.w, left: 20.w), // استفاده از .w برای padding
      child: Column(
        children: [
          SizedBox(height: 10.h), // استفاده از .h برای ارتفاع
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildInformationColumn('امتیاز', '4.7'),
              SizedBox(width: 5.w), // استفاده از .w برای فاصله افقی
              _buildInformationColumn('تعداد آگهی', '125'),
              SizedBox(width: 5.w),
              _buildInformationColumn('میزان رضایت مندی', '% 92'),
              SizedBox(width: 7.w),
              _buildInformationColumn('محدوده فعالیت', 'سراسر کشور'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInformationColumn(String title, String value) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFF303030),
            fontSize: 11.sp, // استفاده از .sp برای فونت
            fontFamily: MAIN_FONT_FAMILY_MEDIUM,
          ),
        ),
        SizedBox(height: 20.h), // استفاده از .h برای ارتفاع
        Text(
          value,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFF303030),
            fontSize: 10.sp, // استفاده از .sp برای فونت
            fontFamily: MAIN_FONT_FAMILY_MEDIUM,
          ),
        ),
      ],
    );
  }
}
