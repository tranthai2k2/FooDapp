import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/search_screen.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  bool isTapped = false;
  bool hi = false;
  bool ha = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 72,
          decoration: BoxDecoration(color: Color(0xFFDB166E)),
          child: Stack(
            children: [
              Positioned(
                top: 36,
                left: 20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchScreen()),
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
                  'FAVORITES',
                  style: TextStyle(
                    color: Colors.white,
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
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 4),
            child: ListView(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ), // Điều chỉnh độ cong theo ý muốn
                    ),
                    elevation: 0,
                    primary: Colors.white,
                    onPrimary: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      isTapped = !isTapped; // Đảo ngược trạng thái khi nhấp vào
                    });
                  },
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
                                    width: 342,
                                    height: 275,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          width: 342,
                                          height: 160,
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(8),
                                              topRight: Radius.circular(8),
                                            ),
                                            child: isTapped
                                                ? Image.network(
                                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRLnchm2_PQT4w3_IQz1wRFQOItByzVfYI9Q&usqp=CAU",
                                                    fit: BoxFit.cover,
                                                  ) // Thay đổi hình ảnh khi nhấp vào
                                                : Image.asset(
                                                    "assets/images/img_grilled.png",
                                                    fit: BoxFit.cover,
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
                              'Grilled Squid Tentacles',
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
                ),
                const SizedBox(
                  height: 13,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ), // Điều chỉnh độ cong theo ý muốn
                    ),
                    elevation: 0,
                    primary: Colors.white,
                    onPrimary: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      hi = !hi; // Đảo ngược trạng thái khi nhấp vào
                    });
                  },
                  child: Container(
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
                                          width: 342,
                                          height: 160,
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(8),
                                              topRight: Radius.circular(8),
                                            ),
                                            child: hi
                                                ? Image.asset(
                                                    "assets/images/img_iskender.png",
                                                    fit: BoxFit.cover,
                                                  ) // Thay đổi hình ảnh khi nhấp vào
                                                : Image.network(
                                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3LUmCtZQGsG9MNfONzjMAh9kNUO2jm3wiRw&usqp=CAU",
                                                    fit: BoxFit.cover,
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
                          left: 25,
                          top: 176,
                          child: SizedBox(
                            width: 321,
                            height: 27,
                            child: Text(
                              'Iskender Kebab',
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
                ),
                const SizedBox(
                  height: 14,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ), // Điều chỉnh độ cong theo ý muốn
                    ),
                    elevation: 0,
                    primary: Colors.white,
                    onPrimary: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      ha = !ha; // Đảo ngược trạng thái khi nhấp vào
                    });
                  },
                  child: Container(
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
                                          width: 342,
                                          height: 160,
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(8),
                                              topRight: Radius.circular(8),
                                            ),
                                            child: ha
                                                ? Image.asset(
                                                    "assets/images/img_secret.png",
                                                    fit: BoxFit.cover,
                                                  ) // Thay đổi hình ảnh khi nhấp vào
                                                : Image.network(
                                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBWD4JD0nB5r2h9ApX1Qz5ZnsqdxAVQaZ1cg&usqp=CAU",
                                                    fit: BoxFit.cover,
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
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
