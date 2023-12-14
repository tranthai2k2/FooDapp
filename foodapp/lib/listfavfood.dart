import 'package:flutter/material.dart';

class ListFoodFavPage extends StatefulWidget {
  const ListFoodFavPage({Key? key}) : super(key: key);

  @override
  _ListFoodFavPageState createState() => _ListFoodFavPageState();
}

class _ListFoodFavPageState extends State<ListFoodFavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Favorite Foods'),
      ),
      body: Center(
        child: Text('Content of List of Favorite Foods'),
      ),
    );
  }
}
