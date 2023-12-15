import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/services/fire_storage_service.dart';
import 'dart:core';
import 'global/global_data.dart';
import 'models/entities/food_entity.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _textEditingController = TextEditingController();
  final FireStorageService fireStorageService = FireStorageService();

  List<FoodEntity> searchResults = []; // Danh sách đồ ăn tìm được
  FoodEntity? selectedFood; // Đồ ăn được chọn
  bool showResults = false;
  // Hàm tìm kiếm đồ ăn dựa trên giá trị nhập vào
  void searchFood(String query) async {
    var resultFood = await fireStorageService.searchFood(query);
    setState(() {
      searchResults = resultFood ?? []; // Cập nhật danh sách đồ ăn tìm được
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(color: Color(0xFFDB166E)),
          child: Stack(children: [
            Positioned(
              child: Container(
                margin: EdgeInsets.only(left: 16, top: 36),
                width: 273,
                height: 48,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Stack(children: [
                  Positioned(
                    top: 12,
                    left: 8,
                    child: SvgPicture.asset(
                      "assets/vectors/search.svg",
                      width: 24,
                      height: 24,
                    ),
                  ),
                  Positioned(
                    left: 44,
                    child: SizedBox(
                      width: 200, // Adjust TextField width as needed
                      child: TextField(
                        controller: _textEditingController,
                        onChanged: (value) async {
                          var resultFood =
                              await fireStorageService.searchFood(value);
                          print('Result Food: $resultFood');
                          if (resultFood != null) {
                            bool foundFood = false;
                            for (var food in resultFood) {
                              String foodName = food.foodName ??
                                  ""; // Nếu foodName null thì gán mặc định là chuỗi rỗng
                              if (foodName.toLowerCase() ==
                                  value.toLowerCase()) {
                                print('Đã tìm thấy food name');
                                print('Food Name: ${foodName}');
                                print('Price: ${food.price}');
                                print('Image URL: ${food.imageUrl}');
                                print('Food ID: ${food.foodId}');
                                print('-----------------------');
                                foundFood = true;
                                break;
                              }
                            }
                            if (!foundFood) {
                              print('Không tìm thấy đồ ăn phù hợp.');
                            }
                          } else {
                            print('Không tìm thấy đồ ăn phù hợp.');
                          }
                          setState(() {
                            showResults = true;
                          });
                        },
                        decoration: const InputDecoration(
                          hintText: 'Tìm kiếm địa chỉ, đồ ăn...',
                          hintStyle: TextStyle(
                            color: Color(0xFFC4C4C4),
                            fontSize: 16,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 52,
                    left: 308,
                    child: GestureDetector(
                      onTap: () {
                        _textEditingController.clear();
                      },
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
