import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodapp/models/entities/food_entity.dart';
import 'package:foodapp/models/entities/restaurant_entity.dart';

import '../models/entities/authenticate_entity.dart';

class FireStorageService {
  final CollectionReference _accountCollectionReference =
      FirebaseFirestore.instance.collection('user');

  final CollectionReference _restaurantCollectionReference =
      FirebaseFirestore.instance.collection('restaurant');

  final CollectionReference _foodCollectionReference =
      FirebaseFirestore.instance.collection('food');

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

  // Tìm kiếm món ăn theo id
  Future<List<FoodEntity>?> searchfoodId(String foodid) async {
    try {
      var foodDocumentSnapshot = await _foodCollectionReference
          .where('foodId', isEqualTo: foodid)
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
      debugPrint("Đã xảy ra lỗi không tìm kiếm được id food");
      return null;
    }
  }


  // Tìm kiếm nhà hàng theo tên
  Future<List<RestaurantEntity>?> searchRestaurant(String name) async {
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
