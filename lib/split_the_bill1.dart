import 'package:flutter/material.dart';
import 'package:muncho_bill_split/split_the_bill2.dart';

import 'constants.dart';

class SplitTheBill1 extends StatefulWidget {
  const SplitTheBill1({super.key});

  @override
  State<SplitTheBill1> createState() => _SplitTheBill1State();
}

class _SplitTheBill1State extends State<SplitTheBill1> {
  void navigatetootherscreen() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => SplitTheBill2()));
  }

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
          onPressed: () {},
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
            Center(
              child: Text(
                "Add Friends",
                style: TextStyle(
                  fontSize: textsize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(8.0).copyWith(
                left: 16,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Margherita Pizza",
                    style: TextStyle(
                      fontSize: textsize,
                    ),
                  ),
                  Text(
                    "Rs 699",
                    style: TextStyle(
                      fontSize: numsize,
                      color: numcolor,
                    ),
                  ),
                ],
              ),
            ),
            Divider(height: 4),
            Padding(
              padding: const EdgeInsets.all(8.0).copyWith(
                left: 16,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Heniken 330ml",
                    style: TextStyle(
                      fontSize: textsize,
                    ),
                  ),
                  Text(
                    "Rs 280",
                    style: TextStyle(
                      fontSize: numsize,
                      color: numcolor,
                    ),
                  ),
                ],
              ),
            ),
            Divider(height: 4),
            SizedBox(height: 40),
            Center(
              child: Image(
                image: AssetImage('assets/images/table11-02.png'),
                width: 246,
                height: 254,
              ),
            ),
            SizedBox(height: 35),
            Row(
              children: [
                SizedBox(width: 15),
                Column(
                  children: [
                    Image(
                      image: AssetImage('assets/images/face-06.png'),
                      width: 64,
                      height: 64,
                    ),
                    SizedBox(height: 4),
                    Text(
                      "You",
                      style: TextStyle(
                        fontSize: textsize,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Image(
                      image: AssetImage('assets/images/face-04.png'),
                      width: 64,
                      height: 64,
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Brian",
                      style: TextStyle(
                        fontSize: textsize,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Stack(
                      children: [
                        Image(
                          image: AssetImage('assets/images/Ellipse_21.png'),
                          width: 64,
                          height: 64,
                        ),
                        Image(
                          image: AssetImage('assets/images/plus.png'),
                          width: 64,
                          height: 64,
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Add Friend",
                      style: TextStyle(
                        fontSize: textsize,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 70),
            Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total (incl VAT)",
                    style: TextStyle(
                      fontSize: textsize,
                    ),
                  ),
                  Text(
                    "₹ 1000",
                    style: TextStyle(
                      fontSize: textsize,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (builder) {
                      return Container(
                        height: 300,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          children: [
                            Center(
                              child: Text(
                                "SPLIT BY",
                                style: TextStyle(
                                  fontSize: bottomtextsize,
                                  color: appbarcolor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 35),
                            Text(
                              "Enter your mobile nuber to get added to the table and enjoy best offers.",
                              style: TextStyle(
                                fontSize: textsize,
                              ),
                            ),
                            SizedBox(height: 30),
                            ElevatedButton(
                              onPressed: () {
                                navigatetootherscreen();
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: const Size(358, 48),
                                backgroundColor: whitecolor,
                                elevation: 0,
                                side: BorderSide(color: appbarcolor),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: Text(
                                " SPLIT BY DISHES",
                                style: TextStyle(
                                  color: appbarcolor,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                navigatetootherscreen();
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: const Size(358, 48),
                                backgroundColor: appbarcolor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: Text(
                                " SPLIT EVENLY",
                                style: TextStyle(
                                  color: whitecolor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
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
