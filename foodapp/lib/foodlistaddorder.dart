import 'package:flutter/material.dart';
import 'package:foodapp/services/fire_storage_service.dart';

import 'foodorder.dart';
import 'global/global_data.dart';
import 'listfavfood.dart';
import 'models/entities/food_entity.dart';

class AddFoodOrder extends StatefulWidget {
  const AddFoodOrder({Key? key}) : super(key: key);

  @override
  _AddFoodOrderState createState() => _AddFoodOrderState();
}

class _AddFoodOrderState extends State<AddFoodOrder> {
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

  void navigateToFoodOrderScreen({
    required int? foodId,
    required String? foodName,
    required double? foodPrice,

  }) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => FoodOrder(
          foodid: foodId,
          foodName: foodName,
          foodprice: foodPrice,
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Food to Order'),
      ),
      body: resultFoods != null
          ? ListView.builder(
        itemCount: resultFoods.length + 1,
        itemBuilder: (context, index) {
          if (index == resultFoods.length) {
            return Center();
          } else {
            final food = resultFoods[index];
            return ListTile(
              title: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(food.foodName ?? ''),
                        Text('Price: \$${food.price?.toStringAsFixed(2) ?? ''}'),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      navigateToFoodOrderScreen(
                        foodId: food.foodId,
                        foodName: food.foodName,
                        foodPrice: food.price,
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink,
                      ),
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          }
        },
      )
          : const Center(child: CircularProgressIndicator()),


    );
  }
}
