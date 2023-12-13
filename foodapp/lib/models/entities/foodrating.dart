import 'package:json_annotation/json_annotation.dart';

part 'foodrating.g.dart';

@JsonSerializable()
class FoodRating {
  final int? foodId;
  final String? username;
  final double? rating;

  FoodRating({
    this.foodId,
    this.username,
    this.rating,
  });

  factory FoodRating.fromJson(Map<String, dynamic> json) =>
      _$FoodRatingFromJson(json);

  Map<String, dynamic> toJson() => _$FoodRatingToJson(this);
}
