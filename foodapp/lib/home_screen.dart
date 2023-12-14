// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:foodapp/firebase/filebase_login_sevices.dart';
import 'package:foodapp/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/search_address_screen.dart';
import 'package:foodapp/services/fire_storage_service.dart';
import 'package:foodapp/services/isar_service.dart';

import 'bottom_screen/bottom_bar_screen.dart';
import 'data_notifier.dart';
import 'foodlist.dart';
import 'global/global_data.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final currentUser = GlobalData.instance.currentUser;
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/1.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              child: Container(
                margin: const EdgeInsets.only(top: 40, left: 24),
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxZXFMsJpvmzN8EvrZAalZgpjEUStZ0aAwPQ&usqp=CAU",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 104,
              top: 76,
              child: Text(
                "Hi, ${currentUser?.firstName ?? ''}",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 0.05,
                  letterSpacing: -0.32,
                ),
              ),
            ),
            const Positioned(
              left: 26,
              top: 196,
              child: SizedBox(
                width: 314,
                height: 163,
                child: Text(
                  'What can\nwe serve you\ntoday? ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    height: 1.2,
                    letterSpacing: -0.32,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 26,
              top: 386,
              width: 320,
              height: 51,
              child: ElevatedButton(
                onPressed: () {
                  // Provider.of<DataNotifier>(context, listen: false)
                  //     .setSearchData(emailController.text);


                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  primary: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: SvgPicture.asset(
                        "assets/vectors/search.svg",
                        width: 24,
                        height: 24,
                      ),
                    ),

                    // nhập thông tin để tìm
                    Container(
                      margin: const EdgeInsets.only(top: 16, left: 8, bottom: 12),
                      width: 200,
                      height: 22,

                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: 'Search for address, food...',
                          hintStyle: TextStyle(
                            color: Color(0xFFC4C4C4),
                            fontSize: 16,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: TextStyle(
                          color: Colors.black, // Màu chữ khi nhập giá trị
                          fontSize: 16,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    // icon local
                    Container(
                      margin: const EdgeInsets.only(left: 40),
                      width: 14,
                      height: 16,
                      // clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: SvgPicture.asset(
                        "assets/vectors/location.svg",
                        width: 14,
                        height: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // sang trang listfood
            // Positioned button
            Positioned(
              bottom: 20,
              right: 20,
              child: FloatingActionButton(
                onPressed: () {
                  // Navigate to ListFoodPage when the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListFoodPage(),
                    ),
                  );
                },
                child: Icon(Icons.add),
              ),
            ),
            Positioned(
              left: 26,
              top: 461,
              width: 320,
              height: 51,
              child: ElevatedButton(
                onPressed: () {
                  // Xử lý khi nút được nhấn
                  if (emailController!=null) {
                    print("đã nhập vào gia tri");
                    // FireStorageService.searchFood(emailController.text);
                    // Chuyển đến trang SearchAddressScreen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchAddressScreen(),
                      ),
                    );
                  } else {
                    print("chưa có giá trị được nhập vào");
                  };

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const SearchScreen()),
                  // );
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFDB166E), // Màu nền của nút
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Text(
                  'SEARCH',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
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
    );
  }



}
