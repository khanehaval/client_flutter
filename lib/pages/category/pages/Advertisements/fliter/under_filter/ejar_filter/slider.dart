import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:screen_brightness/screen_brightness.dart';

class BrightnessControllScreen extends StatefulWidget {
  const BrightnessControllScreen({super.key});

  @override
  State<BrightnessControllScreen> createState() =>
      _BrightnessControllScreenState();
}

class _BrightnessControllScreenState extends State<BrightnessControllScreen> {
  double _currentSliderValue = 20;
  final _show_item_mizanrahn = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() => _show_item_mizanrahn.isFalse
        ? Column(children: [
            Slider(
              value: _currentSliderValue,
              max: 20,
              divisions: 20,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            )
          ])
        : const SizedBox.shrink());
  }
}
