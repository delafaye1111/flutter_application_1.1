// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/about_page.dart';
import 'package:flutter_application_1/detail_page.dart';
import 'package:flutter_application_1/display_page.dart';
import 'package:flutter_application_1/my_theme.dart';
import 'package:flutter_application_1/mylist_page.dart';
import 'evcharging_page.dart';
import 'welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: myTheme(),
        initialRoute: '/',
        routes: {
          '/': (context) => const MyListPage(),
          '/welcomePage': (context) => WelcomePage(),
          '/evchargingPage': (context) => EvchargingPage(),
          '/displayPage': (context) => DisplayPage(),
        },
        );// home: const AboutPage());
  }
}
