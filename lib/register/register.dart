import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/repo/acount_repo.dart';
import 'package:get/get.dart';
import 'dart:math';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Timer? timer;
  var time = 30.obs;
  var sended = false.obs;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    Timer.periodic(Duration(seconds: 1), (i) {
      time.update((val) {
        time.value = max(0, (val ?? 30) - 1);
      });
    });
  }

  var _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 100, horizontal: 90),
        child: Column(
          children: [
            Image.asset(
              'assets/images/Rectangle 1.png',
              width: MediaQuery.of(context).size.width - 100,
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              'شماره تلفن همراه خود را وارد کنید',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: _textController,
              maxLength: 11,
              style: TextStyle(fontSize: 20),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                hintText: "09121234567",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                suffix: Icon(Icons.edit),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(),
            ),
            Obx(() => sended.value
                ? Obx(() => time.value > 0
                    ? Text(time.value < 60
                        ? "00:${time.value}"
                        : time.value.toString())
                    : GestureDetector(
                        child: Text("00:00 ارسال مجدد کد "),
                        onTap: () {
                          //todo resend sms
                        },
                      ))
                : SizedBox()),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(700, 55, 250, 100),
                    Colors.blue,
                  ]),
                ),
                child: ElevatedButton(
                  onPressed: () {

                    //todo userRepo.save(
                    // setState(() {
                    //   boxLoginModel.put('key_${_textController.text}', LoginModel(phoneNumber: _textController.text),);
                    // });
                    sended.value = true;
                    startTimer();
                    AccountRepo().login(_textController.text);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent),
                  child: Text(
                    'تایید',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 144, 71, 71),
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
