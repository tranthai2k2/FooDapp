import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodapp/models/entities/food_entity.dart';
import 'package:foodapp/models/entities/restaurant_entity.dart';

import '../models/entities/authenticate_entity.dart';
import '../models/entities/favfood.dart';

class FireStorageService {
  final CollectionReference _accountCollectionReference =
      FirebaseFirestore.instance.collection('user');

  final CollectionReference _restaurantCollectionReference =
      FirebaseFirestore.instance.collection('restaurant');

  final CollectionReference _foodCollectionReference =
      FirebaseFirestore.instance.collection('food');
  final CollectionReference _OrderProcessorCollectionReference =
  FirebaseFirestore.instance.collection('OrderProcessor');
  final CollectionReference _FavFoodCollectionReference =
  FirebaseFirestore.instance.collection('FavFood');


  // tạo ra favfood với đối tượng gồm cả favfoodid và listfood id
  Future createfavfood(FavFoodEntity favFoodEntity) async {
    try {
      await _accountCollectionReference.doc(favFoodEntity.favFoodId).set(
        favFoodEntity.toJson(),
      );
    } catch (e) {
      if (e is PlatformException) {
        return e.message;
      }
      return e.toString();
    }
  }

// tạo user
  Future createUser(AccountEntity authenticateInfo) async {
    try {
      await _accountCollectionReference.doc(authenticateInfo.uId).set(
            authenticateInfo.toJson(),
          );
    } catch (e) {
      if (e is PlatformException) {
        return e.message;
      }
      return e.toString();
    }
  }
// tạo food
  Future createFood(FoodEntity foodEntity) async {
    try {
      await _accountCollectionReference.doc("${foodEntity.foodId}").set(
            foodEntity.toJson(),
          );
    } catch (e) {
      if (e is PlatformException) {
        return e.message;
      }
      return e.toString();
    }
  }
  // tạo nhà hàng
  Future createRestaurant(RestaurantEntity restaurantEntity) async {
    try {
      await _accountCollectionReference.doc("${restaurantEntity.restaurantId}").set(
        restaurantEntity.toJson(),
      );
    } catch (e) {
      if (e is PlatformException) {
        return e.message;
      }
      return e.toString();
    }
  }


// lấy dữ liệu từ list account và tạo nó vao trong database
  Future<List<AccountEntity>?> getListAccount() async {
    try {
      var accountDocumentSnapshot = await _accountCollectionReference.get();

      if (accountDocumentSnapshot.docs.isNotEmpty) {
        return accountDocumentSnapshot.docs
            .map(
              (snapshot) => AccountEntity.fromJson(
                snapshot.data() as Map<String, dynamic>,
              ),
            )
            .toList();
      }
      return [];
    } catch (e) {
      debugPrint("Đã xảy ra lỗi không lấy về được danh sách account");
      return null;
    }
  }

  // Tìm kiếm món ăn theo tên
  Future<List<FoodEntity>?> searchFood(String foodName) async {
    try {
      var foodDocumentSnapshot = await _foodCollectionReference
          .where('foodName', isEqualTo: foodName)
          .get();

      if (foodDocumentSnapshot.docs.isNotEmpty) {
        return foodDocumentSnapshot.docs
            .map(
              (snapshot) => FoodEntity.fromJson(
            snapshot.data() as Map<String, dynamic>,
          ),
        )
            .toList();
      }
      return [];
    } catch (e) {
      debugPrint("Đã xảy ra lỗi không tìm kiếm được món ăn");
      return null;
    }
  }



  // Tìm kiếm nhà hàng theo tên của nhà hàng nameRestaurant
  Future<List<RestaurantEntity>?> searchRestaurant(String? name) async {
    try {
      var restaurantDocumentSnapshot = await _restaurantCollectionReference
          .where('name', isEqualTo: name)
          .get();

      if (restaurantDocumentSnapshot.docs.isNotEmpty) {
        return restaurantDocumentSnapshot.docs
            .map(
              (snapshot) => RestaurantEntity.fromJson(
            snapshot.data() as Map<String, dynamic>,
          ),
        )
            .toList();
      }
      return [];
    } catch (e) {
      debugPrint("Đã xảy ra lỗi không tìm kiếm được nhà hàng");
      return null;
    }
  }

