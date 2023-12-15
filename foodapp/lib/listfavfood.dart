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
  late final AccountEntity? currentUser;
  List<int>? listid;

  @override
  void initState() {
    super.initState();
    _getCurrentUser();
  }

  void _loadFoodIds() {
    listid = favFoods
        .expand((favFoodEntity) => favFoodEntity.listFavFood ?? [])
        .map<int>((favFood) => favFood.foodId as int)
        .toList();
  }

  void _getCurrentUser() {
    currentUser = GlobalData.instance.currentUser;
    if (currentUser != null) {
      _fetchFavFoods(currentUser?.uId ?? "");
    }
  }

  Future<void> _fetchFavFoods(String userId) async {
    List<FavFoodEntity>? fetchedFavFoods =
    await fireStorageService.searchfavFoodId(userId);
    if (fetchedFavFoods != null) {
      setState(() {
        favFoods = fetchedFavFoods;
      });
      _loadFoodIds(); // Load food ids after fetching fav foods
    }
  }

  Future<Widget> getFoodInfo(int foodid) async {
    FoodEntity? food = await fireStorageService.searchentityFooDid(foodid);
    if (food != null) {
      return ListTile(
        title: Text(food.foodName ?? ''),
        subtitle: Text('Price: \$${food.price?.toStringAsFixed(2) ?? ''}'),
      );
    } else {
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
                      .map<FutureBuilder<Widget>>(
                        (favFood) => FutureBuilder<Widget>(
                      future: getFoodInfo(favFood),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return snapshot.data!;
                        } else {
                          return CircularProgressIndicator();
                        }
                      },
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
