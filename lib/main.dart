// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'package:codewithbiki/responsive/desktop_body.dart';
import 'package:codewithbiki/responsive/mobile_body.dart';
import 'package:codewithbiki/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:codewithbiki/Download_Resume.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '@codewithbiki',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: ResponsiveLayout(
            mobileBody: MyMobileBody(), desktopBody: MyDesktopBody()));
  }
}
