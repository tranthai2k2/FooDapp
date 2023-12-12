import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/search_screen.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          width: double.infinity,
          height: 76,
          decoration: BoxDecoration(color: Color(0xFFDB166E)),
          child: Stack(
            children: [
              Positioned(
                top: 40,
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
                top: 44,
                left: 140,
                child: Text(
                  'ORDER HISTORY',
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
                top: 40,
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
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListView(
              children: [
                Container(
                  width: 343,
                  height: 158,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 343,
                          height: 158,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 12,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 93,
                        top: 58.32,
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
                                top: 0,
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
                        left: 14,
                        top: 13,
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
                                      "assets/images/img_awful.png",
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
                        top: 14,
                        child: Text(
                          'Awful Potato Bagel',
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
                        top: 37,
                        child: Text(
                          'Truffle with mashed potato ',
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
                        top: 92,
                        child: Container(
                          width: 343,
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFFAF7F7),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 116,
                        child: Container(
                          width: 17,
                          height: 17,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: SvgPicture.asset('assets/vectors/list.svg'),
                        ),
                      ),
                      const Positioned(
                        left: 39,
                        top: 117,
                        child: Text(
                          '28 Nov 2021 10 : 32 AM',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 253,
                        top: 115,
                        child: Text(
                          '\$ 332.00',
                          style: TextStyle(
                            color: Color(0xFFDB166E),
                            fontSize: 18,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  width: 343,
                  height: 158,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 343,
                          height: 158,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 12,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 93,
                        top: 58.32,
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
                                top: 0,
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
                        left: 14,
                        top: 13,
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
                                      "assets/images/img_breadcrumb.png",
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
                        top: 14,
                        child: Text(
                          'Breadcrumb Coated Crab Cakes',
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
                        top: 37,
                        child: Text(
                          'With avocado, red onion and spicy salsa',
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
                        top: 92,
                        child: Container(
                          width: 343,
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
                        left: 14,
                        top: 116,
                        child: Container(
                          width: 17,
                          height: 17,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: SvgPicture.asset('assets/vectors/list.svg'),
                        ),
                      ),
                      const Positioned(
                        left: 39,
                        top: 117,
                        child: Text(
                          '28 Nov 2021 10 : 32 AM',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 253,
                        top: 115,
                        child: Text(
                          '\$ 332.00',
                          style: TextStyle(
                            color: Color(0xFFDB166E),
                            fontSize: 18,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  width: 343,
                  height: 158,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 343,
                          height: 158,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 12,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 93,
                        top: 58.32,
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
                                top: 0,
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
                        left: 14,
                        top: 13,
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
                                      "assets/images/img_smoked.png",
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
                        top: 14,
                        child: Text(
                          'Smoked Salmon Pasta',
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
                        top: 37,
                        child: Text(
                          'Smoked salmon with cherry tomatoes, red.....',
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
                        top: 92,
                        child: Container(
                          width: 343,
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
                        left: 14,
                        top: 116,
                        child: Container(
                          width: 17,
                          height: 17,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: SvgPicture.asset('assets/vectors/list.svg'),
                        ),
                      ),
                      const Positioned(
                        left: 39,
                        top: 117,
                        child: Text(
                          '28 Nov 2021 10 : 32 AM',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 253,
                        top: 115,
                        child: Text(
                          '\$ 332.00',
                          style: TextStyle(
                            color: Color(0xFFDB166E),
                            fontSize: 18,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  width: 343,
                  height: 158,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 343,
                          height: 158,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 12,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 93,
                        top: 58.32,
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
                                top: 0,
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
                        left: 14,
                        top: 13,
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
                                      "assets/images/img_penne.png",
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
                        top: 14,
                        child: Text(
                          'Penne Arrabbiata',
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
                        top: 37,
                        child: Text(
                          'Fresh basil, garlic, onions, bell peppers, chili..... ',
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
                        top: 92,
                        child: Container(
                          width: 343,
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
                        left: 14,
                        top: 116,
                        child: Container(
                          width: 17,
                          height: 17,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: SvgPicture.asset('assets/vectors/list.svg'),
                        ),
                      ),
                      const Positioned(
                        left: 39,
                        top: 117,
                        child: Text(
                          '28 Nov 2021 10 : 32 AM',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 253,
                        top: 115,
                        child: Text(
                          '\$ 332.00',
                          style: TextStyle(
                            color: Color(0xFFDB166E),
                            fontSize: 18,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            height: 0,
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
