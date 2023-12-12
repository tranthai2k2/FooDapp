import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/firebase/filebase_service.dart';
import 'home_screen.dart';
// import 'package:demo/models/account.dart';
// import 'package:demo/service/file_store_service.dart';
import 'bottom_screen/bottom_bar_screen.dart';
import 'sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AuthService authService = AuthService();
  bool isPasswordVisible = false;
  final TextEditingController passController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  var emailErr = "Email không hợp lệ";
  var passErr = "Mật khẩu phải trên 6 ký tự";
  bool emailInvalid = false;
  bool passInvalid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/4.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
                child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 45),
                      child: Center(
                        child: Image.asset(
                          "assets/images/3.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    //USERNAME
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        width: 320, // Điều chỉnh độ rộng ở đây
                        child: TextFormField(
                          controller: emailController,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'Email',
                            errorText: emailInvalid ? emailErr : null,
                            labelStyle: const TextStyle(color: Colors.white),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    //PASSWORD
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        width: 320, // Điều chỉnh độ rộng ở đây
                        child: TextFormField(
                          controller: passController,
                          obscureText: !isPasswordVisible,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'Password',
                            errorText: passInvalid ? passErr : null,
                            labelStyle: const TextStyle(color: Colors.white),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isPasswordVisible = !isPasswordVisible;
                                });
                              },
                              child: Icon(
                                isPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    //LOGIN   ĐĂNG NHẬP TÀI KHOẢN
                    GestureDetector(
                      onTap: () async {
                        try {
                          UserCredential userCredential = await FirebaseAuth
                              .instance
                              .signInWithEmailAndPassword(
                            email: emailController.text,
                            password: passController.text,
                          );

                          if (userCredential.user != null) {
                            // Đăng nhập thành công, điều hướng đến BottomBarScreen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomBarScreen()),
                            );
                          } else {
                            // Đăng nhập thất bại
                            print('Đăng nhập thất bại');
                          }
                        } catch (e) {
                          // Xử lý khi có lỗi xảy ra
                          print('Đăng nhập thất bại: $e');
                        }
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 8),
                        width: 320,
                        height: 51,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color(0xFFDB166E),
                        ),
                        child: const Center(
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 130,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: ElevatedButton(
                        onPressed: () {
                          // Xử lý đăng nhập bằng Facebook
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF2B65D1), // Màu nền của nút
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(4), // Đường viền cong
                          ),
                          minimumSize: const Size(
                              320, 51), // Kích thước tối thiểu của nút
                        ),
                        child: const Text(
                          'CONNECT WITH FACEBOOK',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 78),
                        child: const Row(
                          children: [
                            Text(
                              'Don’t have an account? ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Sign Up ',
                              style: TextStyle(
                                color: Color(0xFFDB166E),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
