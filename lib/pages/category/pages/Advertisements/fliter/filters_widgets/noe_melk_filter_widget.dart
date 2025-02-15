import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class NoeMelkFilterWidget extends StatefulWidget {
  const NoeMelkFilterWidget({super.key});

  @override
  _NoeMelkFilterWidgetState createState() => _NoeMelkFilterWidgetState();
}

class _NoeMelkFilterWidgetState extends State<NoeMelkFilterWidget> {
  final RxBool _showItemNoeMelk = false.obs;
  final RxBool zamin = false.obs;
  final RxBool aparteman = false.obs;
  final RxBool vila = false.obs;
  final RxBool edaritejari = false.obs;
  final RxString selectedText = ''.obs;
  final RxBool _isChecked = false.obs;
  final RxBool _isDeleted = false.obs;

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
            buildHeader(),
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

  Widget buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: _getIconAsset(),
          onPressed: _handleIconAction,
        ),
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () {
              _showItemNoeMelk.value = true;
            },
            child: Text(
              selectedText.value.isNotEmpty ? selectedText.value : "نوع ملک",
              style: TextStyle(
                fontFamily: MAIN_FONT_FAMILY,
                color: const Color.fromRGBO(48, 48, 48, 1),
                fontSize: 12.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _handleIconAction() {
    if (!_isChecked.value && !_isDeleted.value) {
      _showItemNoeMelk.value = !_showItemNoeMelk.value;
    } else if (_isChecked.value && !_isDeleted.value) {
      _isDeleted.value = true;
      _isChecked.value = false;
      _showItemNoeMelk.value = false;
    } else if (_isDeleted.value) {
      _resetState();
    }
  }

  void _resetState() {
    // Reset all filter states
    zamin.value = false;
    aparteman.value = false;
    vila.value = false;
    edaritejari.value = false;
    _isChecked.value = false;
    _isDeleted.value = false;
    selectedText.value = '';
    _showItemNoeMelk.value = false;
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
              onChanged: (value) {
                toggleState.value = value;
                _updateSelectedText();
              },
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

  void _updateSelectedText() {
    final selectedItems = <String>[];
    if (zamin.value) selectedItems.add("زمین");
    if (aparteman.value) selectedItems.add("آپارتمان");
    if (vila.value) selectedItems.add("ویلا");
    if (edaritejari.value) selectedItems.add("اداری تجاری");

    if (selectedItems.isNotEmpty) {
      if (selectedItems.length == 1) {
        selectedText.value = selectedItems.first;
      } else if (selectedItems.length == 2) {
        selectedText.value = "${selectedItems[0]} و یک مورد دیگر";
      } else {
        selectedText.value =
            "${selectedItems[0]} و ${selectedItems.length - 1} مورد دیگر";
      }
      _isChecked.value = true;
      _isDeleted.value = false;
    } else {
      selectedText.value = '';
      _isChecked.value = false;
      _isDeleted.value = false;
    }
  }

  Widget _getIconAsset() {
    double iconSize = _getIconSize();
    if (_isDeleted.value) {
      return SvgPicture.asset('assets/images/delete.svg',
          width: iconSize, height: iconSize);
    } else if (_isChecked.value) {
      return SvgPicture.asset('assets/images/check_green.svg',
          width: iconSize, height: iconSize);
    } else if (_showItemNoeMelk.value) {
      return SvgPicture.asset('assets/images/=.svg',
          width: iconSize, height: iconSize);
    }
    return SvgPicture.asset('assets/images/down.svg',
        width: iconSize, height: iconSize);
  }

  double _getIconSize() {
    if (_isDeleted.value) {
      return 15.w; // سایز آیکون حذف
    } else if (_isChecked.value) {
      return 17.w; // سایز آیکون چک شده
    } else if (_showItemNoeMelk.value) {
      return 10.w; // سایز آیکون باز شدن
    }
    return 15.w; // سایز پیش فرض
  }
}
