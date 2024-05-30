import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/repo/acount_repo.dart';
import 'package:flutter_application_1/services/models/list-aghahi.dart';
import 'package:get_it/get_it.dart';

class Messages extends StatelessWidget {
  final _accountRepo = GetIt.I.get<AccountRepo>();

  Messages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Aghahi>>(
      future: _accountRepo.fetchagahi(),
      builder: (BuildContext context, snapshot) {
        if (!snapshot.hasData) {
          return const CircularProgressIndicator();
        }
        return ListView.builder(
          shrinkWrap: true,
          itemCount: snapshot.data!.length,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                Container(
                  child: Text(
                    snapshot.data![index].userTitle.toString(),
                    style: TextStyle(
                        color: index % 2 == 0 ? Colors.red : Colors.green),
                  ),
                )
              ],
            );
          },
        );
      },
    );
  }
}
