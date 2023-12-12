import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './trang3.dart';
import './sginup.dart';
import 'Author.dart';
import 'Trang4.dart';
import 'package:chat_app_demo/models/account_entity.dart';
import 'package:chat_app_demo/trang3.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Author.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
// Khai báo GlobalKey cho TextFormField của email
  final GlobalKey<FormState> _emailKey = GlobalKey<FormState>();

// Khai báo GlobalKey cho TextFormField của mật khẩu
  final GlobalKey<FormState> _passwordKey = GlobalKey<FormState>();









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:
        //SingleChildScrollView(
    Stack(
        children: [
          // Ảnh nền
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/4.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Form đăng nhập
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Ảnh
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: AssetImage('assets/images/3.png'), // Thay đổi đường dẫn đến ảnh của bạn
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Khoảng cách giữa ảnh và các trường nhập liệu

                  // TextFormField cho email
                  TextFormField(
                    key: _emailKey,
                    controller: _emailController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Gmail',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),

                  SizedBox(height: 20), // Khoảng cách giữa trường nhập liệu và nút đăng nhập

                  // TextFormField cho mật khẩu
                  TextFormField(
                    key: _passwordKey,
                    controller: _passwordController, // Thêm dòng này

                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Mật khẩu',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),

                  SizedBox(height: 20), // Khoảng cách giữa trường nhập liệu và nút đăng nhập

                  // Nút login

                  ElevatedButton(
                    onPressed: () async {
                      // Gọi hàm đăng nhập từ AuthService
                      bool loginSuccess = await AuthService().loginWithEmail(
                        email: _emailController.text,
                        password: _passwordController.text,
                      );
                      if (loginSuccess) {
                        // Đăng nhập thành công, có thể thực hiện các hành động sau đăng nhập ở đây
                        print("Đăng nhập thành công");

                        Navigator.push(
                          context,
                          // MaterialPageRoute(builder: (context) => Trang3()),
                          MaterialPageRoute(builder: (context) => Trang3()),


                        );
                      } else {
                        // Đăng nhập không thành công, có thể thông báo cho người dùng
                        print("Đăng nhập không thành công");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink, // Màu hồng
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Border radius
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                  SizedBox(height: 10), // Khoảng cách giữa các nút


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account? ',
                        style: TextStyle(color: Colors.white), // Màu chữ trắng
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()), // Chuyển đến trang SignUp
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.pink),
                        ),
                      ),
                    ],
                  ),



                ],
              ),
            ),
          ),
        ],
      ),
        //)
    );
  }
}



