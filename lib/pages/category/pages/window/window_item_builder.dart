import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/category_items.dart';

class MainCategory extends StatelessWidget {
  int index;

  MainCategory({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildaAppBar(),
      body: CategoryItems(
        index: index,
      ),
      bottomNavigationBar: bottomNavigation(),
    );
  }
}
