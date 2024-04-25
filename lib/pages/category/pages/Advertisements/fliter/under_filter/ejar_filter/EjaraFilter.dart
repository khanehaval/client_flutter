import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/shared.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/ejar_filter/aparteman_filter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/ejar_filter/ejara_vila_filter.dart';

class EjaraFilter extends StatelessWidget {
  SubFilterType type;

  EjaraFilter(this.type);

  @override
  Widget build(BuildContext context) {
    if (type == SubFilterType.None) {
      return const Text("EjaraFilter");
    } else if (type == SubFilterType.Aparteman) {
      return EjaraApartemanFilter();
    }
    return EjaraVilaFilter();
  }
}
