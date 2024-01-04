import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Consultants extends StatelessWidget {
  const Consultants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
      ),
      body: Container(
        width: 165,
        margin: const EdgeInsets.only(top: 18, left: 120, right: 24),
        child: Column(
          children: [
            Image.asset(
              'assets/images/Rectangle 1.png',
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              "پنل مشاوران",
              style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Iran Sans Bold'),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
