import 'package:foodapp/bottom_screen/bottom_bar_cubit.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/home_screen.dart';
import 'package:foodapp/order_screen.dart';
import 'package:foodapp/favorites_screen.dart';
import 'package:foodapp/notification_screen.dart';
import 'package:foodapp/user_screen5.dart';

import '../listfavfood.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  final pages = [
    const HomeScreen(),
    const OrderScreen(),
    const ListFoodFavPage(),
    const NotificationScreen(),
    const UserScreen(),
  ];

  Color activateColor = Color(0xFFDB166E);
  late final BottomBarCubit _cubit;

  @override
  void initState() {
    _cubit = BottomBarCubit();
    super.initState();
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return _cubit;
      },
      child: BlocBuilder<BottomBarCubit, BottomBarState>(
          buildWhen: (previous, current) {
        return previous.selectedIndex != current.selectedIndex ||
            previous.displayNumber != current.displayNumber;
      }, builder: (context, state) {
        return Scaffold(
          body: pages[state.selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/vectors/home.svg",
                ),
                label: '',
                activeIcon: SvgPicture.asset(
                  "assets/vectors/home.svg",
                  color: activateColor,
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/vectors/v2.svg",
                ),
                label: '',
                activeIcon: SvgPicture.asset(
                  "assets/vectors/v2.svg",
                  color: activateColor,
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/vectors/v3.svg",
                ),
                label: '',
                activeIcon: SvgPicture.asset(
                  "assets/vectors/v3.svg",
                  color: activateColor,
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/vectors/v4.svg",
                ),
                label: '',
                activeIcon: SvgPicture.asset(
                  "assets/vectors/v4.svg",
                  color: activateColor,
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/vectors/user.svg",
                ),
                label: '',
                activeIcon: SvgPicture.asset(
                  "assets/vectors/user.svg",
                  color: activateColor,
                ),
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: state.selectedIndex,
            onTap: (index) {
              _cubit.onItemTapped(index);
            },
            elevation: 5,
            selectedFontSize: 0, // Đặt kích thước chữ của label là 0
            unselectedFontSize: 0, // Đặt kích thước chữ của label là 0
          ),
        );
      }),
    );
  }
}
