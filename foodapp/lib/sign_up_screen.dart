import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:foodapp/global/global_data.dart';
import 'package:foodapp/login.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/firebase/filebase_service.dart';
import 'package:foodapp/services/fire_storage_service.dart';
import 'package:foodapp/validator/validations.dart';

import 'bottom_screen/bottom_bar_screen.dart';
import 'models/entities/authenticate_entity.dart';
import 'models/entities/favfood.dart';

// import 'home_screen.dart';
// import 'bottom_screen/bottom_bar_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isPasswordVisible = false;
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  Future<void> _signUpWithEmail() async {
    try {
      FireStorageService fireStorageService = FireStorageService();
      var authResult =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      final _currentUser = AccountEntity(
        uId: authResult.user?.uid,
        email: emailController.text,
        firstName: usernameController.text,
        phoneNumber: phoneController.text,
        passWord: passwordController.text,
        favFoodId:authResult.user?.uid,
      );
      final _currentUserfav = FavFoodEntity(
          favFoodId: authResult.user?.uid,
      );

      await fireStorageService.createUser(_currentUser);

      GlobalData.instance.currentUser = _currentUser;

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => BottomBarScreen()),
      );
    } catch (e) {
      // Xử lý lỗi đăng ký
      print('Lỗi đăng ký: $e');
    }
  }

  var userNameErr = "Tên đăng nhập không hợp lệ";
  var passErr = "Mật khẩu phải trên 6 ký tự";
  var phoneErr = "Số điện thoại không hợp lệ";
  var emailErr = "Email không hợp lệ";
  bool userInvalid = false;
  bool passInvalid = false;
  bool phoneInvalid = false;
  bool emailInvalid = false;

  void _validateInputs() {
    setState(() {
      userInvalid = !Validator.isValidUsername(usernameController.text);
      passInvalid = !Validator.isValidPassword(passwordController.text);
      phoneInvalid = !Validator.isValidPhoneNumber(phoneController.text);
      emailInvalid = !Validator.isValidEmail(emailController.text);
    });
  }

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
                    // const SizedBox(
                    //   height: 12,
                    // ),
                    //USERNAME
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        width: 320, // Điều chỉnh độ rộng ở đây
                        child: TextFormField(
                          controller: usernameController,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'Username',
                            errorText: userInvalid ? userNameErr : null,
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
                      height: 12,
                    ),
                    // SỐ ĐIỆN THOẠI
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        width: 320,
                        child: TextFormField(
                          controller: phoneController,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                            errorText: phoneInvalid ? phoneErr : null,
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
                      height: 12,
                    ),
                    //EMAIL
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        width: 320,
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
                      height: 12,
                    ),
                    //PASSWORD
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        width: 320, // Điều chỉnh độ rộng ở đây
                        child: TextFormField(
                          controller: passwordController,
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
                      height: 60,
                    ),

                    //LOGIN   ĐĂNG KÝ TÀI KHOẢN
                    GestureDetector(
                      onTap: () async {
                        setState(() async {
                          _validateInputs();
                          // Nếu thông tin hợp lệ, thực hiện đăng ký và gửi dữ liệu lên Firebase
                          if (!userInvalid &&
                              !passInvalid &&
                              !phoneInvalid &&
                              !emailInvalid) {
                            try {
                              _signUpWithEmail();
                            } catch (e) {
                              print('Lỗi khi đăng ký: $e');
                            }
                          }
                        });
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
                            'Sign Up',
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
