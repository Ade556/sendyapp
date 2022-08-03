import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 12,
          unselectedFontSize: 12,
          currentIndex: 0,
          selectedLabelStyle: TextStyle(
            fontFamily: 'Lato',
          ),
          unselectedLabelStyle: TextStyle(
            fontFamily: 'Lato',
          ),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Color(0xff025440),
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/Vector (5).png'),
                label: 'Payments'),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/Vector (9).png'),
              label: 'Profile',
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/Ellipse 1.png'),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            'Hello, Tolu',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Lato',
                              color: Color(0xff484848),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset('assets/images/Group 1000003777.png'),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 149,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff025440),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.only(left: 24),
                            child: Text(
                              'Total Balance',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Cairo',
                                color: Color(0xff91A8A4),
                              ),
                            ),
                          ),
                          SizedBox(height: 1),
                          Padding(
                            padding: EdgeInsets.only(left: 25),
                            child: Row(
                              children: [
                                Text(
                                  '₦350,000.00',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                  height: 15,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Image.asset(
                                        'assets/images/Vector (2).png'),
                                  ),
                                ),
                                SizedBox(
                                  width: 80,
                                  height: 1,
                                  child:
                                      Image.asset('assets/images/Vector.png'),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.only(left: 24),
                            child: Container(
                              width: 85,
                              height: 28,
                              padding: const EdgeInsets.only(left: 3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'Add Money',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff025440),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 0,
                        right: -15,
                        child: Image.asset(
                          "assets/images/Vector.png",
                          color: Colors.white.withOpacity(0.1),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 46,
                          height: 35,
                          child: Image.asset('assets/images/Vector (5).png'),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xff025440),
                          ),
                        ),
                        Text(
                          'Send',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 46,
                      height: 35,
                      child: Image.asset('assets/images/Vector (6).png'),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xff025440),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: 46,
                          height: 35,
                          child: Image.asset('assets/images/Vector (7).png'),
                          color: Color(0xff025440),
                        ),
                        Text(
                          'Paybills',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 23),
                      child: Text(
                        'Recent Transactions',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Work Sans',
                          fontWeight: FontWeight.w600,
                          color: Color(0xff484848),
                        ),
                      ),
                    ),
                    SizedBox(height: 27),
                    Padding(
                      padding: const EdgeInsets.only(right: 19),
                      child: Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Cairo',
                          color: Color(0xff025440),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 58,
                          height: 58,
                          child: Center(
                              child: Text(
                            'G',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Work Sans',
                              color: Color(0xff5D41CF),
                            ),
                          )),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(93, 65, 207, 0.2),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Grazac',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Lato',
                                      color: Color(0xff484848),
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    '08:40am',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffC8C8C8),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '+600,000.00',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            fontFamily: 'Lato',
                            color: Color(0xff5ADF67),
                          ),
                        ),
                        Text(
                          'Successful',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff5ADF67),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 58,
                          height: 58,
                          child: Center(
                              child: Text(
                            'D',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Work Sans',
                              color: Color(0xff006DB0),
                            ),
                          )),
                          decoration: BoxDecoration(
                            color: Color(0xffCCE2EF),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'DSTV',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Lato',
                                      color: Color(0xff484848),
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    '08:40am',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffC8C8C8),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '+150,000.00',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffF44444),
                          ),
                        ),
                        Container(
                          width: 49,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color.fromRGBO(255, 210, 0, 0.25),
                          ),
                          child: Center(
                            child: Text(
                              'Pending',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 11,
                                color: Color(0xffFFD200),
                                fontFamily: 'Cairo',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 58,
                          height: 58,
                          child: Center(
                              child: Text(
                            'A',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Work Sans',
                              color: Color(0xffFF9800),
                            ),
                          )),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 152, 0, 0.25),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Adamu Adamu',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Lato',
                                      color: Color(0xff484848),
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 55),
                                    child: Text(
                                      '08:40am',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffC8C8C8),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '+150,000.00',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Lato',
                            color: Color(0xff5ADF67),
                          ),
                        ),
                        Text(
                          'Successful',
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff18A800),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 58,
                          height: 58,
                          child: Center(
                              child: Text(
                            'A',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Work Sans',
                              color: Color(0xffF44444),
                            ),
                          )),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(244, 68, 68, 0.2),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Airtime',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Lato',
                                      color: Color(0xff484848),
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    '08:40am',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffC8C8C8),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '-2,000.00',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Lato',
                            color: Color(0xffF44444),
                          ),
                        ),
                        Container(
                          width: 41,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color.fromRGBO(244, 68, 68, 0.25),
                          ),
                          child: Center(
                            child: Text(
                              'Failed',
                              style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffF44444),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
