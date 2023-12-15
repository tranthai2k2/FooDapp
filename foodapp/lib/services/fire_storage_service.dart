import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodapp/models/entities/food_entity.dart';
import 'package:foodapp/models/entities/restaurant_entity.dart';

import '../models/entities/OrderProcessor.dart';
import '../models/entities/authenticate_entity.dart';
import '../models/entities/callfood.dart';
import '../models/entities/favfood.dart';

class FireStorageService {
  final CollectionReference _accountCollectionReference =
      FirebaseFirestore.instance.collection('user');

  final CollectionReference _restaurantCollectionReference =
      FirebaseFirestore.instance.collection('restaurant');

  final CollectionReference _foodCollectionReference =
      FirebaseFirestore.instance.collection('food');
  final CollectionReference _orderProcessorCollectionReference =
  FirebaseFirestore.instance.collection('OrderProcessor');
  final CollectionReference _callFoodReference =
  FirebaseFirestore.instance.collection('callfood');
  // tạo callfood
  Future<String?> createCallFoodEntity(callfoodEntity callFoodEntity) async {
    try {
      String callFoodId = callFoodEntity.callfoodid.toString(); // Chuyển đổi int? thành String

      await _callFoodReference.doc(callFoodId).set(
        callFoodEntity.toJson(),
      );

      // Trả về null nếu không có lỗi xảy ra
      return null;
    } catch (e) {
      if (e is PlatformException) {
        return e.message;
      }
      return e.toString();
    }
  }


  // tìm kiếm các order theo userid
  Future<List<OrderProcessorEntity>?> searchOrderProcessorbyuserid(String userid) async {
    try {
      var orderDocumentSnapshot = await _orderProcessorCollectionReference
          .where('userid', isEqualTo: userid)
          .get();

      if (orderDocumentSnapshot.docs.isNotEmpty) {
        return orderDocumentSnapshot.docs
            .map(
              (snapshot) => OrderProcessorEntity.fromJson(
            snapshot.data() as Map<String, dynamic>,
          ),
        )
            .toList();
      }
      return null; // Trả về null nếu không tìm thấy dữ liệu
    } catch (e) {
      debugPrint("Đã xảy ra lỗi khi tìm kiếm bộ xử lý đơn hàng");
      return null; // Trả về null trong trường hợp có lỗi
    }
  }

  // tạo ra ordefood
  Future createOrderProcessor(OrderProcessorEntity orderProcessorEntity) async {
    try {
      await _orderProcessorCollectionReference.doc(orderProcessorEntity.OrderProcessorEntityid).set(
        orderProcessorEntity.toJson(),
      );
    } catch (e) {
      if (e is PlatformException) {
        return e.message;
      }
      return e.toString();
    }
  }

  final CollectionReference _FavFoodCollectionReference =
  FirebaseFirestore.instance.collection('FavFood');


