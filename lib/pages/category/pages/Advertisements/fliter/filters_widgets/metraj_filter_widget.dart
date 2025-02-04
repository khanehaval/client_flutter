import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/component_filter/showMetrajMaxBottomSheet.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/component_filter/showMetrajlowBottomSheet.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/metraj.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MetrajFilterWidget extends StatefulWidget {
  MetrajFilterWidget({super.key});

  @override
  State<MetrajFilterWidget> createState() => _MetrajFilterWidgetState();
}

class _MetrajFilterWidgetState extends State<MetrajFilterWidget> {
  final _showItemMizanMetraj = false.obs;
  final TextEditingController _customAmountController = TextEditingController();
  final TextEditingController _maxAmountController = TextEditingController();

  bool _isFieldEnabled = false;
  final RxString selectedMinAmount = 'انتخاب کنید'.obs;
  final RxString selectedMaxAmount = 'انتخاب کنید'.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: _showItemMizanMetraj.isTrue ? 230.h : 50,
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
                  icon: _showItemMizanMetraj.value
                      ? SvgPicture.asset('assets/images/=.svg')
                      : SvgPicture.asset('assets/images/down.svg'),
                  onPressed: () {
                    _showItemMizanMetraj.value = !_showItemMizanMetraj.value;
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Text(
                    "متراژ",
                    style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY, fontSize: 12.sp),
                  ),
                ),
              ],
            ),
            if (_showItemMizanMetraj.isTrue)
              Column(
                children: [
                  SizedBox(height: 10.h),
                  metrajWidget(context, "حداقل", showMetrajlowBottomSheet,
                      selectedMinAmount, _customAmountController),
                  SizedBox(height: 25.h),
                  metrajWidget(context, "حداکثر", showMetrajMaxBottomSheet,
                      selectedMaxAmount, _maxAmountController),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget metrajWidget(
      BuildContext context,
      String label,
      Function showBottomSheet,
      RxString selectedAmount,
      TextEditingController controller) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 225, 225, 225),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(1.1.w),
        child: Container(
          height: 50.h,
          width: MediaQuery.of(context).size.width / 1.23,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 225, 225, 225),
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.r),
                  color: const Color.fromRGBO(183, 183, 183, 1),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(183, 183, 183, 1),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(1.1.w),
                    child: Container(
                      width: 225.w,
                      height: 30.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9.r),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              showBottomSheet((selected) {
                                setState(() {
                                  selectedAmount.value = selected;
                                  _isFieldEnabled =
                                      selected == 'وارد کردن مبلغ دلخواه';
                                  controller.text =
                                      _isFieldEnabled ? '' : selected;
                                });
                              });
                            },
                            icon: SvgPicture.asset(
                              "assets/images/arrow_down.svg",
                              width: 10.w,
                              height: 10.h,
                              color: const Color.fromRGBO(48, 48, 48, 1),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10.w),
                            child: Obx(
                              () => Text(
                                selectedAmount.value,
                                style: TextStyle(
                                  fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                  fontSize: 12.sp,
                                  color: Color.fromRGBO(99, 99, 99, 1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                label,
                style: TextStyle(
                  fontFamily: MAIN_FONT_FAMILY,
                  fontSize: 12.sp,
                  color: const Color.fromRGBO(99, 99, 99, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
