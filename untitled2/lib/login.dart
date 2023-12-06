import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 45),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/4.png'),
          fit: BoxFit.cover,
        ),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Container(
            width: 400,
            height: 225,
            child: Image.asset(
              'assets/images/3.png', // Đường dẫn đến hình ảnh
              fit: BoxFit.cover, // Hiển thị hình ảnh phủ đầy
              width: double.infinity, // Độ rộng hình ảnh theo chiều ngang của Container
            ),
          ),
          SizedBox(height: 27),
          Padding(
            padding: EdgeInsets.only(left: 27),
            child: Text(
              'Username',
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                height: 1.3625,
                color: Color(0xffffffff),
              ),
            ),
          ),
          SizedBox(height: 39),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // width: double.infinity,
                // height: 1,
                // color: Color(0xffffffff),
              ),
              SizedBox(height: 39),
              Padding(
                padding: EdgeInsets.only(right: 249),
                child: Text(
                  'Password',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 1.3625,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              SizedBox(height: 83),
              Container(
                width: double.infinity,
                height: 51,
                decoration: BoxDecoration(
                  color: Color(0xffdb166e),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      height: 1.3625,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 27),
              Container(
                padding: EdgeInsets.fromLTRB(42, 13, 43, 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff2b65d1),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 9),
                      width: 22,
                      height: 22,
                      // child: Image.network(
                      //   '[Image url]',
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                    Text(
                      'CONNECT WITH FACEBOOK',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        height: 1.3625,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    height: 1.3625,
                    color: Color(0xffffffff),
                  ),
                  children: [
                    TextSpan(
                      text: 'Don’t have an account? ',
                    ),
                    TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        height: 1.3625,
                        color: Color(0xffdb166e),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
