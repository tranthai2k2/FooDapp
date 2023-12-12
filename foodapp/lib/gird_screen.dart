import 'package:foodapp/shop_online_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GirdScreen extends StatefulWidget {
  const GirdScreen({Key? key}) : super(key: key);

  @override
  State<GirdScreen> createState() => _GirdScreenState();
}

class _GirdScreenState extends State<GirdScreen> {
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
            padding: const EdgeInsets.only(left: 18),
            child: ListView(children: [
              Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          width: 167,
                          height: 275,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  width: 167,
                                  height: 275,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        child: Container(
                                          width: 167,
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
                                                      topLeft:
                                                          Radius.circular(8),
                                                      topRight:
                                                          Radius.circular(8),
                                                    ),
                                                    child: Container(
                                                      decoration:
                                                          ShapeDecoration(
                                                        color: Colors.white,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8)),
                                                      ),
                                                      child: Image.asset(
                                                        "assets/images/img_boscaiola.png",
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
                                          width: 167,
                                          height: 107,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0x19000000),
                                                blurRadius: 12,
                                                offset: Offset(0, 4),
                                                spreadRadius: 0,
                                              )
                                            ],
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 12,
                                top: 176,
                                child: Text(
                                  'Pizza Boscaiola ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 12,
                                top: 203,
                                child: Text(
                                  'Mozzarella, ciuperci, bacon,\noregano – 420g',
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
                                left: 12,
                                top: 244,
                                child: Container(
                                  width: 134,
                                  height: 16,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 14,
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
                                        left: 13,
                                        top: 0,
                                        child: Container(
                                          width: 14,
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
                                        left: 26,
                                        top: 0,
                                        child: Container(
                                          width: 14,
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
                                        left: 39,
                                        top: 0,
                                        child: Container(
                                          width: 14,
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
                                        left: 52,
                                        top: 0,
                                        child: Container(
                                          width: 14,
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
                                        left: 72,
                                        top: 1,
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
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ShopOnlineScreen()),
                            );
                          },
                          child: Container(
                            width: 167,
                            height: 275,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                    width: 167,
                                    height: 275,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          child: Container(
                                            width: 167,
                                            height: 275,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  child: Container(
                                                    width: 468.97,
                                                    height: 167,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(8),
                                                        topRight:
                                                            Radius.circular(8),
                                                      ),
                                                      child: Container(
                                                        decoration:
                                                            ShapeDecoration(
                                                          color: Colors.white,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8)),
                                                        ),
                                                        child: Image.asset(
                                                          "assets/images/img_pulpa.png",
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
                                            width: 167,
                                            height: 107,
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shadows: const [
                                                BoxShadow(
                                                  color: Color(0x19000000),
                                                  blurRadius: 12,
                                                  offset: Offset(0, 4),
                                                  spreadRadius: 0,
                                                )
                                              ],
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 12,
                                  top: 176,
                                  child: Text(
                                    'Pulpa de pui la ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 12,
                                  top: 203,
                                  child: Text(
                                    'Lipie de casa, carne de pui, \nsosuri, salata - 400g',
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
                                  left: 12,
                                  top: 244,
                                  child: Container(
                                    width: 134,
                                    height: 16,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Container(
                                            width: 14,
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
                                          left: 13,
                                          top: 0,
                                          child: Container(
                                            width: 14,
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
                                          left: 26,
                                          top: 0,
                                          child: Container(
                                            width: 14,
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
                                          left: 39,
                                          top: 0,
                                          child: Container(
                                            width: 14,
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
                                          left: 52,
                                          top: 0,
                                          child: Container(
                                            width: 14,
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
                                          left: 72,
                                          top: 1,
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
                                      ],
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
                    height: 14,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          width: 167,
                          height: 275,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  width: 167,
                                  height: 275,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        child: Container(
                                          width: 167,
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
                                                      topLeft:
                                                          Radius.circular(8),
                                                      topRight:
                                                          Radius.circular(8),
                                                    ),
                                                    child: Container(
                                                      decoration:
                                                          ShapeDecoration(
                                                        color: Colors.white,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8)),
                                                      ),
                                                      child: Image.asset(
                                                        "assets/images/img_shaorma.png",
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
                                          width: 167,
                                          height: 107,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0x19000000),
                                                blurRadius: 12,
                                                offset: Offset(0, 4),
                                                spreadRadius: 0,
                                              )
                                            ],
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 12,
                                top: 176,
                                child: Text(
                                  'Shaorma',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 12,
                                top: 203,
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
                              Positioned(
                                left: 12,
                                top: 244,
                                child: Container(
                                  width: 134,
                                  height: 16,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 14,
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
                                        left: 13,
                                        top: 0,
                                        child: Container(
                                          width: 14,
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
                                        left: 26,
                                        top: 0,
                                        child: Container(
                                          width: 14,
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
                                        left: 39,
                                        top: 0,
                                        child: Container(
                                          width: 14,
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
                                        left: 52,
                                        top: 0,
                                        child: Container(
                                          width: 14,
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
                                        left: 72,
                                        top: 1,
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
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Container(
                          width: 167,
                          height: 275,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  width: 167,
                                  height: 275,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        child: Container(
                                          width: 167,
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
                                                      topLeft:
                                                          Radius.circular(8),
                                                      topRight:
                                                          Radius.circular(8),
                                                    ),
                                                    child: Container(
                                                      decoration:
                                                          ShapeDecoration(
                                                        color: Colors.white,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8)),
                                                      ),
                                                      child: Image.asset(
                                                        "assets/images/img_meniu.png",
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
                                          width: 167,
                                          height: 107,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0x19000000),
                                                blurRadius: 12,
                                                offset: Offset(0, 4),
                                                spreadRadius: 0,
                                              )
                                            ],
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 12,
                                top: 176,
                                child: Text(
                                  'Meniu mici la far....',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 12,
                                top: 203,
                                child: Text(
                                  'Corn, mici 4 buc., cartofi pai,\n varza, mustar - 550g',
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
                                left: 12,
                                top: 244,
                                child: Container(
                                  width: 134,
                                  height: 16,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 14,
                                          height: 14,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                          child: SvgPicture.asset(
                                            "assets/vectors/star.svg",
                                            width: 14.78,
                                            height: 14,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 13,
                                        top: 0,
                                        child: Container(
                                          width: 14,
                                          height: 14,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                          child: SvgPicture.asset(
                                            "assets/vectors/star.svg",
                                            width: 14.78,
                                            height: 14,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 26,
                                        top: 0,
                                        child: Container(
                                          width: 14,
                                          height: 14,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                          child: SvgPicture.asset(
                                            "assets/vectors/star.svg",
                                            width: 14.78,
                                            height: 14,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 39,
                                        top: 0,
                                        child: Container(
                                          width: 14,
                                          height: 14,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                          child: SvgPicture.asset(
                                            "assets/vectors/star.svg",
                                            width: 14.78,
                                            height: 14,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 52,
                                        top: 0,
                                        child: Container(
                                          width: 14,
                                          height: 14,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                          child: SvgPicture.asset(
                                            "assets/vectors/star.svg",
                                            width: 14.78,
                                            height: 14,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 72,
                                        top: 1,
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
                ],
              )
            ]),
          ),
        ),
      ]),
    );
  }
}
