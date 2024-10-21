import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/detail_view_agahi.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ViewAghahi extends StatefulWidget {
  @override
  _ViewAghahiState createState() => _ViewAghahiState();
}

class _ViewAghahiState extends State<ViewAghahi> {
  bool isFavorite = false; // متغیر برای ردیابی وضعیت مورد علاقه

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            DetailViewAgahi(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