  // tạo ra favfood với đối tượng gồm cả favfoodid và listfood id
  Future createfavfood(FavFoodEntity favFoodEntity) async {
    try {
      await _FavFoodCollectionReference.doc(favFoodEntity.favFoodId).set(
        favFoodEntity.toJson(),
      );
    } catch (e) {
      if (e is PlatformException) {
        return e.message;
      }
      return e.toString();
    }
  }
  // tìm id favfood với id của user để ra favfood
  Future<List<FavFoodEntity>?> searchfavFoodId(String favFoodId) async {
    try {
      var foodDocumentSnapshot = await _FavFoodCollectionReference
          .where('favFoodId', isEqualTo: favFoodId)
          .get();

      if (foodDocumentSnapshot.docs.isNotEmpty) {
        // Assuming 'FoodEntity' is a different entity than 'FavFoodEntity'
        return foodDocumentSnapshot.docs
            .map(
              (snapshot) => FavFoodEntity.fromJson(
            snapshot.data() as Map<String, dynamic>,
          ),
        )
            .toList();
      }
      return []; // Return an empty list if no data is found
    } catch (e) {
      debugPrint("An error occurred while searching for favorite food");
      return null; // Return null in case of an error
    }
  }

// lấy ra listfavfood
  Future<List<FavFoodEntity>?> getListFavFood() async {
    try {
      var favFoodDocumentSnapshot = await _FavFoodCollectionReference.get();

      if (favFoodDocumentSnapshot.docs.isNotEmpty) {
        return favFoodDocumentSnapshot.docs
            .map(
              (snapshot) => FavFoodEntity.fromJson(
            snapshot.data() as Map<String, dynamic>,
          ),
        )
            .toList();
      }
      return []; // Return an empty list if no data is found
    } catch (e) {
      debugPrint("Đã xảy ra lỗi không lấy về được danh sách favorite food");
      return null; // Return null in case of an error
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

// updatefavfood với favfoodId và foodId
  Future<void> updateFavFoodList(String favFoodId, int foodId) async {
    try {
      // Tìm kiếm favFoodEntity với favFoodId
      List<FavFoodEntity>? favFoodList = await searchfavFoodId(favFoodId);

      // Nếu tìm thấy favFoodEntity với favFoodId tương ứng
      if (favFoodList != null && favFoodList.isNotEmpty) {
        FavFoodEntity favFood = favFoodList[0]; // Giả sử chỉ lấy phần tử đầu tiên

        // Kiểm tra xem foodId đã tồn tại trong favFood.listFavFood chưa
        if (favFood.listFavFood != null && favFood.listFavFood!.contains(foodId)) {
          // Nếu foodId đã tồn tại, xóa nó khỏi danh sách listFavFood
          favFood.listFavFood!.remove(foodId);
        } else {
          // Nếu foodId chưa tồn tại, thêm nó vào listFavFood
          favFood.listFavFood ??= [];
          favFood.listFavFood!.add(foodId);
        }

        // Sau khi cập nhật danh sách listFavFood, cập nhật lại vào Firestore
        await _FavFoodCollectionReference.doc(favFoodId).update(favFood.toJson());
      } else {
        // Nếu không tìm thấy favFoodEntity với favFoodId tương ứng, thông báo lỗi hoặc xử lý theo ý bạn
        debugPrint("Không tìm thấy FavFoodEntity với ID: $favFoodId");
      }
    } catch (e) {
      debugPrint("Đã xảy ra lỗi khi cập nhật danh sách favorite food: $e");
      // Xử lý lỗi theo ý bạn
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


  Future<List<FoodEntity>?> getListFood() async {
    try {
      var foodDocumentSnapshot = await _foodCollectionReference.get();

      if (foodDocumentSnapshot.docs.isNotEmpty) {
        return foodDocumentSnapshot.docs
            .map(
              (snapshot) => FoodEntity.fromJson(
            snapshot.data() as Map<String, dynamic>,
          ),
        )
            .toList();
      }
      return []; // Return an empty list if no data is found
    } catch (e) {
      debugPrint("Đã xảy ra lỗi không lấy về được danh sách food");
      return null; // Return null in case of an error
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

// tìm ra Food theo id
  Future<FoodEntity?> searchentityFooDid(int foodid) async {
    try {
      var foodDocumentSnapshot = await _foodCollectionReference.get();

      if (foodDocumentSnapshot.docs.isNotEmpty) {
        final listFood = foodDocumentSnapshot.docs
            .map(
              (snapshot) => FoodEntity.fromJson(
            snapshot.data() as Map<String, dynamic>,
          ),
        )
            .toList();

        final matchingFoods = listFood
            .where((element) => element.foodId == foodid)
            .toList();

        if (matchingFoods.isNotEmpty) {
          return matchingFoods.first;
        }

        return null;
      } else {
        return null;
      }
    } catch (e) {
      debugPrint("Đã xảy ra lỗi khi lấy thông tin về thực phẩm");
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
