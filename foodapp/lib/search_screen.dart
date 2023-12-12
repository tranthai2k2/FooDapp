import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(color: Color(0xFFDB166E)),
          child: Stack(children: [
            Positioned(
              child: Container(
                margin: EdgeInsets.only(left: 16, top: 36),
                width: 273,
                height: 48,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 12,
                      left: 8,
                      child: SvgPicture.asset(
                        "assets/vectors/search.svg",
                        width: 24,
                        height: 24,
                      ),
                    ),
                    Positioned(
                      left: 44,
                      child: SizedBox(
                        width: 200, // Adjust TextField width as needed
                        child: TextField(
                          controller: _textEditingController,
                          decoration: InputDecoration(
                            hintText: 'Search for address, food...',
                            hintStyle: const TextStyle(
                              color: Color(0xFFC4C4C4),
                              fontSize: 16,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 52,
              left: 308,
              child: GestureDetector(
                onTap: () {
                  _textEditingController.clear();
                },
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ),
          ]),
        ),
        Expanded(
          child: ListView(children: [
            Container(
              margin: const EdgeInsets.only(
                left: 24,
              ),
              child: const Text(
                'RECENT SEARCH\n',
                style: TextStyle(
                  color: Color(0xFFB9B9B9),
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 0.07,
                  letterSpacing: -0.32,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 24,
                top: 12,
              ),
              child: const Text(
                'Restautrant\nSeafood in Da nang city\nCrafit Burger',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  letterSpacing: -0.32,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 24,
                top: 8,
              ),
              child: const Text(
                'RECOMMENDED FOR YOU',
                style: TextStyle(
                  color: Color(0xFFB9B9B9),
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  letterSpacing: -0.32,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 375,
              height: 80,
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
                    top: 10,
                    child: Text(
                      'Porridge with Pork Liver',
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
                    top: 33,
                    child: Text(
                      '\$32.00',
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
                    left: 92,
                    top: 48,
                    child: Container(
                      width: 122,
                      height: 12.54,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 1.19,
                            child: Container(
                              width: 12.75,
                              height: 11.35,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: SvgPicture.asset(
                                "assets/vectors/star.svg",
                                width: 14.78,
                                height: 14,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 11.84,
                            top: 1.19,
                            child: Container(
                              width: 12.75,
                              height: 11.35,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: SvgPicture.asset(
                                "assets/vectors/star.svg",
                                width: 14.78,
                                height: 14,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 23.67,
                            top: 1.19,
                            child: Container(
                              width: 12.75,
                              height: 11.35,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: SvgPicture.asset(
                                "assets/vectors/star.svg",
                                width: 14.78,
                                height: 14,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 35.51,
                            top: 1.19,
                            child: Container(
                              width: 12.75,
                              height: 11.35,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: SvgPicture.asset(
                                "assets/vectors/star.svg",
                                width: 14.78,
                                height: 14,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 47.34,
                            top: 1.19,
                            child: Container(
                              width: 12.75,
                              height: 11.35,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: SvgPicture.asset(
                                "assets/vectors/star.svg",
                                width: 14.78,
                                height: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 65.55,
                            top: 2,
                            child: SizedBox(
                              width: 56.45,
                              height: 12.17,
                              child: Text(
                                '286 reviews',
                                style: TextStyle(
                                  color: Color(0xFFC4C4C4),
                                  fontSize: 10,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 80,
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
                ],
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Container(
              width: 375,
              height: 80,
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
                                  "assets/images/img_concubine.png",
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
                    top: 10,
                    child: Text(
                      'Concubine Chicken (Half)',
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
                    top: 33,
                    child: Text(
                      '\$132.00',
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
                    left: 92,
                    top: 48,
                    child: Container(
                      width: 122,
                      height: 12.54,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 1.19,
                            child: Container(
                              width: 12.75,
                              height: 11.35,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: SvgPicture.asset(
                                "assets/vectors/star.svg",
                                width: 14.78,
                                height: 14,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 11.84,
                            top: 1.19,
                            child: Container(
                              width: 12.75,
                              height: 11.35,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: SvgPicture.asset(
                                "assets/vectors/star.svg",
                                width: 14.78,
                                height: 14,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 23.67,
                            top: 1.19,
                            child: Container(
                              width: 12.75,
                              height: 11.35,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: SvgPicture.asset(
                                "assets/vectors/star.svg",
                                width: 14.78,
                                height: 14,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 35.51,
                            top: 1.19,
                            child: Container(
                              width: 12.75,
                              height: 11.35,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: SvgPicture.asset(
                                "assets/vectors/star.svg",
                                width: 14.78,
                                height: 14,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 47.34,
                            top: 1.19,
                            child: Container(
                              width: 12.75,
                              height: 11.35,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: SvgPicture.asset(
                                "assets/vectors/star.svg",
                                width: 14.78,
                                height: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 65.55,
                            top: 2,
                            child: SizedBox(
                              width: 56.45,
                              height: 12.17,
                              child: Text(
                                '286 reviews',
                                style: TextStyle(
                                  color: Color(0xFFC4C4C4),
                                  fontSize: 10,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 80,
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
                ],
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Container(
              width: 375,
              height: 80,
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
                                  "assets/images/img_ginger.png",
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
                    top: 10,
                    child: Text(
                      'Ginger Red Date Cake',
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
                    top: 33,
                    child: Text(
                      '\$18.00',
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
                    left: 92,
                    top: 48,
                    child: Container(
                      width: 122,
                      height: 12.54,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 1.19,
                            child: Container(
                              width: 12.75,
                              height: 11.35,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: SvgPicture.asset(
                                "assets/vectors/star.svg",
                                width: 14.78,
                                height: 14,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 11.84,
                            top: 1.19,
                            child: Container(
                              width: 12.75,
                              height: 11.35,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: SvgPicture.asset(
                                "assets/vectors/star.svg",
                                width: 14.78,
                                height: 14,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 23.67,
                            top: 1.19,
                            child: Container(
                              width: 12.75,
                              height: 11.35,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: SvgPicture.asset(
                                "assets/vectors/star.svg",
                                width: 14.78,
                                height: 14,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 35.51,
                            top: 1.19,
                            child: Container(
                              width: 12.75,
                              height: 11.35,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: SvgPicture.asset(
                                "assets/vectors/star.svg",
                                width: 14.78,
                                height: 14,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 47.34,
                            top: 1.19,
                            child: Container(
                              width: 12.75,
                              height: 11.35,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: SvgPicture.asset(
                                "assets/vectors/star.svg",
                                width: 14.78,
                                height: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 65.55,
                            top: 2,
                            child: SizedBox(
                              width: 56.45,
                              height: 12.17,
                              child: Text(
                                '286 reviews',
                                style: TextStyle(
                                  color: Color(0xFFC4C4C4),
                                  fontSize: 10,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 80,
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
                ],
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
