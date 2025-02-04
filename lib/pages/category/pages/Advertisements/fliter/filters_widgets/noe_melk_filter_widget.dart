import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class NoeMelkFilterWidget extends StatelessWidget {
  NoeMelkFilterWidget({super.key});

  final _showItemNoeMelk = false.obs;
  final RxBool zamin = false.obs;
  final RxBool aparteman = false.obs;
  final RxBool vila = false.obs;
  final RxBool edaritejari = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: _showItemNoeMelk.isTrue ? 225.h : 50,
        width: 370.w,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(250, 250, 250, 1),
          border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: _showItemNoeMelk.value
                      ? SvgPicture.asset('assets/images/=.svg')
                      : SvgPicture.asset('assets/images/down.svg'),
                  onPressed: () {
                    _showItemNoeMelk.value = !_showItemNoeMelk.value;
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    "نوع ملک",
                    style: TextStyle(
                      fontFamily: MAIN_FONT_FAMILY,
                      color: Color.fromRGBO(48, 48, 48, 1),
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
            if (_showItemNoeMelk.isTrue)
              noemelkSakht(
                zamin: zamin,
                aparteman: aparteman,
                vila: vila,
                edaritejari: edaritejari,
              ),
          ],
        ),
      ),
    );
  }

  Widget noemelkSakht({
    required RxBool zamin,
    required RxBool aparteman,
    required RxBool vila,
    required RxBool edaritejari,
  }) {
    return Column(
      children: [
        _buildSwitchTile("زمین", zamin),
        _buildSwitchTile("آپارتمان", aparteman),
        _buildSwitchTile("ویلا", vila),
        _buildSwitchTile("اداری تجاری", edaritejari),
      ],
    );
  }

  Widget _buildSwitchTile(String title, RxBool toggleState) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Transform.scale(
          scale: 0.60,
          child: Obx(
            () => Switch(
              onChanged: (value) => toggleState.value = value,
              value: toggleState.value,
              activeColor: Colors.white,
              activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
              inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
              inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text(
            title,
            style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12.sp),
          ),
        ),
      ],
    );
  }
}
