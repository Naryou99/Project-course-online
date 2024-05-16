// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:projectuts5/components/PageOneActivity.dart';
import 'package:projectuts5/components/PageTwoActivity.dart';
import 'package:projectuts5/components/about_us.dart';
import 'package:projectuts5/components/activity.dart';
import 'package:projectuts5/components/home.dart';
import 'package:projectuts5/components/profile.dart';
import 'package:projectuts5/components/whislist.dart';
import 'package:projectuts5/pages/landingpage.dart';
import 'package:projectuts5/pages/loginpage.dart';
import 'package:projectuts5/pages/mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
