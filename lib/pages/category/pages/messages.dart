import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/repo/account_repo.dart';

import 'package:flutter_application_1/services/models/list-aghahi.dart';
import 'package:get_it/get_it.dart';

class Messages extends StatelessWidget {
  final _accountRepo = GetIt.I.get<AccountRepo>();

  Messages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
        future: downloadData(),
        builder: (BuildContext, AsyncSnapshot<String> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: Text('p;ease wait its loading...'),
            );
          } else {
            if (snapshot.hasError) {
              return Center(child: Text('error:${snapshot.error}'));
            } else {
              return Center(child: Text('${snapshot.data}'));
            }
          }
        });
  }

  Future<String> downloadData() async {
    return Future.value("Data download successfully");
  }
}
