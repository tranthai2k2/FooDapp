import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class Trang4 extends StatefulWidget {
  const Trang4({Key? key}) : super(key: key);

  @override
  State<Trang4> createState() => _Trang4State();
}

class _Trang4State extends State<Trang4> {
  @override
  void initState() {
    super.initState();

    // Lắng nghe trạng thái xác thực
      _auth.authStateChanges().listen((user) {
        // Kiểm tra trạng thái hiện tại
        if (user != null) {
          // Đã kết nối với Firebase
          print("Đã kết nối với Firebase");
        } else {
          // Chưa kết nối với Firebase
          print("Chưa kết nối với Firebase");
        }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
