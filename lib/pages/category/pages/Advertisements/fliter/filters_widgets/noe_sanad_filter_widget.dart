import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/component_filter/showWidget_Noe_sanad.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoeSanadFilterWidget extends StatefulWidget {
  NoeSanadFilterWidget({super.key});

  @override
  State<NoeSanadFilterWidget> createState() => _NoeSanadFilterWidgetState();
}

class _NoeSanadFilterWidgetState extends State<NoeSanadFilterWidget> {
  final _showItemNoeSanad = false.obs;
  final TextEditingController _customAmountController = TextEditingController();

  bool _isFieldEnabled = false;
  final RxString _selectedMinAmount = 'انتخاب کنید'.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: _showItemNoeSanad.isTrue ? 130.h : 50,
        width: 370.w,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(250, 250, 250, 1),
          border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: _showItemNoeSanad.value
                      ? SvgPicture.asset('assets/images/=.svg')
                      : SvgPicture.asset('assets/images/down.svg'),
                  onPressed: () {
                    _showItemNoeSanad.value = !_showItemNoeSanad.value;
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Text(
                    "نوع سند",
                    style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY, fontSize: 12.sp),
                  ),
                ),
              ],
            ),
            if (_showItemNoeSanad.isTrue)
              Column(
                children: [noeSanadWidget(context)],
              ),
          ],
        ),
      ),
    );
  }

  Widget noeSanadWidget(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 35.h,
          width: 295.w,
          child: TextField(
            controller: _customAmountController,
            readOnly: !_isFieldEnabled,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              hintText: _selectedMinAmount.value, // نمایش مقدار انتخاب شده
              hintStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: MAIN_FONT_FAMILY),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              prefixIcon: IconButton(
                onPressed: () {
                  showWidgetNoeSanadBottomSheet((selectedAmount) {
                    setState(() {
                      if (selectedAmount == 'وارد کردن مبلغ دلخواه') {
                        _isFieldEnabled = true;
                        _customAmountController.text = '';
                      } else {
                        _isFieldEnabled = false;
                        _customAmountController.text = selectedAmount;
                      }
                      _selectedMinAmount.value = selectedAmount;
                    });
                  });
                },
                icon: SvgPicture.asset(
                  "assets/images/arrow_down.svg",
                  width: 10.w,
                  height: 10.h,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
