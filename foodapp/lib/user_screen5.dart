import 'package:foodapp/favorites_screen.dart';
import 'package:foodapp/screendau.dart';
import 'package:foodapp/order_screen.dart';
import 'package:foodapp/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/personal_information-screen.dart';
import 'global/global_data.dart';
import 'package:foodapp/services/fire_storage_service.dart';
import 'package:foodapp/services/isar_service.dart';
import 'models/isar_database/isar_account_entity.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 248,
            decoration: const BoxDecoration(color: Color(0xFFDB166E)),
            child: Stack(
              children: [
                // Positioned(
                //   left: 332,
                //   top: 36,
                //   child: SvgPicture.asset(
                //     "assets/vectors/ic_setting.svg",
                //     width: 19.01,
                //     height: 20,
                //   ),
                // ),
                Positioned(
                  left: 24,
                  top: 152,
                  child: Container(
                    width: 67,
                    height: 67,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFC4C4C4),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                const Positioned(
                  left: 108,
                  top: 164,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Erik Walters',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            height: 1.0),
                      ),
                      Text(
                        '0383 zendar park',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                /// LỊCH SỬ MUA HÀNG
                ElevatedButton(
                  onPressed: () {
                    // Xử lý khi nút được nhấn
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrderScreen()),
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
                    height: 73,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 4, left: 8),
                          width: 47,
                          height: 47,
                          decoration: const ShapeDecoration(
                            color: Color(0xFF4C8DE7),
                            shape: CircleBorder(),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              "assets/vectors/ic_order.svg",
                              width: 18, // Chiều rộng của icon
                              height: 20, // Chiều cao của icon
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ), // Khoảng cách giữa icon và text
                        Container(
                          margin: const EdgeInsets.only(top: 12),
                          width: 96,
                          height: 19,
                          child: const Text(
                            'Orders History',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 4, left: 150),
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
                const SizedBox(
                  height: 16,
                ),

                /// THANH TOÁN
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PaymentMethodScreen()),
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
                    height: 73,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          8.0), // Cùng với độ cong bên trên
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 4, left: 8),
                          width: 47,
                          height: 47,
                          decoration: const ShapeDecoration(
                            color: Color(0xFF8ABE4E),
                            shape: CircleBorder(),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              "assets/vectors/ic_thanhtoan.svg",
                              width: 18, // Chiều rộng của icon
                              height: 20, // Chiều cao của icon
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ), // Khoảng cách giữa icon và text
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          child: const Text(
                            'Payment Method',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 4, left: 142),
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
                const SizedBox(
                  height: 16,
                ),

                /// YÊU THÍCH
                ElevatedButton(
                  onPressed: () {
                    // Xử lý khi nút được nhấn
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FavoriteScreen()),
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
                    height: 73,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Stack(
                      children: [
                        Positioned(
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 16, left: 8),
                                width: 47,
                                height: 47,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFFF8A627),
                                  shape: CircleBorder(),
                                ),
                                child: Center(
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage("assets/images/tym.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                  width: 16), // Khoảng cách giữa icon và text
                              Container(
                                margin: const EdgeInsets.only(top: 12),
                                child: const Text(
                                  'Favorites',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              // const SizedBox(width: 156),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 8, left: 190),
                                child: SvgPicture.asset(
                                  "assets/vectors/ic_chevron-right.svg",
                                  width: 18, // Chiều rộng của icon
                                  height: 20, // Chiều cao của icon
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),

                /// THÔNG TIN CÁ NHÂN
                ElevatedButton(
                  onPressed: () {
                    // Xử lý khi nút được nhấn
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const PersonalInformationScreen()),
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
                    height: 73,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Stack(
                      children: [
                        Positioned(
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 16, left: 8),
                                width: 47,
                                height: 47,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF52E3C2),
                                  shape: CircleBorder(),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/vectors/ic_inviteFriends.svg",
                                    width: 18, // Chiều rộng của icon
                                    height: 20, // Chiều cao của icon
                                  ),
                                ),
                              ),
                              const SizedBox(
                                  width: 16), // Khoảng cách giữa icon và text
                              Container(
                                margin: const EdgeInsets.only(top: 12),
                                child: const Text(
                                  'Personal Information',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 4, left: 116),
                                child: SvgPicture.asset(
                                  "assets/vectors/ic_chevron-right.svg",
                                  width: 18,
                                  height: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),

                /// ĐĂNG XUẤT
                ElevatedButton(
                  onPressed: () {
                    _checkoutAccountSaved();
                    // // Xử lý khi nút được nhấn
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const ScreenDau()),
                    // );
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
                    height: 73,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(4), // Cùng với độ cong bên trên
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 12, left: 8),
                          width: 47,
                          height: 47,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFF55525),
                            shape: CircleBorder(),
                          ),
                          child: Center(
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/123.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ), // Khoảng cách giữa icon và text
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          child: const Text(
                            'Log Out',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 4, left: 200),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
  void _checkoutAccountSaved() async {
    /// Mở Isar service
    final isarService = IsarService();
    // khai báo firesorage
    final fireStorageService = FireStorageService();

    ///Lấy về user đã lưu trong database
    final accounts = await isarService.getAccount();

    if (accounts.isNotEmpty) {
      for (var account in accounts) {
        isarService.deleteAccount(account);
        GlobalData.instance.currentUser = null;
      }


      if (accounts.isNotEmpty){
        if (context.mounted) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const ScreenDau(),
            ),
                (Route<dynamic> route) => false,
          );
      };};
      //
      // isarService.deleteAccount(user);

      // if (context.mounted) {
      //   Navigator.of(context).pushAndRemoveUntil(
      //     MaterialPageRoute(
      //       builder: (context) => const ScreenDau(),
      //     ),
      //         (Route<dynamic> route) => false,
      //   );
      // }
    } else {
      // if (context.mounted) {
      //   Navigator.of(context).pushAndRemoveUntil(
      //     MaterialPageRoute(
      //       builder: (context) => const ScreenDau(),
      //     ),
      //         (Route<dynamic> route) => false,
      //   );
      // }
    }
  }
}

