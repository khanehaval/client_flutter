import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Messages.dart';
import 'package:flutter_application_1/pages/advertisement_registration.dart';
import 'package:flutter_application_1/pages/grouping.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/real_estate.dart';
import 'package:get/get.dart';

/// Flutter code sample for [NavigationBar].

void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  var currentPageIndex = 0.obs;

  var page = [
    Home(),
    Messages(),
    AdvertisementRegistration(),
    Grouping(),
    RealEstate()
  ];

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
            bottomNavigationBar: Obx(() => NavigationBar(
            onDestinationSelected: (int index) {
              currentPageIndex.update((val) {
                currentPageIndex.value = index;
              },
              );
              
            },
            
            indicatorColor: Colors.blueAccent,
            selectedIndex: currentPageIndex.value,
            destinations: const <Widget>[
              NavigationDestination(
                selectedIcon: Icon(CupertinoIcons.home),
                icon: Icon(
                  Icons.home_rounded,
                  size: 40,
                ),
                label: '',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.messenger),
                icon: Icon(
                  Icons.message_rounded,
                  size: 40,
                ),
                label: '',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.add_circle_outline_rounded),
                icon: Icon(
                  Icons.add_circle_outline_rounded,
                  size: 40,
                ),
                label: '',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.widgets),
                icon: Icon(
                  Icons.widgets,
                  size: 40,
                ),
                label: '',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.location_on_outlined),
                icon: Icon(
                  Icons.location_on_outlined,
                  size: 40,
                ),
                label: '',
              ),
            ],
          )),
      body: Obx(() => page[currentPageIndex.value]),
    );
  }
}
