import 'package:flutter/material.dart';
import 'package:muncho_bill_split/constants.dart';

import 'split_the_bill1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: whitecolor,
      ),
      home: const SplitTheBill1(),
    );
  }
}
