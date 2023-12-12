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

// lấy dữ liệu từ list account
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
