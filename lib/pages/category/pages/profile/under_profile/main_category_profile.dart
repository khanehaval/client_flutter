import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/category_Profile.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/category_items.dart';

class MainCategoryProfile extends StatelessWidget {
  int index;

  MainCategoryProfile({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CategoryProfile(
        index: index,
      ),
    );
  }
}
