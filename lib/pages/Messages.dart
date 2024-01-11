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
                'assets/images/Page 1.png',
              ),SizedBox(height: 10,),
              Column(
                children: [
                  Text(
                      "اینجا کلی امکانات جدید و جذاب داریم، آگهی، مشاور، آژانس همه روی نقشه منتظر شما هستند ! ! !",style: TextStyle(fontSize: 22,fontFamily: "Iran Sans Bold"),),
                      
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
