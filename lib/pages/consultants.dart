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
              height: 11,width: 10,
            ),
            Text(
              "پنل مشاوران",
              style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Iran Sans Bold'),
            ),
            SizedBox(
              height: 10,width: 400,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: (0.7),
                      child: TextField(
                        decoration: InputDecoration(
                        hintText: 'نام خانوادگی *',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(hintText: 'نام *',
                          border: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(10),)),style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
