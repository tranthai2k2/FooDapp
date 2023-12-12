import 'package:foodapp/gird_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchAddressScreen extends StatefulWidget {
  const SearchAddressScreen({Key? key}) : super(key: key);

  @override
  State<SearchAddressScreen> createState() => _SearchAddressScreenState();
}

class _SearchAddressScreenState extends State<SearchAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          width: double.infinity,
          height: 188,
          decoration: BoxDecoration(color: Color(0xFFAC1458)),
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 144,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: Color(0xFFDB166E),
                  ),
                  child: Stack(children: [
                    Positioned(
                      child: Container(
                        margin: const EdgeInsets.only(top: 44, left: 16),
                        width: 344,
                        height: 50,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 12,
                              left: 12,
                              child: Container(
                                // margin: EdgeInsets.only(left: 4),
                                child: SvgPicture.asset(
                                  "assets/vectors/arrow-left.svg",
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 12,
                              left: 46,
                              child: Transform(
                                transform: Matrix4.identity()
                                  ..translate(0.0, 0.0)
                                  ..rotateZ(1.57),
                                child: Container(
                                  width: 29,
                                  decoration: const ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        strokeAlign:
                                            BorderSide.strokeAlignCenter,
                                        color: Color(0xFFE5E5E5),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 16,
                              left: 64,
                              child: SvgPicture.asset(
                                "assets/vectors/search.svg",
                                width: 18,
                                height: 18,
                              ),
                            ),
                            const Positioned(
                              top: 16,
                              left: 92,
                              child: Text(
                                'Restaurants',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 16,
                              left: 276,
                              child: SvgPicture.asset(
                                "assets/vectors/location.svg",
                                width: 13.5,
                                height: 18,
                              ),
                            ),
                            const Positioned(
                              top: 16,
                              left: 300,
                              child: Text(
                                'Italia',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 112,
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 16,
                          ), // Khoảng trống ban đầu
                          Text(
                            'Nearby',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          SizedBox(width: 45), // Khoảng cách giữa các Text
                          Text(
                            'Popular',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(width: 40), // Khoảng cách giữa các Text
                          Text(
                            'Top review',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(width: 37), // Khoảng cách giữa các Text
                          Text(
                            'Recommend',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
              Positioned(
                top: 156,
                left: 20,
                child: SvgPicture.asset(
                  "assets/vectors/filter.svg",
                  width: 24,
                  height: 24,
                ),
              ),
              const Positioned(
                top: 160,
                left: 52,
                child: Text(
                  'Filter',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                top: 164,
                left: 320,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GirdScreen()),
                    );
                  },
                  child: SvgPicture.asset(
                    "assets/vectors/grid.svg",
                    width: 13,
                    height: 13,
                  ),
                ),
              ),
              Positioned(
                top: 160,
                left: 340,
                child: SvgPicture.asset(
                  "assets/vectors/message-square.svg",
                  width: 20,
                  height: 20,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListView(
              children: [
                Container(
                  width: 342,
                  height: 275,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          width: 342,
                          height: 275,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  width: 342,
                                  height: 275,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        child: Container(
                                          width: 468.97,
                                          height: 167,
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(8),
                                              topRight: Radius.circular(8),
                                            ),
                                            child: Container(
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                              ),
                                              child: Image.asset(
                                                "assets/images/img_tunaSushi.png",
                                                fit: BoxFit.fill,
                                              ),
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
                                top: 161,
                                child: Container(
                                  width: 342,
                                  height: 107,
                                  decoration: const ShapeDecoration(
                                    color: Colors.white,
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 12,
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      )
                                    ],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 24.57,
                        top: 176,
                        child: SizedBox(
                          width: 235.51,
                          child: Text(
                            'Tuna Sushi Platter (3 Types)',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 24.57,
                        top: 203,
                        child: SizedBox(
                          width: 274.42,
                          child: Text(
                            'Sushi Platter | Tuna (2 pcs), Semi-fatty Tuna (2 pcs), Prime Fatty Tuna (2 pcs)',
                            style: TextStyle(
                              color: Color(0xFF5F5F5F),
                              fontSize: 11,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 24.57,
                        top: 244,
                        child: Container(
                          width: 141.43,
                          height: 16,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 14.78,
                                  height: 14,
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
                                left: 13.72,
                                top: 0,
                                child: Container(
                                  width: 14.78,
                                  height: 14,
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
                                left: 27.44,
                                top: 0,
                                child: Container(
                                  width: 14.78,
                                  height: 14,
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
                                left: 41.16,
                                top: 0,
                                child: Container(
                                  width: 14.78,
                                  height: 14,
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
                                left: 54.88,
                                top: 0,
                                child: Container(
                                  width: 14.78,
                                  height: 14,
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
                                left: 75.99,
                                top: 1,
                                child: SizedBox(
                                  width: 65.44,
                                  child: Text(
                                    '286 reviews',
                                    style: TextStyle(
                                      color: Color(0xFFC4C4C4),
                                      fontSize: 11,
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
                    ],
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  width: 346,
                  height: 275,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          width: 342,
                          height: 275,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  width: 342,
                                  height: 275,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        child: Container(
                                          width: 468.97,
                                          height: 167,
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(8),
                                              topRight: Radius.circular(8),
                                            ),
                                            child: Image.asset(
                                              "assets/images/img_secret.png",
                                              fit: BoxFit.cover,
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
                                top: 161,
                                child: Container(
                                  width: 342,
                                  height: 107,
                                  decoration: const ShapeDecoration(
                                    color: Colors.white,
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 12,
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      ),
                                    ],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 25,
                        top: 176,
                        child: SizedBox(
                          width: 321,
                          height: 27,
                          child: Text(
                            'Secret Curry with Pan-seared Lamb....\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 24.57,
                        top: 203,
                        child: SizedBox(
                          width: 268.28,
                          child: Text(
                            'Lipie, carne pui, cartofi pai,\nsosuri, salata - 700g',
                            style: TextStyle(
                              color: Color(0xFF5F5F5F),
                              fontSize: 11,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 24.57,
                        top: 244,
                        child: Container(
                          width: 150.43,
                          height: 16,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 14.78,
                                  height: 14,
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
                                left: 14.59,
                                top: 0,
                                child: Container(
                                  width: 14.78,
                                  height: 14,
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
                                left: 29.19,
                                top: 0,
                                child: Container(
                                  width: 14.78,
                                  height: 14,
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
                                left: 43.78,
                                top: 0,
                                child: Container(
                                  width: 14.78,
                                  height: 14,
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
                                left: 58.37,
                                top: 0,
                                child: Container(
                                  width: 14.78,
                                  height: 14,
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
                                left: 80.83,
                                top: 1,
                                child: SizedBox(
                                  width: 69.60,
                                  child: Text(
                                    '286 reviews',
                                    style: TextStyle(
                                      color: Color(0xFFC4C4C4),
                                      fontSize: 11,
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
                    ],
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  width: 346,
                  height: 275,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          width: 342,
                          height: 275,
                          child: Stack(
                            children: [
                              Positioned(
                                width: 342,
                                height: 160,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/img_cat2.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 25,
                        top: 176,
                        child: SizedBox(
                          width: 321,
                          height: 27,
                          child: Text(
                            'Secret Curry with Pan-seared Lamb....\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 24.57,
                        top: 203,
                        child: SizedBox(
                          width: 268.28,
                          child: Text(
                            'Lipie, carne pui, cartofi pai,\nsosuri, salata - 700g',
                            style: TextStyle(
                              color: Color(0xFF5F5F5F),
                              fontSize: 11,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 24.57,
                        top: 244,
                        child: Container(
                          width: 150.43,
                          height: 16,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 15.72,
                                  height: 14,
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
                                left: 14.59,
                                top: 0,
                                child: Container(
                                  width: 15.72,
                                  height: 14,
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
                                left: 29.19,
                                top: 0,
                                child: Container(
                                  width: 15.72,
                                  height: 14,
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
                                left: 43.78,
                                top: 0,
                                child: Container(
                                  width: 15.72,
                                  height: 14,
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
                                left: 58.37,
                                top: 0,
                                child: Container(
                                  width: 15.72,
                                  height: 14,
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
                                left: 80.83,
                                top: 1,
                                child: SizedBox(
                                  width: 69.60,
                                  child: Text(
                                    '286 reviews',
                                    style: TextStyle(
                                      color: Color(0xFFC4C4C4),
                                      fontSize: 11,
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
