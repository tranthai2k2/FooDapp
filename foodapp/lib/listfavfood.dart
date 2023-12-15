import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/services/fire_storage_service.dart';
import 'models/entities/authenticate_entity.dart';
import 'models/entities/favfood.dart';
import 'models/entities/food_entity.dart';
import 'global/global_data.dart';

class ListFoodFavPage extends StatefulWidget {
  const ListFoodFavPage({Key? key}) : super(key: key);

  @override
  _ListFoodFavPageState createState() => _ListFoodFavPageState();
}

class _ListFoodFavPageState extends State<ListFoodFavPage> {
  final FireStorageService fireStorageService = FireStorageService();
  List<FavFoodEntity> favFoods = [];
  late AccountEntity? currentUser; // Đổi từ "late" thành "late final" để tránh gán giá trị null
  List<int>?  listid; //
  @override
  void initState() {
    super.initState();
    _getCurrentUser();
    _loadFoodIds();
// Gọi hàm để lấy giá trị từ currentUser
  }
  void _loadFoodIds() {
    // Gán giá trị cho listid từ favFoods
    listid = favFoods
        .expand((favFoodEntity) => favFoodEntity.listFavFood ?? [])
        .map<int>((favFood) => favFood.foodId as int) // Chuyển đổi từ dynamic sang int
        .toList();
  }


  // Hàm để lấy giá trị từ currentUser
  void _getCurrentUser() {
    currentUser = GlobalData.instance.currentUser;
    if (currentUser != null) {
      _fetchFavFoods(currentUser?.uId ?? ""); // Nếu currentUser không null, gọi hàm để lấy danh sách món ăn yêu thích
    }
  }

  // Hàm để lấy danh sách món ăn yêu thích dựa trên userId
  Future<void> _fetchFavFoods(String userId) async {
    List<FavFoodEntity>? fetchedFavFoods =
    await fireStorageService.searchfavFoodId(userId);
    if (fetchedFavFoods != null) {
      setState(() {
        favFoods = fetchedFavFoods;
      });
    }
  }
// Hàm để lấy thông tin food từ fireStorageService dựa trên foodid và trả về ListTile chứa thông tin food
  Future<ListTile> getFoodInfo(int foodid) async {
    FoodEntity? food = await fireStorageService.searchentityFooDid(foodid);
    if (food != null) {
      return ListTile(
        title: Text(food.foodName ?? ''),
        subtitle: Text('Price: \$${food.price?.toStringAsFixed(2) ?? ''}'),
        // Bạn có thể thêm các thuộc tính khác vào ListTile tùy theo nhu cầu
      );
    } else {
      // Trường hợp không tìm thấy food, có thể trả về một ListTile thông báo không tìm thấy
      return ListTile(
        title: Text('Food not found'),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Favorite Foods'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Content of List of Favorite Foods:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            if (favFoods.isNotEmpty)
              Column(
                children: favFoods
                    .map((favFoodEntity) => Column(
                  children: favFoodEntity.listFavFood != null &&
                      favFoodEntity.listFavFood!.isNotEmpty
                      ? favFoodEntity.listFavFood!
                      .map(
                        (favFood) => Text(
                      favFood.toString(),
                      style: TextStyle(fontSize: 56),
                    ),
                  )
                      .toList()
                      : [
                    Text(
                      'No favorite foods found.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ))
                    .toList(),
              )
            else
              Text(
                'No favorite foods found.',
                style: TextStyle(fontSize: 16),
              ),
          ],

        ),
      ),
    );
  }

}
