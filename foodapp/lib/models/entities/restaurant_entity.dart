
import 'package:json_annotation/json_annotation.dart';

import 'FoodID.dart';

part 'restaurant_entity.g.dart';

@JsonSerializable()

class RestaurantEntity {
  final String? name;
  final String? address;
  final List<FoodID>? listFood; // Sửa kiểu dữ liệu ở đây
  final String? restaurantImage;
  final String? restaurantDescription;
  final int? restaurantId;

  RestaurantEntity({
    this.name,
    this.address,
    this.listFood,
    this.restaurantImage,
    this.restaurantDescription,
    this.restaurantId,
  });

  factory RestaurantEntity.fromJson(Map<String, dynamic> json) =>
      _$RestaurantEntityFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantEntityToJson(this);
}

List<FoodID> restaurant3FoodList = [
FoodID(
  foodID: 5,
    // Thêm thông tin về món ăn nếu cần
  ),
FoodID(
  foodID: 6,
    // Thêm thông tin về món ăn nếu cần
  ),
];
