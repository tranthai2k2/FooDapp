
import 'package:json_annotation/json_annotation.dart';


part 'restaurant_entity.g.dart';

@JsonSerializable(
  anyMap: true,
)

class RestaurantEntity {
  final String? name;
  final String? address;
  final List<int>? listFood; // Sửa kiểu dữ liệu ở đây
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


