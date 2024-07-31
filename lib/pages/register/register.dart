import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/intro_screen.dart';
import 'package:flutter_application_1/pages/login_secondly_page.dart';
import 'package:flutter_application_1/repo/acount_repo.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Timer? _timer;
  final _time = 60.obs;
  final _phoneNumberSended = false.obs;
  final _buttonIsPressed = false.obs;
  final _keyboardVisibility = false.obs;
  final _keyboardVisibilityController = KeyboardVisibilityController();
  final _accountRepo = GetIt.I.get<AccountRepo>();
  final _phoneNumberTextField = TextEditingController();
  final _codeTextField = TextEditingController();

  @override
  void initState() {
    super.initState();
    _keyboardVisibilityController.onChange.listen((visible) {
      _keyboardVisibility.value = visible;
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer?.cancel();
    _time.value = 60;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _time.value = max(0, _time.value - 1);
      if (_time.value == 0) {
        _timer?.cancel();
      }
    });
  }

  Future<void> _sendPhoneNumber() async {
    _buttonIsPressed.value = true;
    final success = await _accountRepo.login(_phoneNumberTextField.text);
    _buttonIsPressed.value = false;

    if (success) {
      _phoneNumberSended.value = true;
      _startTimer();
    } else {
      _showErrorToast("شماره موبایل خود را کامل وارد کنید");
    }
  }

  Future<void> _sendVerificationCode() async {
    if (_codeTextField.text.isNotEmpty && _codeTextField.text.length >= 5) {
      _buttonIsPressed.value = true;
      final success = await _accountRepo.sendVerificationCode(
        code: _codeTextField.text,
        cellphone: _phoneNumberTextField.text,
      );
      _buttonIsPressed.value = false;

      if (success) {
        Get.off(() => const LoginSecondlyPage());
      } else {
        _showErrorToast("کد وارد شده صحیح نیست");
      }
    } else {
      _showErrorToast("لطفا کد معتبر وارد کنید");
    }
  }

  void _showErrorToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP_RIGHT,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx(
          () => _buttonIsPressed.value
              ? const CircularProgressIndicator()
              : _buildSubmitButton(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: _keyboardVisibility.isTrue ? 65 : 80),
              SvgPicture.asset(
                'assets/images/logo-farsi.svg',
                width: MediaQuery.of(context).size.width - 240,
              ),
              SizedBox(height: _keyboardVisibility.isTrue ? 20 : 50),
              Obx(
                () => Text(
                  _phoneNumberSended.value
                      ? 'کد تایید ارسال شده را وارد کنید'
                      : 'شماره تلفن همراه خود را وارد کنید',
                  style: const TextStyle(
                    fontSize: 17,
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                ),
              ),
              SizedBox(height: _keyboardVisibility.isTrue ? 20 : 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: _buildPhoneNumberField(),
              ),
              Obx(
                () => _phoneNumberSended.value
                    ? Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 80,
                          vertical: 20,
                        ),
                        child: _buildVerificationCodeField(),
                      )
                    : SizedBox(height: MediaQuery.of(context).size.height / 3),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPhoneNumberField() {
    return SizedBox(
      height: 50,
      child: TextFormField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: _phoneNumberTextField,
        onChanged: (_) => _phoneNumberSended.value = false,
        onFieldSubmitted: (_) => _sendPhoneNumber(),
        style: const TextStyle(fontSize: 14),
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: InputDecoration(
          hintText: "۰۹۱۲   ۱۲۳   ۴۵۶۷",
          hintStyle: const TextStyle(
            color: Color.fromRGBO(222, 222, 222, 1),
            fontFamily: MAIN_FONT_FAMILY,
            fontSize: 15,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color.fromRGBO(99, 99, 99, 1),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color.fromRGBO(99, 99, 99, 1),
            ),
          ),
          suffix: Obx(
            () => _phoneNumberSended.value
                ? GestureDetector(
                    onTap: () => _phoneNumberSended.value = false,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SizedBox(
                        height: 21,
                        width: 21,
                        child: SvgPicture.asset('assets/images/edit.svg'),
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ),
      ),
    );
  }

  Widget _buildVerificationCodeField() {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: TextField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            controller: _codeTextField,
            onSubmitted: (_) => _sendVerificationCode(),
            style: const TextStyle(
              fontSize: 17,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed,
            ),
            decoration: InputDecoration(
              hintText: "--  --  --  --",
              hintStyle: const TextStyle(
                fontSize: 16,
                decoration: TextDecoration.none,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Color.fromRGBO(99, 99, 99, 1),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Color.fromRGBO(99, 99, 99, 1),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Obx(
          () => _time.value > 0
              ? Text(
                  "00:${_time.value.toString().padLeft(2, '0')}",
                  style: const TextStyle(fontFamily: MAIN_FONT_FAMILY),
                )
              : GestureDetector(
                  onTap: _sendPhoneNumber,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "00:00 ",
                        style: TextStyle(fontFamily: MAIN_FONT_FAMILY),
                      ),
                      Text(
                        " ارسال مجدد کد ",
                        style: TextStyle(
                          fontFamily: MAIN_FONT_FAMILY,
                          color: Color.fromRGBO(156, 64, 64, 1),
                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromRGBO(156, 64, 64, 1),
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return Container(
      width: 130,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
        borderRadius: BorderRadius.circular(30),
        gradient: GetGradient(),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed:
            _phoneNumberSended.value ? _sendVerificationCode : _sendPhoneNumber,
        child: Obx(
          () => Text(
            _phoneNumberSended.value ? "تایید" : "تایید",
            style: const TextStyle(
              fontFamily: MAIN_FONT_FAMILY,
              color: Color.fromRGBO(
                48,
                48,
                48,
                1,
              ),
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
