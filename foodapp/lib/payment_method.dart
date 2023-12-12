import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
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
                left: 132,
                child: Text(
                  'PAYMENT METHOD',
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
        Expanded(
          child: ListView(
            children: [
              ElevatedButton(
                onPressed: () {
                  // Xử lý khi nút được nhấn
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        8.0), // Điều chỉnh độ cong theo ý muốn
                  ),
                  elevation: 0,
                  primary: Colors.white,
                  onPrimary: Colors.grey,
                ),
                child: Container(
                  width: double.infinity,
                  height: 57,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 12,
                            ),
                            Container(
                              width: 20,
                              height: 18,
                              child: SvgPicture.asset(
                                "assets/vectors/ic_vidientu.svg",
                                width: 18, // Chiều rộng của icon
                                height: 20, // Chiều cao của icon
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ), // Khoảng cách giữa icon và text
                            Container(
                              width: 108,
                              height: 19,
                              child: const Text(
                                'Add a new card',
                                style: TextStyle(
                                  color: Color(0xFFC4C4C4),
                                  fontSize: 15,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 164),
                              child: SvgPicture.asset(
                                "assets/vectors/ic_chevron-right.svg",
                                width: 18, // Chiều rộng của icon
                                height: 20, // Chiều cao của icon
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                margin: const EdgeInsets.only(left: 26),
                child: const Text(
                  'BANK ACCOUNTS',
                  style: TextStyle(
                    color: Color(0xFFB9B9B9),
                    fontSize: 12,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(
                onPressed: () {
                  // Xử lý khi nút được nhấn
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        8.0), // Điều chỉnh độ cong theo ý muốn
                  ),
                  elevation: 0,
                  primary: Colors.white,
                  onPrimary: Colors.grey,
                ),
                child: Container(
                  width: double.infinity,
                  height: 57,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 12,
                            ),
                            Container(
                              width: 196,
                              height: 20,
                              child: const Text(
                                'Frankin Campbell  - ***6383',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 112),
                              child: SvgPicture.asset(
                                "assets/vectors/ic_chevron-right.svg",
                                width: 18, // Chiều rộng của icon
                                height: 20, // Chiều cao của icon
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 27,
              ),
              Container(
                margin: const EdgeInsets.only(left: 26),
                child: const Text(
                  'CREDIT CARDS',
                  style: TextStyle(
                    color: Color(0xFFB9B9B9),
                    fontSize: 12,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                width: double.infinity,
                height: 220,
                decoration: BoxDecoration(color: Colors.white),
                child: Stack(children: [
                  Positioned(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 16,
                                left: 28,
                              ),
                              child: const Text(
                                '**** **** **** 2779',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 121,
                            ),
                            Container(
                              width: 59,
                              height: 59,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/visa 1.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
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
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 16,
                                left: 28,
                              ),
                              child: const Text(
                                'adaff_hs@gmail.com',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 62,
                            ),
                            Container(
                              width: 96,
                              height: 96,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/paypal 1.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
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
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 20,
                                left: 28,
                              ),
                              child: const Text(
                                '**** **** **** 1334',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 125,
                            ),
                            Container(
                              width: 47,
                              height: 47,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/mastercard 1.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Container(
                width: double.infinity,
                height: 300,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                    // color: Color(0xFFDB166E),
                    ),
                child: Stack(children: [
                  Positioned(
                    top: 60,
                    left: 4,
                    child: ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        Color.fromRGBO(255, 192, 203, 0.2),
                        BlendMode.modulate,
                      ),
                      child: Image.asset(
                        "assets/images/Vector.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 180,
                    child: Image.asset(
                      "assets/images/item-flower.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 120,
                    left: 60,
                    child: Image.asset(
                      "assets/images/item-female.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 62,
                    left: 202,
                    child: Image.asset(
                      "assets/images/item-moble.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
