import 'package:flutter/material.dart';

import 'constants.dart';

class SplitTheBill5 extends StatefulWidget {
  const SplitTheBill5({super.key});

  @override
  State<SplitTheBill5> createState() => _SplitTheBill5State();
}

class _SplitTheBill5State extends State<SplitTheBill5> {
  final textStylered = const TextStyle(
    fontSize: 24,
    color: Color(0xFFEB5757),
    fontWeight: FontWeight.bold,
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
          SizedBox(height: 50),
          Container(
            child: Text(
              "Page Not Found",
              style: textStylered,
            ),
          ),
          SizedBox(height: 100),
          Container(
            height: 260,
            width: 390,
            child: Center(
              child: Image(
                image: AssetImage('assets/images/image2.png'),
              ),
            ),
          ),
          SizedBox(height: 200),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(358, 48),
                backgroundColor: appbarcolor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Text(
                "GO TO HOME",
                style: TextStyle(
                  fontSize: textsize,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
