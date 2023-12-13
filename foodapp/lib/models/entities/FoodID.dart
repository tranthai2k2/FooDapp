import 'package:json_annotation/json_annotation.dart';

part 'FoodID.g.dart';

@JsonSerializable()
class FoodID {
  final int? foodID;

  FoodID ({
    this.foodID,
  });

  factory FoodID.fromJson(Map<String, dynamic> json) =>
      _$FoodIDFromJson(json);

  Map<String, dynamic> toJson() => _$FoodIDToJson(this);
}
