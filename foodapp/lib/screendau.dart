import 'package:foodapp/login.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/services/fire_storage_service.dart';
import 'package:foodapp/services/isar_service.dart';

import 'bottom_screen/bottom_bar_screen.dart';
import 'global/global_data.dart';

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
              _checkAccountSaved();
              // Navigator.of(context).pushReplacement(
              //   MaterialPageRoute(builder: (context) => const LoginScreen()),
              // );
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
  void _checkAccountSaved() async {
    /// Mở Isar service
    final isarService = IsarService();
    final fireStorageService = FireStorageService();

    ///Lấy về user đã lưu trong database
    final accounts = await isarService.getAccount();

    ///Nếu danh sách lấy về không rỗng (có user đã đăng nhập) => Vào màn Home
    ///Nếu danh sách trống (Chưa đăng nhập) => Vào màn nhập SDT
    if (accounts.isNotEmpty) {
      final user = await fireStorageService.searchUser(
        accounts[0].phoneNumber!,
      );
      GlobalData.instance.currentUser = user;

      if (context.mounted) {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const BottomBarScreen(),
          ),
              (Route<dynamic> route) => false,
        );
      }
    } else {
      if (context.mounted) {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
              (Route<dynamic> route) => false,
        );
      }
    }
  }
}
