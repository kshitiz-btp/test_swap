import 'package:flutter/material.dart';

import 'constants.dart';

class SplitTheBill3 extends StatefulWidget {
  const SplitTheBill3({super.key});

  @override
  State<SplitTheBill3> createState() => _SplitTheBill3State();
}

class _SplitTheBill3State extends State<SplitTheBill3> {
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
            Image(
              image: AssetImage('assets/images/table1-03.png'),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          Container(
            height: 20,
            margin: const EdgeInsets.only(right: 12),
            padding: const EdgeInsets.only(left: 4, right: 4),
            // decoration: BoxDecoration(
            //   border: Border.all(color: blackcolor),
            // ),
            child: Center(
              child: Text(
                "Table 08",
                style: TextStyle(
                  color: blackcolor,
                ),
              ),
            ),
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Center(
              child: Text(
                "Total Bill",
                style: TextStyle(
                  fontSize: bottomtextsize,
                ),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Text(
                "₹1,000",
                style: TextStyle(
                  fontSize: 50,
                  color: appbarcolor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: surrouncolor,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "1",
                        style: TextStyle(
                          fontSize: textsize,
                          color: appbarcolor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Margherita Pizza",
                      style: TextStyle(
                        fontSize: textsize,
                      ),
                    ),
                  ),
                  Text(
                    "₹ 699",
                    style: TextStyle(
                      fontSize: textsize,
                      color: numcolor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4),
            Container(
              margin: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/face-06.png'),
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(width: 4),
                        Text("-"),
                        SizedBox(width: 6),
                        Text("1"),
                        SizedBox(width: 6),
                        Text("+"),
                        SizedBox(width: 8),
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/face-04.png'),
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(width: 4),
                        Text("-"),
                        SizedBox(width: 6),
                        Text("1"),
                        SizedBox(width: 6),
                        Text("+"),
                        SizedBox(width: 8),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                ],
              ),
            ),
            SizedBox(height: 12),
            Divider(height: 4),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: surrouncolor,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "1",
                        style: TextStyle(
                          fontSize: textsize,
                          color: appbarcolor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Heniken 330ml",
                      style: TextStyle(
                        fontSize: textsize,
                      ),
                    ),
                  ),
                  Text(
                    "₹ 280",
                    style: TextStyle(
                      fontSize: textsize,
                      color: numcolor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4),
            Container(
              margin: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/face-06.png'),
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(width: 4),
                        Text("-"),
                        SizedBox(width: 6),
                        Text("1"),
                        SizedBox(width: 6),
                        Text("+"),
                        SizedBox(width: 8),
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/face-04.png'),
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(width: 4),
                        Text("-"),
                        SizedBox(width: 6),
                        Text("1"),
                        SizedBox(width: 6),
                        Text("+"),
                        SizedBox(width: 8),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                ],
              ),
            ),
            SizedBox(height: 12),
            Divider(height: 4),
            SizedBox(height: 300),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total (incl VAT)",
                    style: TextStyle(fontSize: textsize),
                  ),
                  Text(
                    "₹ 1,000.00",
                    style: TextStyle(fontSize: textsize),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(358, 48),
                backgroundColor: appbarcolor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Text(
                "PAY YOUR SHARE",
                style: TextStyle(
                  fontSize: textsize,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
