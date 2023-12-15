import 'package:flutter/material.dart';
import 'package:foodapp/services/fire_storage_service.dart';

import 'bottom_screen/bottom_bar_screen.dart';
import 'global/global_data.dart';
import 'home_screen.dart';
import 'models/entities/OrderProcessor.dart';
import 'models/entities/callfood.dart';

class FoodOrder extends StatefulWidget {
  final int? foodid;
  final String? foodName;
  final double? foodprice;

  const FoodOrder({
    Key? key,
    required this.foodid,
    required this.foodName,
    required this.foodprice,
  }) : super(key: key);

  @override
  _FoodOrderState createState() => _FoodOrderState();
}

class _FoodOrderState extends State<FoodOrder> {
  int quantity = 1;
  final currentUser = GlobalData.instance.currentUser;

  void increment() {
    setState(() {
      quantity++;
    });
  }

  void decrement() {
    setState(() {
      if (quantity > 1) {
        quantity--;
      }
    });
  }

  double getTotalPrice() {
    return quantity * (widget.foodprice ?? 0);
  }

  Future<void> createFoodOrder(double totalPrice, String userId, int foodId, int count) async {
    String orderProcessorEntityId = '$userId$totalPrice';
    int callFoodId = count + foodId;

    final order = OrderProcessorEntity(
      userid: userId,
      allprice: totalPrice,
      OrderProcessorEntityid: orderProcessorEntityId,
    );

    final callFood = callfoodEntity(
      foodid: foodId,
      quantityfood: count,
      orderProcessorEntityId: orderProcessorEntityId,
      callfoodid: callFoodId,
    );

    FireStorageService fireStorageService = FireStorageService();

    await fireStorageService.createOrderProcessor(order);
    await fireStorageService.createCallFoodEntity(callFood);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Order List'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: decrement,
                ),
                Text(
                  '$quantity',
                  style: TextStyle(fontSize: 20.0),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: increment,
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              'Food ID: ${widget.foodid}',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              'Food Name: ${widget.foodName}',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              'Food Price: ${widget.foodprice}',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total: ${getTotalPrice()} ',
                style: TextStyle(fontSize: 20.0),
              ),
              ElevatedButton(
                onPressed: () {
                  if (currentUser?.uId != null) {
                    createFoodOrder(getTotalPrice(), currentUser!.uId!, widget.foodid!, quantity);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomBarScreen(),
                      ),
                    );
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.pink),
                ),
                child: Text(
                  'Thanh toán',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
