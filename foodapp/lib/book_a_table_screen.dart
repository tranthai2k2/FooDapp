import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/thankyou_screen.dart';

class BookATableScreen extends StatefulWidget {
  const BookATableScreen({Key? key}) : super(key: key);

  @override
  State<BookATableScreen> createState() => _BookATableScreenState();
}

class _BookATableScreenState extends State<BookATableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: double.infinity,
          height: 160,
          child: Stack(
            children: [
              Positioned(
                top: 28,
                child: Row(
                  children: [
                    Container(
                      child: SvgPicture.asset(
                        "assets/vectors/plus.svg",
                        width: 40,
                        height: 40,
                      ),
                    ),
                    const SizedBox(
                      width: 92,
                    ),
                    const Text(
                      'BOOK A TABLE',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 375,
          decoration: const ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                strokeAlign: BorderSide.strokeAlignCenter,
                color: Color(0xFFE5E5E5),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Expanded(
          child: ListView(children: [
            Container(
              width: double.infinity,
              height: 120,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 12,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Stack(children: [
                const Positioned(
                  top: 20,
                  left: 20,
                  child: Text(
                    'ORDERING',
                    style: TextStyle(
                      color: Color(0xFF939393),
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 20,
                  child: Row(
                    children: [
                      const Text(
                        'Number of person',
                        style: TextStyle(
                          color: Color(0xFF939393),
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        width: 62,
                      ),
                      const Text(
                        '2 Adults, 3 Children',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Container(
                        child: SvgPicture.asset(
                          "assets/vectors/chevron-right.svg",
                          width: 18,
                          height: 18,
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 380,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 12,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 334,
                    child: Container(
                      width: 375,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFE5E5E5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 350,
                    left: 158,
                    child: GestureDetector(
                      onTap: () {
                        // Điều hướng sang trang khác khi nhấn vào "View more"
                        Navigator.pushNamed(context, '/secondPage');
                      },
                      child: const Text(
                        'View more',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF939292),
                          fontSize: 13,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      content: SizedBox(
                        width: 350, // Kích thước chiều rộng của AlertDialog
                        height: 550, // Kích thước chiều cao của AlertDialog
                        child: Center(
                          child: Container(
                            width: 309,
                            height: 513,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 53,
                                  left: 48,
                                  child: Container(
                                    width: 212,
                                    height: 212,
                                    decoration: const ShapeDecoration(
                                      color: Color(0xFFFF9CC8),
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 60,
                                  left: 26,
                                  child: Container(
                                    width: 262,
                                    height: 262,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/item-man.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  top: 308,
                                  left: 64,
                                  child: Text(
                                    'Thank you !',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 36,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  top: 364,
                                  left: 64,
                                  child: Text(
                                    'Your order is successfully',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 418,
                                  left: 88,
                                  child: Container(
                                    width: 126,
                                    height: 43,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFDB166E),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'OK',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFDB166E), // Color of the button
              ),
              child: Container(
                width: double.infinity,
                height: 60,
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      left: 18,
                      child: Row(
                        children: [
                          const Text(
                            'Total : \$345.00',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          const SizedBox(
                            width: 148,
                          ),
                          const Text(
                            'ORDER',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Container(
                            child: SvgPicture.asset(
                              "assets/vectors/arrow-right.svg",
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
