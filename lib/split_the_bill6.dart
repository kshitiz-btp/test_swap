import 'package:flutter/material.dart';

import 'constants.dart';

class SplitTheBill6 extends StatefulWidget {
  const SplitTheBill6({super.key});

  @override
  State<SplitTheBill6> createState() => _SplitTheBill6State();
}

class _SplitTheBill6State extends State<SplitTheBill6> {
  final textstyle1 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  final textstyle2 = const TextStyle(
    fontSize: textsize,
    color: numcolor,
  );

  final textstyle3 = const TextStyle(
    fontSize: textsize,
    color: Color(
      0xFF219653,
    ),
  );

  final textstyle4 = const TextStyle(
    fontSize: textsize,
    color: Color(0xFF010F07),
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
          Text("Bill Receipt", style: textstyle1),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Margherita Pizza",
                    style: textstyle4,
                  ),
                ),
                Text(
                  "₹ 699",
                  style: textstyle3,
                ),
              ],
            ),
          ),
          Divider(thickness: 2),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Heniken 330ml",
                    style: textstyle4,
                  ),
                ),
                Text(
                  "₹ 280",
                  style: textstyle3,
                ),
              ],
            ),
          ),
          Divider(thickness: 2),
          SizedBox(height: 400),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "SubTotal",
                  style: TextStyle(fontSize: textsize),
                ),
                Text(
                  "₹ 1,000.00",
                  style: TextStyle(fontSize: textsize),
                ),
              ],
            ),
          ),
          SizedBox(height: 12),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tax (SGST/CGST)",
                  style: TextStyle(fontSize: textsize),
                ),
                Text(
                  "₹ 50.00",
                  style: TextStyle(fontSize: textsize),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total (incl. Tax)",
                  style: TextStyle(fontSize: textsize),
                ),
                Text(
                  "₹ 1,050.00",
                  style: TextStyle(fontSize: textsize),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
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
                "GO BACK",
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
