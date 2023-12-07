import 'package:chat_app_demo/models/account_entity.dart';
import 'package:chat_app_demo/trang3.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool _showPassword = false;
  // khai báo để lấy giá trị
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  // hàm khởi động đăng ký
  Future<void> _signUpWithEmail() async {
    try {
      var authResult = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );


      final _currentUser = AccountEntity(
        id: authResult.user?.uid, // id định danh
        email: _emailController.text,
        fullName: '',
        phone:'' ,
        gender: 1,
        passWord: _passwordController.text,
      );

      final CollectionReference _usersCollectionReference =
      FirebaseFirestore.instance.collection('user');

      await _usersCollectionReference.doc(_currentUser.id).set(_currentUser.toJson());

      // Đăng ký thành công, điều hướng đến trang khác (Trang3 trong trường hợp này)
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Trang3()),
      );
    } catch (e) {
      // Xử lý lỗi đăng ký
      print('Lỗi đăng ký: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
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
          // Form đăng ký
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
                        image: AssetImage('assets/images/3.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Tên tài khoản
                  TextFormField(
                    controller: _emailController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // Mật khẩu
                  TextFormField(
                    obscureText: !_showPassword,
                    controller: _passwordController,
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
                      suffixIcon: IconButton(
                        icon: Icon(
                          _showPassword ? Icons.visibility : Icons.visibility_off,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // Nhập lại mật khẩu
                  TextFormField(
                    obscureText: !_showPassword,
                    controller: _confirmPasswordController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Nhập lại mật khẩu',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // Nút đăng ký
                  ElevatedButton(
                    onPressed: () {
                      // Kiểm tra mật khẩu trùng khớp trước khi đăng ký
                      if (_passwordController.text == _confirmPasswordController.text) {
                        _signUpWithEmail();
                      } else {
                        // Hiển thị thông báo lỗi mật khẩu không trùng khớp
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Lỗi'),
                            content: Text('Mật khẩu không trùng khớp.'),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('OK'),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Đăng ký',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        // MaterialPageRoute(builder: (context) => Trang3()),
                        MaterialPageRoute(builder: (context) => Login()),

                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink, // Màu hồng
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Border radius
                      ),
                    ),
                    child: Text(
                      'đã có tài khoản',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}
