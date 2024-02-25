import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({
    super.key,
  });

  @override
  State<Messages> createState() => _SplashPageOneState();
}

class _SplashPageOneState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // assetImage,
              Image.asset(
                'assets/images/Vector.png',
                width: width * 10,
              ),
              Image.asset(
                'assets/images/intro_screen_2.png',
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  SizedBox(
                    width: 283,
                    child: Text(
                      'اینجا کلی امکانات جدید و جذاب داریم، آگهی، مشاور، آژانس همه روی نقشه منتظر شما هستند ...',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Color(0xFF0E203B),
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        height: 0,
                        letterSpacing: -0.50,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
