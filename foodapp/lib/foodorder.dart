import 'package:flutter/material.dart';

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
          child: Center(
            child: Text(
              'Total: ${getTotalPrice()} ',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
      ),
    );
  }
}
