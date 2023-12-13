// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodapp/screendau.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:foodapp/services/fire_storage_service.dart';

// import 'models/entities/food_entity.dart';
import 'models/entities/food_entity.dart';
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
      listFood: [1, 2],
      restaurantImage: 'path_to_restaurant_image1',
      restaurantDescription: 'Mô tả nhà hàng A',
    ),
    RestaurantEntity(
      restaurantId:4,
      name: 'Nhà hàng Ab',
      address: 'Địa chỉ Ab',
      listFood: [3, 4],
      restaurantImage: 'path_to_restaurant_image1',
      restaurantDescription: 'Mô tả nhà hàng Ab',
    ),
    RestaurantEntity(
      restaurantId:2,
      name: 'Nhà hàng B',
      address: 'Địa chỉ B',
      listFood: [5, 6],
      restaurantImage: 'path_to_restaurant_image2',
      restaurantDescription: 'Mô tả nhà hàng B',
    ),
    RestaurantEntity(
      restaurantId:3,
      name: 'Nhà hàng C',
      address: 'Địa chỉ C',
      listFood: [7, 8],
      restaurantImage: 'path_to_restaurant_image1',
      restaurantDescription: 'Mô tả nhà hàng C',
    ),
    // Thêm các nhà hàng khác vào đây
  ];
  List<FoodEntity> foodList = [
    FoodEntity(
      foodId: 1,
      foodName: 'Mì Quảng',
      price: 15.0,
      imageUrl: 'path_to_food_image1',
    ),
    FoodEntity(
      foodId: 2,
      foodName: 'Bún Riêu',
      price: 12.0,
      imageUrl: 'path_to_food_image2',
    ),
    FoodEntity(
      foodId: 3,
      foodName: 'Phở Bò',
      price: 20.0,
      imageUrl: 'path_to_food_image3',
    ),
    FoodEntity(
      foodId: 4,
      foodName: 'Gỏi Cuốn',
      price: 8.0,
      imageUrl: 'path_to_food_image4',
    ),
    FoodEntity(
      foodId: 5,
      foodName: 'Cơm Gà',
      price: 18.0,
      imageUrl: 'path_to_food_image5',
    ),
    FoodEntity(
      foodId: 6,
      foodName: 'Bánh Mì Xúc Xích',
      price: 10.0,
      imageUrl: 'path_to_food_image6',
    ),
    FoodEntity(
      foodId: 7,
      foodName: 'Bún Chả',
      price: 14.0,
      imageUrl: 'path_to_food_image7',
    ),
    FoodEntity(
      foodId: 8,
      foodName: 'Hủ Tiếu Nam Vang',
      price: 16.0,
      imageUrl: 'path_to_food_image8',
    ),
  ];


  // Thêm danh sách nhà hàng vào Firestore
  await fireStorageService.addRestaurants(restaurantList);
  await fireStorageService.addListFood(foodList);



  //----------------------// tìm kiếm theo id food //----------------------//

  // var resultFoodid = await fireStorageService.searchfoodId(2);
  // if (resultFoodid != null) {
  //   print('đã tìm thấy food id');
  //   for (var food in resultFoodid) {
  //     print('Food Name: ${food.foodName}');
  //     print('Price: ${food.price}');
  //     print('Image URL: ${food.imageUrl}');
  //     print('Food ID: ${food.foodId}');
  //     print('-----------------------');
  //   }
  // } else {
  //   print('No matching food found.');
  // }
  //----------------------// tìm kiếm theo tên food //----------------------//

  // var resultFood = await fireStorageService.searchFood('Mì Quảng');
  // print('Result Food: $resultFood');
  // if (resultFood != null) {
  //   print('đã tìm thấy food name');
  //   for (var food in resultFood) {
  //     print('Food Name: ${food.foodName}');
  //     print('Price: ${food.price}');
  //     print('Image URL: ${food.imageUrl}');
  //     print('Food ID: ${food.foodId}');
  //     print('-----------------------');
  //   }
  // } else {
  //   print('No matching food found.');
  // }



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
