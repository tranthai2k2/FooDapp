import 'package:flutter/material.dart';
import 'package:foodapp/services/fire_storage_service.dart';

import 'global/global_data.dart';
import 'listfavfood.dart';
import 'models/entities/food_entity.dart';

class ListFoodPage extends StatefulWidget {
  const ListFoodPage({Key? key}) : super(key: key);

  @override
  _ListFoodPageState createState() => _ListFoodPageState();
}

class _ListFoodPageState extends State<ListFoodPage> {
  final FireStorageService fireStorageService = FireStorageService();
  List<FoodEntity> resultFoods = [];
  final currentUser = GlobalData.instance.currentUser;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    var foods = await fireStorageService.getListFood();
    setState(() {
      resultFoods = foods ?? [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Foods'),
      ),
      body: resultFoods != null
          ? ListView.builder(
        itemCount: resultFoods.length,
        itemBuilder: (context, index) {
          final food = resultFoods[index];
          return ListTile(
            title: Text(food.foodName ?? ''),
            subtitle:
            Text('Price: \$${food.price?.toStringAsFixed(2) ?? ''}'),
            onTap: () {
              // Kiểm tra và sử dụng currentUser.uId nếu nó không phải là null
              if (currentUser != null) {
                fireStorageService.updateFavFoodList(
                    currentUser?.uId ?? "", food.foodId!);
              }
            },
          );
        },
      )
          : const Center(child: CircularProgressIndicator()),

      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListFoodFavPage()),
              );
            },
            child: Text('Go to favfoodlist Page'),
          ),
        ),
      ),
    );
  }
}
