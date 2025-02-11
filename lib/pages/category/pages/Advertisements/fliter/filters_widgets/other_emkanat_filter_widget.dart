import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/repo/advRepo.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';

class OtherEmkanatFilterWidget extends StatefulWidget {
  final Function(List<String>) onChange;

  const OtherEmkanatFilterWidget({Key? key, required this.onChange})
      : super(key: key);

  @override
  State<OtherEmkanatFilterWidget> createState() => _EmkanatFilterWidgetState();
}

class _EmkanatFilterWidgetState extends State<OtherEmkanatFilterWidget> {
  final _advRepo = GetIt.I.get<AdvRepo>();
  final RxBool Anbari = false.obs;
  final RxBool Elevator = false.obs;
  final RxBool parking = false.obs;
  final RxBool bazsazi = false.obs;
  final RxBool _isExpanded = false.obs;
  final RxBool _isChecked = false.obs;
  final RxBool _isDeleted = false.obs;
  final RxString selectedText = ''.obs;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          _isExpanded.value = !_isExpanded.value;
        },
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(166, 166, 166, 1),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              width: Get.width / 1.1,
              height: _isExpanded.value ? 200.h : 50,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(253, 253, 253, 1),
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Column(
                children: [
                  buildHeader(),
                  if (_isExpanded.value) buildAgahiDahandehContent(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: SvgPicture.asset(
            _getIconAsset(),
            width: _getIconSize(),
            height: _getIconSize(),
          ),
          onPressed: _handleIconAction,
        ),
        Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: GestureDetector(
            onTap: () {
              _isExpanded.value = true;
            },
            child: Text(
              selectedText.value.isNotEmpty
                  ? selectedText.value
                  : 'سایر امکانات ',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: const Color(0xFF303030),
                fontSize: 12.sp,
                fontFamily: MAIN_FONT_FAMILY,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _handleIconAction() {
    if (!_isChecked.value && !_isDeleted.value) {
      _isExpanded.value = !_isExpanded.value;
    } else if (_isChecked.value && !_isDeleted.value) {
      _isDeleted.value = true;
      _isChecked.value = false;
      _isExpanded.value = false;
    } else if (_isDeleted.value) {
      _resetState();
    }
  }

  void _resetState() {
    Anbari.value = false;
    Elevator.value = false;
    parking.value = false;
    bazsazi.value = false;
    _isChecked.value = false;
    _isDeleted.value = false;
    selectedText.value = '';
    _isExpanded.value = false;
  }

  String _getIconAsset() {
    if (_isDeleted.value) {
      return 'assets/images/delete.svg';
    } else if (_isChecked.value) {
      return 'assets/images/check_green.svg';
    } else if (_isExpanded.value) {
      return 'assets/images/=.svg';
    }
    return 'assets/images/down.svg';
  }

  double _getIconSize() {
    if (_isDeleted.value) {
      return 15.w;
    } else if (_isChecked.value) {
      return 17.w;
    } else if (_isExpanded.value) {
      return 10.w;
    }
    return 15.w;
  }

  Widget buildAgahiDahandehContent() {
    return Column(
      children: [
        buildSwitchRow("آسانسور", Elevator,
            () => widget.onChange([Elevator.value ? "آسانسور" : ''])),
        buildSwitchRow("انباری", Anbari,
            () => widget.onChange([Anbari.value ? "انباری" : ''])),
        buildSwitchRow("پارکینگ", parking,
            () => widget.onChange([parking.value ? "پارکینگ" : ''])),
        buildSwitchRow("بازسازی شده", bazsazi,
            () => widget.onChange([bazsazi.value ? "بازسازی شده" : ''])),
      ],
    );
  }

  Widget buildSwitchRow(
      String label, RxBool switchValue, VoidCallback onChange) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Transform.scale(
          scale: 0.6,
          child: Obx(
            () => Switch(
              onChanged: (_) {
                switchValue.value = _;
                onChange();
                _updateSelectedText();
              },
              value: switchValue.value,
              activeColor: Colors.white,
              activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
              inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
              inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Text(
            label,
            style: TextStyle(
              fontFamily: MAIN_FONT_FAMILY,
              fontSize: 12.sp,
            ),
          ),
        ),
      ],
    );
  }

  void _updateSelectedText() {
    final selectedItems = <String>[];
    if (Anbari.value) selectedItems.add("انباری");
    if (Elevator.value) selectedItems.add("آسانسور");
    if (parking.value) selectedItems.add("پارکینگ");
    if (bazsazi.value) selectedItems.add("بازسازی");

    if (selectedItems.isNotEmpty) {
      if (selectedItems.length == 1) {
        selectedText.value = selectedItems.first;
      } else if (selectedItems.length == 4) {
        selectedText.value = "${selectedItems[0]} و یک مورد دیگر";
      } else {
        selectedText.value =
            "${selectedItems[0]} و ${selectedItems.length - 1} مورد دیگر";
      }
      _isChecked.value = true;
      _isDeleted.value = false;
    } else {
      _resetState();
    }
  }
}
