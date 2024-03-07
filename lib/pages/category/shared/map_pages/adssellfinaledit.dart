import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdsSellFinalEdit extends StatefulWidget {
  final String parentName;

  const AdsSellFinalEdit({super.key, required this.parentName});

  @override
  State<AdsSellFinalEdit> createState() => _AdsSellFinalEditState();
}

class _AdsSellFinalEditState extends State<AdsSellFinalEdit> {
  String imagePath = "assets/images/default_user_image.png";

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home_outlined,
              size: width * 0.09,
            )),
        centerTitle: true,
        leadingWidth: width * 0.4,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                  size: width * 0.08,
                )),
            const Text(
              "ثبت آگهی و اجراع",
              style: TextStyle(fontWeight: FontWeight.w900),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close,
                size: width * 0.07,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        ),
      ),
    );
  }
}
