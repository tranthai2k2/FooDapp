import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:foodapp/datetime.dart';

class PersonalInformationScreen extends StatefulWidget {
  const PersonalInformationScreen({Key? key}) : super(key: key);

  @override
  State<PersonalInformationScreen> createState() =>
      _PersonalInformationScreenState();
}

class _PersonalInformationScreenState extends State<PersonalInformationScreen> {
  TextEditingController _textEditingController = TextEditingController();
  String _tenNguoiDung = 'Ngân';
  String _sodienthoai = '02413248';
  String _email = 'ngan@gmail.com';
  String _pass = '123456';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          width: double.infinity,
          height: 72,
          decoration: BoxDecoration(color: Color(0xFFDB166E)),
          child: Stack(
            children: [
              Positioned(
                top: 36,
                left: 8,
                child: GestureDetector(
                  onTap: () {
                    // Xử lý chuyển hướng trang ở đây
                    Navigator.of(context).pop(); // Ví dụ: Quay về trang trước
                  },
                  child: SvgPicture.asset(
                    "assets/vectors/arrow-left.svg",
                    color: Colors.white,
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
              const Positioned(
                top: 40,
                left: 118,
                child: Text(
                  'PERSONAL  INFORMATION',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: ListView(
          children: [
            ///SỬA TÊN NGƯỜI DÙNG
            ElevatedButton(
              onPressed: () {
                // Xử lý khi nút được nhấn
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      content: Container(
                        width: 240,
                        height: 100,
                        margin: EdgeInsets.only(top: 20, left: 20),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Sửa tên',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/hi12.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 128,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Kiểm tra xem có đủ 6 ký tự không
                                    if (_textEditingController.text.length >=
                                        6) {
                                      // Nếu có đủ 6 ký tự, lưu và đóng AlertDialog
                                      setState(() {
                                        _tenNguoiDung =
                                            _textEditingController.text;
                                      });
                                      Navigator.of(context).pop();
                                    } else {
                                      // Nếu không đủ 6 ký tự, hiển thị thông báo
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              'Tên người dùng phải có ít nhất 6 ký tự.'),
                                        ),
                                      );
                                    }
                                  },
                                  child: const Text(
                                    'Lưu',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 18,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 240,
                              child: TextField(
                                controller: _textEditingController,
                                decoration: const InputDecoration(
                                  hintText:
                                      'Edit', // Text hiển thị khi TextField trống
                                ),
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      8.0), // Điều chỉnh độ cong theo ý muốn
                ),
                elevation: 0,
                primary: Colors.white,
                onPrimary: Colors.grey,
              ),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 12),
                      width: 180,
                      height: 19,
                      child: const Text(
                        'Tên người dùng',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 4, left: 60),
                      child: Text(
                        _tenNguoiDung,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    // Container(
                    //   margin: const EdgeInsets.only(top: 4, left: 20),
                    //   child: SvgPicture.asset(
                    //     "assets/vectors/ic_chevron-right.svg",
                    //     width: 18, // Chiều rộng của icon
                    //     height: 20, // Chiều cao của icon
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Container(
              width: 375,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFE5E5E5),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 26,
            ),

            /// SỬA SỐ ĐIỆN THOẠI
            ElevatedButton(
              onPressed: () {
                // Xử lý khi nút được nhấn
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      content: Container(
                        width: 240,
                        height: 100,
                        margin: EdgeInsets.only(top: 20, left: 20),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Sửa SĐT',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/hi12.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 128,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    if (_textEditingController.text.isEmpty) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              'Số điện thoại không được để trống.'),
                                        ),
                                      );
                                    } else {
                                      // Kiểm tra định dạng số điện thoại
                                      final RegExp regex = RegExp(
                                          r'^\d{10}$'); // Định dạng: 10 chữ số

                                      if (!regex.hasMatch(
                                          _textEditingController.text)) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                                'Số điện thoại phải có 10 chữ số.'),
                                          ),
                                        );
                                      } else {
                                        setState(() {
                                          _sodienthoai =
                                              _textEditingController.text;
                                        });
                                        Navigator.of(context).pop();
                                      }
                                    }
                                  },
                                  child: const Text(
                                    'Lưu',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 18,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 240,
                              child: TextField(
                                controller: _textEditingController,
                                decoration: const InputDecoration(
                                  hintText:
                                      'Edit', // Text hiển thị khi TextField trống
                                ),
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      8.0), // Điều chỉnh độ cong theo ý muốn
                ),
                elevation: 0,
                primary: Colors.white,
                onPrimary: Colors.grey,
              ),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 12),
                      width: 120,
                      height: 19,
                      child: const Text(
                        'Số điện thoại',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 4, left: 100),
                      child: Text(
                        _sodienthoai,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    // Container(
                    //   margin: const EdgeInsets.only(top: 4, left: 20),
                    //   child: SvgPicture.asset(
                    //     "assets/vectors/ic_chevron-right.svg",
                    //     width: 18, // Chiều rộng của icon
                    //     height: 20, // Chiều cao của icon
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Container(
              width: 375,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFE5E5E5),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 26,
            ),

            /// SỬA EMAIL
            ElevatedButton(
              onPressed: () {
                // Xử lý khi nút được nhấn
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      content: Container(
                        width: 240,
                        height: 100,
                        margin: EdgeInsets.only(top: 20, left: 20),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Sửa Email',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/hi12.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 128,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    if (_textEditingController.text.isEmpty) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              'Email không được để trống.'),
                                        ),
                                      );
                                    } else {
                                      // Kiểm tra định dạng email
                                      final RegExp regex = RegExp(
                                        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                                        caseSensitive: false,
                                        unicode: false,
                                      );

                                      if (!regex.hasMatch(
                                          _textEditingController.text)) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                                'Email không đúng định dạng.'),
                                          ),
                                        );
                                      } else {
                                        setState(() {
                                          _email = _textEditingController.text;
                                        });
                                        Navigator.of(context).pop();
                                      }
                                    }
                                  },
                                  child: const Text(
                                    'Lưu',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 18,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 240,
                              child: TextField(
                                controller: _textEditingController,
                                decoration: const InputDecoration(
                                  hintText:
                                      'Edit', // Text hiển thị khi TextField trống
                                ),
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      8.0), // Điều chỉnh độ cong theo ý muốn
                ),
                elevation: 0,
                primary: Colors.white,
                onPrimary: Colors.grey,
              ),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 12),
                      width: 120,
                      height: 19,
                      child: const Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 4, left: 60),
                      child: Text(
                        _email,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 4, left: 28),
                      child: SvgPicture.asset(
                        "assets/vectors/ic_chevron-right.svg",
                        width: 18, // Chiều rộng của icon
                        height: 20, // Chiều cao của icon
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 375,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFE5E5E5),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 26,
            ),

            /// SỬA PASSWORD
            ElevatedButton(
              onPressed: () {
                // Xử lý khi nút được nhấn
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      content: Container(
                        width: 240,
                        height: 100,
                        margin: EdgeInsets.only(top: 20, left: 20),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Sửa PassWord',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/hi12.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 128,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    if (_textEditingController.text.length <
                                        6) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              'Password phải có ít nhất 6 ký tự.'),
                                        ),
                                      );
                                    } else {
                                      setState(() {
                                        _pass = _textEditingController.text;
                                      });
                                      Navigator.of(context).pop();
                                    }
                                  },
                                  child: const Text(
                                    'Lưu',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 18,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 240,
                              child: TextField(
                                controller: _textEditingController,
                                decoration: const InputDecoration(
                                  hintText:
                                      'Edit', // Text hiển thị khi TextField trống
                                ),
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      8.0), // Điều chỉnh độ cong theo ý muốn
                ),
                elevation: 0,
                primary: Colors.white,
                onPrimary: Colors.grey,
              ),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 12),
                      width: 120,
                      height: 19,
                      child: const Text(
                        'Password',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 4, left: 100),
                      child: Text(
                        _pass,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 4, left: 48),
                      child: SvgPicture.asset(
                        "assets/vectors/ic_chevron-right.svg",
                        width: 18, // Chiều rộng của icon
                        height: 20, // Chiều cao của icon
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 375,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFE5E5E5),
                  ),
                ),
              ),
            ),
          ],
        ))
      ]),
    );
  }
}
