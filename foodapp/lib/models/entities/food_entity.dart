import 'package:json_annotation/json_annotation.dart';

part 'food_entity.g.dart';

@JsonSerializable()
class FoodEntity {
  final String? foodName;
  final double? price;
  final String? imageUrl;
  final int? foodId;

  FoodEntity({
    this.foodName,
    this.price,
    this.imageUrl,
    this.foodId,
  });

  factory FoodEntity.fromJson(Map<String, dynamic> json) =>
      _$FoodEntityFromJson(json);

  Map<String, dynamic> toJson() => _$FoodEntityToJson(this);
}
