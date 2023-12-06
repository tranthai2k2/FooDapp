import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  String _username = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Tên đăng nhập",
              ),

            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Mật khẩu",
              ),

            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),

                child: Text("Đăng nhập"),

              ),

          ],
        ),
      ),
    );
  }
}
