import 'package:flutter/material.dart';

import 'constants.dart';

class SplitTheBill2 extends StatefulWidget {
  const SplitTheBill2({super.key});

  @override
  State<SplitTheBill2> createState() => _SplitTheBill2State();
}

enum tipvalue { twenty, fifty, eighty, hundred }

class _SplitTheBill2State extends State<SplitTheBill2> {
  tipvalue? tip;
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
                  Image(
                    image: AssetImage('assets/images/face-06.png'),
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(width: 4),
                  Image(
                    image: AssetImage('assets/images/face-04.png'),
                    width: 24,
                    height: 24,
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
                  Image(
                    image: AssetImage('assets/images/face-06.png'),
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(width: 4),
                  Image(
                    image: AssetImage('assets/images/face-04.png'),
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(height: 4),
                ],
              ),
            ),
            SizedBox(height: 12),
            Divider(height: 4),
            SizedBox(height: 143),
            Text(
              "Tip Your Waiter",
              style: TextStyle(fontSize: textsize),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                SizedBox(width: 8),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        (tip == tipvalue.twenty) ? appbarcolor : whitecolor,
                    elevation: 0,
                    side: BorderSide(color: appbarcolor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      tip = tipvalue.twenty;
                    });
                  },
                  child: Text(
                    "Rs.20",
                    style: TextStyle(
                      color:
                          (tip == tipvalue.twenty) ? whitecolor : appbarcolor,
                      fontSize: textsize,
                    ),
                  ),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        (tip == tipvalue.fifty) ? appbarcolor : whitecolor,
                    elevation: 0,
                    side: BorderSide(color: appbarcolor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      tip = tipvalue.fifty;
                    });
                  },
                  child: Text(
                    "Rs.50",
                    style: TextStyle(
                      color: (tip == tipvalue.fifty) ? whitecolor : appbarcolor,
                      fontSize: textsize,
                    ),
                  ),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        (tip == tipvalue.eighty) ? appbarcolor : whitecolor,
                    elevation: 0,
                    side: BorderSide(color: appbarcolor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      tip = tipvalue.eighty;
                    });
                  },
                  child: Text(
                    "Rs.80",
                    style: TextStyle(
                      color:
                          (tip == tipvalue.eighty) ? whitecolor : appbarcolor,
                      fontSize: textsize,
                    ),
                  ),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        (tip == tipvalue.hundred) ? appbarcolor : whitecolor,
                    elevation: 0,
                    side: BorderSide(color: appbarcolor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      tip = tipvalue.hundred;
                    });
                  },
                  child: Text(
                    "Rs.100",
                    style: TextStyle(
                      color:
                          (tip == tipvalue.hundred) ? whitecolor : appbarcolor,
                      fontSize: textsize,
                    ),
                  ),
                ),
                SizedBox(width: 5),
              ],
            ),
            SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your Share",
                    style: TextStyle(
                      fontSize: textsize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "₹ 500.00",
                    style: TextStyle(
                      fontSize: textsize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Divider(height: 10),
            SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Promo Code",
                    style: TextStyle(
                      fontSize: textsize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Divider(height: 10),
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
                "SPLIT",
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
