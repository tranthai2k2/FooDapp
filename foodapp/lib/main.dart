// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodapp/screendau.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:foodapp/services/fire_storage_service.dart';

// import 'models/entities/food_entity.dart';
import 'models/entities/restaurant_entity.dart';
// class FirebaseService {
//   final CollectionReference _restaurantCollectionReference =
//   FirebaseFirestore.instance.collection('restaurants');
//
// // in ra các nhà hàng có food nane
//
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Tạo một đối tượng FireStorageService
  FireStorageService fireStorageService = FireStorageService();
  // Gọi hàm để in ra tất cả nhà hàng có món ăn có tên là searchFoodName
  // Tạo danh sách nhà hàng
  List<RestaurantEntity> restaurantList = [
    RestaurantEntity(
      restaurantId:1,
      name: 'Nhà hàng A',
      address: 'Địa chỉ A',
      listFood: restaurant3FoodList,
      restaurantImage: 'path_to_restaurant_image1',
      restaurantDescription: 'Mô tả nhà hàng A',
    ),
    RestaurantEntity(
      restaurantId:4,
      name: 'Nhà hàng Ab',
      address: 'Địa chỉ Ab',
      listFood: restaurant3FoodList,
      restaurantImage: 'path_to_restaurant_image1',
      restaurantDescription: 'Mô tả nhà hàng Ab',
    ),
    RestaurantEntity(
      restaurantId:2,
      name: 'Nhà hàng B',
      address: 'Địa chỉ B',
      listFood: restaurant3FoodList,
      restaurantImage: 'path_to_restaurant_image2',
      restaurantDescription: 'Mô tả nhà hàng B',
    ),
    RestaurantEntity(
      restaurantId:3,
      name: 'Nhà hàng C',
      address: 'Địa chỉ C',
      listFood: restaurant3FoodList,
      restaurantImage: 'path_to_restaurant_image1',
      restaurantDescription: 'Mô tả nhà hàng C',
    ),
    // Thêm các nhà hàng khác vào đây
  ];


  // Thêm danh sách nhà hàng vào Firestore
  await fireStorageService.addRestaurants(restaurantList);



  // Gọi hàm searchUser với phoneNumber mong đợi (mặc dù số điện thoại thì "Mì Quảng" không thích hợp)
  // var result = await fireStorageService.searchFood('Mì Quảng');
  // if (result != null) {
  //   // Xử lý kết quả nếu cần
  //   print('Found ${result.length} foods.');
  //   for (var food in result) {
  //     print('Food Name: ${food.foodName}');
  //     // In thông tin khác nếu cần
  //   }
  // } else {
  //   // Xử lý trường hợp không tìm thấy món ăn
  //   print('No food found.');
  // }
  // Kiểm tra xem kết quả có phải là AccountEntity không



  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ScreenDau(),
    );
  }
}
