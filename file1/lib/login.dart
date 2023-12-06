import 'package:flutter/material.dart';
import './trang3.dart';
import './sginup.dart';
import 'Trang4.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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

                  // Tên đăng nhập
                  TextFormField(
                    style: TextStyle(color: Colors.white), // Đặt màu chữ trắng
                    decoration: InputDecoration(
                      labelText: 'Tên đăng nhập',
                      labelStyle: TextStyle(color: Colors.white), // Đặt màu chữ cho label
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Đặt màu cho viền khi không được focus
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Đặt màu cho viền khi được focus
                      ),
                    ),
                  ),

                  SizedBox(height: 20), // Khoảng cách giữa trường nhập liệu và nút đăng nhập


                  // Mật khẩu
                  TextFormField(
                    style: TextStyle(color: Colors.white), // Đặt màu chữ trắng
                    decoration: InputDecoration(
                      labelText: 'Mật khẩu',
                      labelStyle: TextStyle(color: Colors.white), // Đặt màu chữ cho label
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Đặt màu cho viền khi không được focus
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Đặt màu cho viền khi được focus
                      ),
                    ),
                  ),

                  SizedBox(height: 20), // Khoảng cách giữa trường nhập liệu và nút đăng nhập

                  // Nút login
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        // MaterialPageRoute(builder: (context) => Trang3()),
                        MaterialPageRoute(builder: (context) => Trang4()),

                      );
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

                  // Nút đăng nhập bằng Facebook
                  ElevatedButton(
                    onPressed: () {
                      // Xử lý đăng nhập bằng Facebook
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Màu xanh nước biển
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Border radius
                      ),
                    ),
                    child: Text(
                      'Đăng nhập bằng Facebook',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
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
