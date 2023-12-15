// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foodrating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodRating _$FoodRatingFromJson(Map<String, dynamic> json) => FoodRating(
      foodId: json['foodId'] as int?,
      username: json['username'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$FoodRatingToJson(FoodRating instance) =>
    <String, dynamic>{
      'foodId': instance.foodId,
      'username': instance.username,
      'rating': instance.rating,
    };
