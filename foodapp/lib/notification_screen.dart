import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/search_screen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 76,
            decoration: BoxDecoration(color: Color(0xFFDB166E)),
            child: Stack(
              children: [
                Positioned(
                  top: 38,
                  left: 20,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SearchScreen()),
                      );
                    },
                    child: SvgPicture.asset(
                      "assets/vectors/search.svg",
                      width: 24,
                      height: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Positioned(
                  top: 40,
                  left: 144,
                  child: Text(
                    'NOTIFICATION',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  top: 38,
                  left: 344,
                  child: SvgPicture.asset(
                    "assets/vectors/ic_setting.svg",
                    width: 20,
                    height: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  width: 375,
                  height: 136,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 20,
                        top: 0,
                        child: Container(
                          width: 59,
                          height: 59,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  width: 59,
                                  height: 59,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: Image.asset(
                                      "assets/images/item-1.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 93,
                        top: 0,
                        child: Text(
                          'Good food and its benifits',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 93,
                        top: 111,
                        child: Text(
                          '15 mins',
                          style: TextStyle(
                            color: Color(0xFF5F5F5F),
                            fontSize: 11,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 136,
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
                      const Positioned(
                        left: 93,
                        top: 24,
                        child: SizedBox(
                          width: 273,
                          child: Text(
                            "Goodfood makes cooking fun and\neasy. We'll provide you with all theingredients in your meal kit that you\nneed to make a delicious meal.\n",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Nunito',
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
                  height: 18,
                ),
                Container(
                  width: 375,
                  height: 136,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 20,
                        top: 0,
                        child: Container(
                          width: 59,
                          height: 59,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  width: 59,
                                  height: 59,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: Image.asset(
                                      "assets/images/item-2.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 93,
                        top: 0,
                        child: Text(
                          'Your first dinner party',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 93,
                        top: 111,
                        child: Text(
                          '25 mins',
                          style: TextStyle(
                            color: Color(0xFF5F5F5F),
                            fontSize: 11,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 136,
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
                      const Positioned(
                        left: 93,
                        top: 24,
                        child: SizedBox(
                          width: 273,
                          child: Text(
                            'A dinner party is a lot more intimate than a party-party, so inviting only friends who have never could be awkward. Instead, invite people.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Nunito',
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
                  height: 18,
                ),
                Container(
                  width: 375,
                  height: 170,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 20,
                        top: 0,
                        child: Container(
                          width: 59,
                          height: 59,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  width: 59,
                                  height: 59,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: Image.asset(
                                      "assets/images/item-3.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 93,
                        top: 0,
                        child: Text(
                          'Become the Grill Master',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 93,
                        top: 142,
                        child: Text(
                          '55 mins',
                          style: TextStyle(
                            color: Color(0xFF5F5F5F),
                            fontSize: 11,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 168,
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
                      const Positioned(
                        left: 93,
                        top: 24,
                        child: SizedBox(
                          width: 273,
                          child: Text(
                            "Those steaks are cooking way faster than the potatoes! Grill, it's pretty\nsimple: move the steaks over to the\ncool side, away from the charcoal.\nYour steak can rest and continue to absorb those smokey flavors.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Nunito',
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
                  height: 18,
                ),
                Container(
                  width: 375,
                  height: 126,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 20,
                        top: 0,
                        child: Container(
                          width: 59,
                          height: 59,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  width: 59,
                                  height: 59,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: Image.asset(
                                      "assets/images/item-4.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 93,
                        top: 0,
                        child: Text(
                          'Coffee cake and mood',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 92,
                        top: 88,
                        child: Text(
                          'Yesterday',
                          style: TextStyle(
                            color: Color(0xFF5F5F5F),
                            fontSize: 11,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      // Positioned(
                      //   top: 168,
                      //   child: Container(
                      //     width: 375,
                      //     decoration: const ShapeDecoration(
                      //       shape: RoundedRectangleBorder(
                      //         side: BorderSide(
                      //           width: 1,
                      //           strokeAlign: BorderSide.strokeAlignCenter,
                      //           color: Color(0xFFE5E5E5),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      const Positioned(
                        left: 93,
                        top: 24,
                        child: SizedBox(
                          width: 273,
                          child: Text(
                            'Two layers separated by coffee butter icing, which also covers the top of the cake.\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
