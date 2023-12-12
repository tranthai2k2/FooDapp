import 'package:foodapp/login.dart';
import 'package:flutter/material.dart';

class ScreenDau extends StatefulWidget {
  const ScreenDau({Key? key}) : super(key: key);

  @override
  State<ScreenDau> createState() => _ScreenDauState();
}

class _ScreenDauState extends State<ScreenDau> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: 380,
            decoration: const BoxDecoration(
              color: Color(0xFFDB166E),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(150),
              ),
            ),
            child: Stack(
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/3.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            child: Container(
              child: Image.asset(
                'assets/images/2.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
