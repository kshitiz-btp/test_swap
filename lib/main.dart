import 'package:flutter/material.dart';
import 'package:muncho_bill_split/constants.dart';
import 'package:muncho_bill_split/split_the_bill2.dart';
import 'package:muncho_bill_split/split_the_bill3.dart';
import 'package:muncho_bill_split/split_the_bill6.dart';

import 'split_the_bill1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muncho Bill Split',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: whitecolor,
      ),
      home: const SplitTheBill6(),
    );
  }
}
