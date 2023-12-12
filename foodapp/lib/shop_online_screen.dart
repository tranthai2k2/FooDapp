import 'package:foodapp/all_categories_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/reviews_screen.dart';
import 'package:foodapp/book_a_table_screen.dart';

class ShopOnlineScreen extends StatefulWidget {
  const ShopOnlineScreen({Key? key}) : super(key: key);

  @override
  State<ShopOnlineScreen> createState() => _ShopOnlineScreenState();
}

class _ShopOnlineScreenState extends State<ShopOnlineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: double.infinity,
          height: 290,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/img_boneless.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Expanded(
          child: ListView(children: [
            Container(
              width: double.infinity,
              height: 143,
              decoration: const BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 12,
                          ),
                          const SizedBox(
                            width: 334,
                            child: Text(
                              'Boneless Sour and Spicy Chicken ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const SizedBox(
                            width: 274.42,
                            child: Text(
                              'Sushi Platter | Tuna (2 pcs), ',
                              style: TextStyle(
                                color: Color(0xFF939393),
                                fontSize: 13,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                          Container(
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
                                    decoration: const BoxDecoration(),
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
                                    decoration: const BoxDecoration(),
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
                                    decoration: const BoxDecoration(),
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
                                    decoration: const BoxDecoration(),
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
                                    decoration: const BoxDecoration(),
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
                        ]),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    child: Row(children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 16,
                          top: 92,
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'OPEN IN',
                              style: TextStyle(
                                color: Color(0xFF939393),
                                fontSize: 14,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            Text(
                              '10:00 - 23:00',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 164,
                      ),
                      Container(
                        width: 92,
                        height: 33,
                        margin: const EdgeInsets.only(
                          top: 64,
                        ),
                        decoration: ShapeDecoration(
                          color: const Color(0xFFDB166E),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        child: Stack(children: [
                          Positioned(
                            top: 4,
                            left: 4,
                            child: SvgPicture.asset(
                              "assets/vectors/phone.svg",
                              width: 21,
                              height: 21,
                            ),
                          ),
                          const Positioned(
                            left: 32,
                            top: 8,
                            child: Text(
                              'Contact',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          )
                        ]),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 175,
              decoration: const BoxDecoration(color: Colors.white),
              child: Stack(children: [
                const Positioned(
                  top: 20,
                  left: 16,
                  child: Text(
                    'PHOTOS',
                    style: TextStyle(
                      color: Color(0xFF939393),
                      fontSize: 14,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      top: 48,
                    ),
                    child: Container(
                      height: 96, // Chiều cao của danh sách hình ảnh
                      child: ListView.separated(
                        scrollDirection:
                            Axis.horizontal, // Scroll theo chiều ngang
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                              width: 18); // Khoảng cách giữa các phần tử
                        },
                        itemCount: 4, // Số lượng hình ảnh trong danh sách
                        itemBuilder: (BuildContext context, int index) {
                          return Hero(
                            tag: 'image${index + 1}',
                            child: Container(
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
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 406,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 203,
                      decoration: const BoxDecoration(color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        'DESCRIPTIONS',
                        style: TextStyle(
                          color: Color(0xFF939393),
                          fontSize: 14,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'Food is scrumptious, delicious, delectable, luscious,\ngreat tasting, much more than tasty, really appetizing,\nlip-smacking; the kind of food to have you licking your\nlips in anticipation. This is the word everyone wants to\nhear when bringing food to the table. Yummy food is\nnever unpalatable, plain tasting, distasteful or\ndisgusting. ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: 'View more',
                              style: TextStyle(
                                color: Color(0xFFDB166E),
                                fontSize: 14,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 360,
              decoration: const BoxDecoration(color: Colors.white),
              child: Stack(children: [
                Positioned(
                  top: 12,
                  child: Container(
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 12,
                        ),
                        const Text(
                          'MENU',
                          style: TextStyle(
                            color: Color(0xFF939393),
                            fontSize: 14,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        const SizedBox(
                          width: 198,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const AllCategoriesScreen()),
                            );
                          },
                          child: const Text(
                            'See all categories',
                            style: TextStyle(
                              color: Color(0xFFDB166E),
                              fontSize: 14,
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
                Positioned(
                  top: 52,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 16,
                          ),
                          Container(
                            width: 59,
                            height: 59,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/img_onion.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Onion Rings',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                              Text(
                                '\$60.30',
                                style: TextStyle(
                                  color: Color(0xFF5F5F5F),
                                  fontSize: 11,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: 400,
                        margin: EdgeInsets.only(top: 12),
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
                    ],
                  ),
                ),
                Positioned(
                  top: 146,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 16,
                          ),
                          Container(
                            width: 59,
                            height: 59,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/img_buffalo.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Buffalo Wings',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                              Text(
                                '\$72.00',
                                style: TextStyle(
                                  color: Color(0xFF5F5F5F),
                                  fontSize: 11,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: 400,
                        margin: EdgeInsets.only(top: 12),
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
                    ],
                  ),
                ),
                Positioned(
                  top: 244,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 16,
                          ),
                          Container(
                            width: 59,
                            height: 59,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/img_spaghetti.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Spaghetti Carbonara',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                              Text(
                                '\$39.00',
                                style: TextStyle(
                                  color: Color(0xFF5F5F5F),
                                  fontSize: 11,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: 400,
                        margin: EdgeInsets.only(top: 12),
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
                    ],
                  ),
                ),
                const Positioned(
                  top: 330,
                  left: 152,
                  child: Text(
                    'View more',
                    style: TextStyle(
                      color: Color(0xFF939393),
                      fontSize: 14,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                width: double.infinity,
                height: 300,
                decoration: const BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Positioned(
                      top: 12,
                      child: Container(
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 12,
                            ),
                            const Text(
                              'REVIEWS',
                              style: TextStyle(
                                color: Color(0xFF939393),
                                fontSize: 14,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            const SizedBox(
                              width: 198,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ReviewsScreen()),
                                );
                              },
                              child: const Text(
                                'See all review',
                                style: TextStyle(
                                  color: Color(0xFFDB166E),
                                  fontSize: 14,
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
                    Positioned(
                      top: 64,
                      left: 16,
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
                              const SizedBox(width: 146),
                              Container(
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
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 180,
                      child: Container(
                        width: 388,
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
                      top: 200,
                      left: 16,
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
                              const SizedBox(width: 126),
                              Container(
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
                  ],
                )),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BookATableScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFDB166E), // Màu nền của nút
                minimumSize: const Size(
                    double.infinity, 60), // Kích thước tối thiểu của nút
              ),
              child: const Text(
                'BOOK A TABLE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            )
          ]),
        )
      ]),
    );
  }
}
