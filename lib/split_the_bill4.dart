import 'package:flutter/material.dart';

import 'package:muncho_bill_split/constants.dart';

class SplitTheBill4 extends StatefulWidget {
  const SplitTheBill4({super.key});

  @override
  State<SplitTheBill4> createState() => _SplitTheBill4State();
}

class _SplitTheBill4State extends State<SplitTheBill4> {
  final textStylered = const TextStyle(
    fontSize: 24,
    color: Color(0xFFEB5757),
    fontWeight: FontWeight.bold,
  );

  final textStylesimple = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whitecolor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: blackcolor,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "The Beer Cafe",
              style: TextStyle(
                color: appbarcolor,
                fontSize: fontsize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          Container(
            height: 26,
            width: 64,
            margin: const EdgeInsets.only(right: 12),
            padding: const EdgeInsets.only(left: 4, right: 4),
            // decoration: BoxDecoration(
            //   border: Border.all(color: blackcolor),
            // ),
            child: Center(
              child: Text(
                "Table",
                style: TextStyle(
                  color: blackcolor,
                ),
              ),
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 70),
          Container(
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Please Scan The",
                    style: textStylered,
                  ),
                  Text(
                    "QR Code Again",
                    style: textStylered,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
          Container(
            height: 278,
            width: 295,
            child: Image(
              image: AssetImage('assets/images/Group21.png'),
            ),
          ),
          SizedBox(height: 40),
          Container(
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Please Scan The Muncho QR code again",
                    style: textStylesimple,
                  ),
                  Text(
                    "From the Camera App",
                    style: textStylesimple,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