  // tìm kiếm nhà hàng theo địa chỉ
  Future<List<RestaurantEntity>?> searchaddressRestaurant(String? address) async {
    try {
      var restaurantDocumentSnapshot = await _restaurantCollectionReference
          .where('address', isEqualTo: address)
          .get();

      if (restaurantDocumentSnapshot.docs.isNotEmpty) {
        return restaurantDocumentSnapshot.docs
            .map(
              (snapshot) => RestaurantEntity.fromJson(
            snapshot.data() as Map<String, dynamic>,
          ),
        )
            .toList();
      }
      return [];
    } catch (e) {
      debugPrint("Đã xảy ra lỗi không tìm kiếm được nhà hàng");
      return null;
    }
  }
  // tim kiem nha hang theo name


// tìm người dunùng qua số điện thoại
  Future<AccountEntity?> searchUser(String phoneNumber) async {
    try {
      var accountDocumentSnapshot = await _accountCollectionReference.get();

      if (accountDocumentSnapshot.docs.isNotEmpty) {
        final listAccount = accountDocumentSnapshot.docs
            .map(
              (snapshot) => AccountEntity.fromJson(
                snapshot.data() as Map<String, dynamic>,
              ),
            )
            .toList();

        final accounts = listAccount
            .where((element) => element.phoneNumber == phoneNumber)
            .toList();

        if (accounts.isNotEmpty) {
          return accounts.first;
        }

        return null;
      } else {
        return null;
      }
    } catch (e) {
      debugPrint("Đã xảy ra lỗi lấy về account");
      return null;
    }
  }

  // Thêm danh sách nhà hàng vào Firestore
  Future<void> addRestaurants(List<RestaurantEntity> restaurants) async {
    try {
      for (var restaurant in restaurants) {
        // thêm nhà hàng vào Firebase không vấn đề

        bool isRestaurantFound = await searchRestaurantId(restaurant.restaurantId);

        // đã lấy ra được giá trị của restaurant.restaurantId lỗi đang xuat hiện ở searchid
        if(isRestaurantFound){
          print('đã có ID này: ${restaurant.restaurantId}');
        }else {
          await _restaurantCollectionReference.add(restaurant.toJson());
          print('đã thêm ID này: ${restaurant.restaurantId}');
        };



      }
    } catch (e) {
      print("Đã xảy ra lỗi khi thêm nhà hàng: $e");
      // Xử lý lỗi theo ý bạn
    }
  }
  // tìm nhà hàng theo id
  Future<bool> searchRestaurantId(int? restaurantId) async {
    try {
      var restaurantSnapshot = await _restaurantCollectionReference.get();

      if (restaurantSnapshot.docs.isNotEmpty) {
        final listRestaurants = restaurantSnapshot.docs
            .map(
              (snapshot) => RestaurantEntity.fromJson(
            snapshot.data() as Map<String, dynamic>,
          ),
        )
            .toList();

        final isRestaurantFound = listRestaurants
            .any((restaurant) => restaurant.restaurantId == restaurantId);

        return isRestaurantFound;
      } else {
        // Collection "restaurants" is empty
        return false;
      }
    } catch (e) {
      debugPrint("Đã xảy ra lỗi khi tìm kiếm restaurantId");
      return false;
    }
  }
  // them list mon an
  Future<void> addListFood(List<FoodEntity> foodList) async {
    try {
      for (var food in foodList) {
        // Thêm món ăn vào Firebase
        bool isFoodFound = await searchFoodId(food.foodId);

        // Kiểm tra xem món ăn đã tồn tại hay chưa
        if (isFoodFound) {
          print('Đã có ID food này: ${food.foodId}');
        } else {
          // Nếu món ăn chưa tồn tại, thêm vào Firebase
          await _foodCollectionReference.add(food.toJson());
          print('Đã thêm ID food này: ${food.foodId}');
        }
      }
    } catch (e) {
      print("Đã xảy ra lỗi khi thêm món ăn: $e");
      // Xử lý lỗi theo ý bạn
    }
  }
  // tìm kiếm food theo id
  Future<bool> searchFoodId(int? foodId) async {
    try {
      var foodSnapshot = await _foodCollectionReference
          .where('foodId', isEqualTo: foodId)
          .get();

      if (foodSnapshot.docs.isNotEmpty) {
        final listFood = foodSnapshot.docs
            .map(
              (snapshot) => FoodEntity.fromJson(
            snapshot.data() as Map<String, dynamic>,
          ),
        )
            .toList();

        final isFoodFound = listFood.any((food) => food.foodId == foodId);

        return isFoodFound;
      } else {
        // Collection "food" is empty
        return false;
      }
    } catch (e) {
      print("Đã xảy ra lỗi khi tìm kiếm foodId: $e");
      return false;
    }
  }
// login
  Future<AccountEntity?> login({
    required String email,
    required String password,
  }) async {
    try {
      var accountDocumentSnapshot = await _accountCollectionReference.get();

      if (accountDocumentSnapshot.docs.isNotEmpty) {
        final listAccount = accountDocumentSnapshot.docs
            .map(
              (snapshot) => AccountEntity.fromJson(
                snapshot.data() as Map<String, dynamic>,
              ),
            )
            .toList();

        final accounts = listAccount
            .where((element) =>
                element.email == email && element.passWord == password)
            .toList();

        if (accounts.isNotEmpty) {
          return accounts.first;
        }

        return null;
      } else {
        return null;
      }
    } catch (e) {
      debugPrint("Đã xảy ra lỗi đăng nhập");
      return null;
    }
  }
}
