import 'package:flutter/material.dart';
// import './trang2.dart';
import './login.dart';
class Trang1 extends StatefulWidget {
  const Trang1({Key? key}) : super(key: key);

  @override
  State<Trang1> createState() => _Trang1State();
}

class _Trang1State extends State<Trang1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Login()),
          );
        },
        child: Column(
          mainAxisSize: MainAxisSize.max,

          crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch content horizontally
          children: [
            Positioned(
              top: -30, // Position Stack 30 pixels above
              child: Expanded(
                child: Stack(
                  alignment: Alignment.center, // Center images
                  children: [
                    Image.asset(
                      'assets/images/1.png', // First image
                      fit: BoxFit.cover, // Cover Stack
                      width: double.infinity,
                    ),
                    Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Image.asset('assets/images/3.png'), // Third image
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40), // Khoảng cách giữa các nút

            Container(
              // takeawayrafiki2THV (41:135)
              width: MediaQuery.of(context).size.width * 0.8, // 80% of screen width
              height: MediaQuery.of(context).size.height * 0.6, // 60% of screen height
              child: Image.asset(
                'assets/images/2.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
