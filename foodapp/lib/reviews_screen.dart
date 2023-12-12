import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({Key? key}) : super(key: key);

  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: double.infinity,
          height: 76,
          decoration: BoxDecoration(color: Color(0xFFDB166E)),
          child: Stack(
            children: [
              Positioned(
                top: 40,
                left: 20,
                child: SvgPicture.asset(
                  "assets/vectors/arrow-left.svg",
                  width: 24,
                  height: 24,
                  color: Colors.white,
                ),
              ),
              const Positioned(
                top: 44,
                left: 140,
                child: Text(
                  'REVIEWS',
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
                  "assets/vectors/search.svg",
                  width: 20,
                  height: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 16,
                ),
                width: double.infinity,
                height: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 42,
                          height: 42,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFC4C4C4),
                            shape: OvalBorder(),
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Anna Rose',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            Text(
                              '2 hours ago',
                              style: TextStyle(
                                color: Color(0xFF5F5F5F),
                                fontSize: 13,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 136),
                        Container(
                          width: 100,
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
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 54),
                      child: Text(
                        'We had a chance to try some of the food\nfrom the restaurant prepared for the food\nfestival, and the chicken croquettes\nwere simply amazing!',
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
              Container(
                width: 395,
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
                height: 28,
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 16,
                ),
                width: double.infinity,
                height: 110,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 42,
                          height: 42,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFC4C4C4),
                            shape: OvalBorder(),
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Robert Brown',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            Text(
                              '4 hours ago',
                              style: TextStyle(
                                color: Color(0xFF5F5F5F),
                                fontSize: 13,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 115),
                        Container(
                          width: 100,
                          height: 16,
                          child: Stack(
                            children: [
                              Positioned(
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
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 54),
                      child: Text(
                        'Amazing meat, lamb is a dream Top service,\nnice atmosphere......... Very recommended.\nWine least must be improved',
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
              Padding(
                padding: const EdgeInsets.only(
                  left: 70,
                ),
                child: Container(
                  height: 80,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal, // Scroll theo chiều ngang
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                          width: 18); // Khoảng cách giữa các phần tử
                    },
                    itemCount: 4, // Số lượng hình ảnh trong danh sách
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 91,
                        height: 96,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/img_photos${index + 1}.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: 395,
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
                height: 28,
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 16,
                ),
                width: double.infinity,
                height: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 42,
                          height: 42,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFC4C4C4),
                            shape: OvalBorder(),
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mike Jhone',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            Text(
                              '2 days ago',
                              style: TextStyle(
                                color: Color(0xFF5F5F5F),
                                fontSize: 13,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 115),
                        Container(
                          width: 100,
                          height: 16,
                          child: Stack(
                            children: [
                              Positioned(
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
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 54),
                      child: Text(
                        'We had a wonderful dinner last nite. The \nfood and staff were terrific. Often when we \ngo to restaurants it is hard to find a menu\nthat works well for the both of us. Random\nmakes that a non-issue. My companion was\nnot as hungry as I was. She asked for two\nappetizers, while I wanted an appetizer and \na main. She only wanted an appetizer portion ',
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
            ],
          ),
        ),
      ]),
    );
  }
}
