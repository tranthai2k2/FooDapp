import 'package:foodapp/models/entities/food_entity.dart';

class RestaurantEntity {
  final String? name;
  final String? address;
  final List<FoodEntity>? listFood;

  RestaurantEntity({
    this.name,
    this.address,
    this.listFood,
  });
}
