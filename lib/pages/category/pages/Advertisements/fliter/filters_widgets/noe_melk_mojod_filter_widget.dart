import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class NoeMelkMojodFilterWidget extends StatefulWidget {
  const NoeMelkMojodFilterWidget({super.key});

  @override
  _NoeMelkMojodFilterWidgetState createState() =>
      _NoeMelkMojodFilterWidgetState();
}

class _NoeMelkMojodFilterWidgetState extends State<NoeMelkMojodFilterWidget> {
  final _showItem = false.obs;
  final zamin = false.obs;
  final kolangi = false.obs;
  final shakhsi = false.obs;

  final selectedText = ''.obs;
  final _isChecked = false.obs;
  final _isDeleted = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          _showItem.value = !_showItem.value;
        },
        child: Container(
          height: _showItem.value ? 170 : 50,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(250, 250, 250, 1),
            border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              buildHeader(),
              if (_showItem.value) buildNoeMelkMojodContent(),
            ],
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
          padding: const EdgeInsets.only(right: 20),
          child: Text(
            selectedText.value.isNotEmpty
                ? selectedText.value
                : 'نوع ملک موجود',
            style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
          ),
        ),
      ],
    );
  }

  void _handleIconAction() {
    if (!_isChecked.value && !_isDeleted.value) {
      _showItem.value = !_showItem.value;
    } else if (_isChecked.value && !_isDeleted.value) {
      _isDeleted.value = true;
      _isChecked.value = false;
      _showItem.value = false;
    } else if (_isDeleted.value) {
      _resetState();
    }
  }

  void _resetState() {
    zamin.value = false;
    kolangi.value = false;
    shakhsi.value = false;
    _isChecked.value = false;
    _isDeleted.value = false;
    selectedText.value = '';
    _showItem.value = false;
  }

  String _getIconAsset() {
    if (_isDeleted.value) {
      return 'assets/images/delete.svg';
    } else if (_isChecked.value) {
      return 'assets/images/check_green.svg';
    } else if (_showItem.value) {
      return 'assets/images/=.svg';
    }
    return 'assets/images/down.svg';
  }

  double _getIconSize() {
    if (_isDeleted.value) {
      return 15;
    } else if (_isChecked.value) {
      return 17;
    } else if (_showItem.value) {
      return 10;
    }
    return 15;
  }

  Widget buildNoeMelkMojodContent() {
    return Column(
      children: [
        buildSwitchRow("زمین", zamin, () => _updateSelectedText()),
        buildSwitchRow("کلنگی", kolangi, () => _updateSelectedText()),
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
          padding: const EdgeInsets.only(right: 20),
          child: Text(
            label,
            style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
          ),
        ),
      ],
    );
  }

  void _updateSelectedText() {
    final selectedItems = <String>[];

    if (zamin.value) selectedItems.add("زمین");
    if (kolangi.value) selectedItems.add("کلنگی");

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
      _resetState();
    }
  }
}
